package com.csw.dao;

import com.csw.entity.OrderItem;
import org.apache.ibatis.annotations.CacheNamespace;
import tk.mybatis.mapper.additional.idlist.DeleteByIdListMapper;
import tk.mybatis.mapper.common.Mapper;

@CacheNamespace
public interface OrderItemDao extends Mapper<OrderItem>, DeleteByIdListMapper<OrderItem,String> {

}
