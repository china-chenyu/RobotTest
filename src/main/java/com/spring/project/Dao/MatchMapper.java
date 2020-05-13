package com.spring.project.Dao;

import com.spring.project.Entity.Match;
import com.spring.project.Entity.MatchExample;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface MatchMapper {
    long countByExample(MatchExample example);

    int deleteByExample(MatchExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Match record);

    int insertSelective(Match record);

    List<Match> selectByExample(MatchExample example);

    Match selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Match record, @Param("example") MatchExample example);

    int updateByExample(@Param("record") Match record, @Param("example") MatchExample example);

    int updateByPrimaryKeySelective(Match record);

    int updateByPrimaryKey(Match record);



    @Select("select * from matchsuser where userid = #{id}")
    List<Map<String,Object>> selectMacthUserByUserId(Integer id);
}