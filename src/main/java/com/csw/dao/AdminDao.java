package com.csw.dao;

import com.csw.entity.Admin;
import org.apache.ibatis.annotations.CacheNamespace;
import tk.mybatis.mapper.additional.idlist.DeleteByIdListMapper;
import tk.mybatis.mapper.common.Mapper;

@CacheNamespace
public interface AdminDao extends Mapper<Admin>, DeleteByIdListMapper<Admin,String> {

}
