package com.csw.dao;

import com.csw.entity.Order;
import org.apache.ibatis.annotations.CacheNamespace;
import tk.mybatis.mapper.additional.idlist.DeleteByIdListMapper;
import tk.mybatis.mapper.common.Mapper;

@CacheNamespace
public interface OrderDao extends Mapper<Order>, DeleteByIdListMapper<Order,String> {

}
