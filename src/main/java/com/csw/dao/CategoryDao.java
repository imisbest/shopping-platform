package com.csw.dao;

import com.csw.entity.Category;
import org.apache.ibatis.annotations.CacheNamespace;
import tk.mybatis.mapper.additional.idlist.DeleteByIdListMapper;
import tk.mybatis.mapper.common.Mapper;

@CacheNamespace
public interface CategoryDao extends Mapper<Category>, DeleteByIdListMapper<Category,String> {

}
