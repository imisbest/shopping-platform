package com.csw.service;

import com.csw.dao.UserDao;
import com.csw.entity.User;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Transactional(propagation = Propagation.REQUIRED)
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Map showAllUsers(Integer page, Integer rows) {
        HashMap hashMap = new HashMap();
        List<User> users = userDao.selectByRowBounds(new User(), new RowBounds((page - 1) * rows, rows));
        int records = userDao.selectCount(new User());
        int total = records % rows == 0 ? records / rows : records / rows + 1;
        hashMap.put("rows", users);
        hashMap.put("page", page);
        hashMap.put("records", records);
        hashMap.put("total", total);
        return hashMap;
    }

    @Override
    public Map update(User user) {
        HashMap hashMap = new HashMap();
        //user.setUrl(null);
        userDao.updateByPrimaryKeySelective(user);
        hashMap.put("userId", user.getId());
        hashMap.put("status", 200);
        hashMap.put("msg", "更新成功");
        return hashMap;
    }


    @Override
    public Map delete(String[] id) {
        HashMap hashMap = new HashMap();
        userDao.deleteByIdList(Arrays.asList(id));
        hashMap.put("status", 200);
        hashMap.put("msg", "删除成功");
        return hashMap;
    }



}
