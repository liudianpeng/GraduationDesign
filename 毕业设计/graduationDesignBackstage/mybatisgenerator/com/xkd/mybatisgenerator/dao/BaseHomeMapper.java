package com.xkd.mybatisgenerator.dao;

import com.xkd.mybatisgenerator.model.BaseHome;
import org.apache.ibatis.annotations.Param;

public interface BaseHomeMapper {
    int deleteByPrimaryKey(@Param("projectid") String projectid, @Param("email") String email);

    int insert(BaseHome record);

    int insertSelective(BaseHome record);

    BaseHome selectByPrimaryKey(@Param("projectid") String projectid, @Param("email") String email);

    int updateByPrimaryKeySelective(BaseHome record);

    int updateByPrimaryKey(BaseHome record);
}