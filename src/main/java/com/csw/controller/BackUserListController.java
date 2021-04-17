package com.csw.controller;

import com.csw.entity.User;
import com.csw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("userList")
public class BackUserListController {
    @Autowired
    private UserService userService;

    @RequestMapping("showAllusers")
    public Map showAllUsers(Integer page, Integer rows, HttpSession session) {
        System.out.println("[进入查询所有]");
        Map map = userService.showAllUsers(page, rows);
        return map;
    }

    @RequestMapping("edit")
    public Map edit(String oper, User user, String[] id, HttpSession session) {
        Map hashMap = new HashMap();
       if (oper.equals("edit")) {
            hashMap = userService.update(user);
        } else if (oper.equals("del")) {

            hashMap = userService.delete(id);
        }
        return hashMap;
    }
}
