package com.spring.project.Dao;

import com.spring.project.Entity.Rule;
import com.spring.project.Entity.RuleExample;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface RuleMapper {
    long countByExample(RuleExample example);

    int deleteByExample(RuleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Rule record);

    int insertSelective(Rule record);

    List<Rule> selectByExampleWithBLOBs(RuleExample example);

    List<Rule> selectByExample(RuleExample example);

    Rule selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Rule record, @Param("example") RuleExample example);

    int updateByExampleWithBLOBs(@Param("record") Rule record, @Param("example") RuleExample example);

    int updateByExample(@Param("record") Rule record, @Param("example") RuleExample example);

    int updateByPrimaryKeySelective(Rule record);

    int updateByPrimaryKeyWithBLOBs(Rule record);

    int updateByPrimaryKey(Rule record);
}