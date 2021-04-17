package com.csw.dao;

import com.csw.entity.Product;
import org.apache.ibatis.annotations.CacheNamespace;
import tk.mybatis.mapper.additional.idlist.DeleteByIdListMapper;
import tk.mybatis.mapper.common.Mapper;

@CacheNamespace
public interface ProductDao extends Mapper<Product>, DeleteByIdListMapper<Product,String> {

}
