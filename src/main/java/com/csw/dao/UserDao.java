package com.csw.dao;

import com.csw.entity.User;
import org.apache.ibatis.annotations.CacheNamespace;
import tk.mybatis.mapper.additional.idlist.DeleteByIdListMapper;
import tk.mybatis.mapper.common.Mapper;

@CacheNamespace
public interface UserDao extends Mapper<User>, DeleteByIdListMapper<User,String> {

}
