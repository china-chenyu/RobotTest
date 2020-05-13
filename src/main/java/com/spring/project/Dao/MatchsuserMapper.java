package com.spring.project.Dao;

import com.spring.project.Entity.Matchsuser;
import com.spring.project.Entity.MatchsuserExample;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.Map;

@Mapper
public interface MatchsuserMapper {
    long countByExample(MatchsuserExample example);

    int deleteByExample(MatchsuserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Matchsuser record);

    int insertSelective(Matchsuser record);

    List<Matchsuser> selectByExample(MatchsuserExample example);

    Matchsuser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Matchsuser record, @Param("example") MatchsuserExample example);

    int updateByExample(@Param("record") Matchsuser record, @Param("example") MatchsuserExample example);

    int updateByPrimaryKeySelective(Matchsuser record);

    int updateByPrimaryKey(Matchsuser record);

    @Update("update matchsuser set info = #{info} where id = #{id}")
    void updateS(@Param("id")String id, @Param("info")String info);

    @Select("select * from matchsuser where id = #{id}")
    Map<String,Object> findInfo(String id);

    @Update("update matchsuser set filepath = #{filepath} where id = #{id}")
    void upload(@Param("id")String id, @Param("filepath")String s);

    @Select("select * from matchsuser")
    List<Map<String,Object>> findAll();
}