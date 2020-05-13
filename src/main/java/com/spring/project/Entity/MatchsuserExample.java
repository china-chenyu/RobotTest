package com.spring.project.Entity;

import java.util.ArrayList;
import java.util.List;

public class MatchsuserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MatchsuserExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andMatchidIsNull() {
            addCriterion("matchid is null");
            return (Criteria) this;
        }

        public Criteria andMatchidIsNotNull() {
            addCriterion("matchid is not null");
            return (Criteria) this;
        }

        public Criteria andMatchidEqualTo(String value) {
            addCriterion("matchid =", value, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidNotEqualTo(String value) {
            addCriterion("matchid <>", value, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidGreaterThan(String value) {
            addCriterion("matchid >", value, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidGreaterThanOrEqualTo(String value) {
            addCriterion("matchid >=", value, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidLessThan(String value) {
            addCriterion("matchid <", value, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidLessThanOrEqualTo(String value) {
            addCriterion("matchid <=", value, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidLike(String value) {
            addCriterion("matchid like", value, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidNotLike(String value) {
            addCriterion("matchid not like", value, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidIn(List<String> values) {
            addCriterion("matchid in", values, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidNotIn(List<String> values) {
            addCriterion("matchid not in", values, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidBetween(String value1, String value2) {
            addCriterion("matchid between", value1, value2, "matchid");
            return (Criteria) this;
        }

        public Criteria andMatchidNotBetween(String value1, String value2) {
            addCriterion("matchid not between", value1, value2, "matchid");
            return (Criteria) this;
        }

        public Criteria andUseridIsNull() {
            addCriterion("userid is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userid is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(String value) {
            addCriterion("userid =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(String value) {
            addCriterion("userid <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(String value) {
            addCriterion("userid >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(String value) {
            addCriterion("userid >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(String value) {
            addCriterion("userid <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(String value) {
            addCriterion("userid <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLike(String value) {
            addCriterion("userid like", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotLike(String value) {
            addCriterion("userid not like", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<String> values) {
            addCriterion("userid in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<String> values) {
            addCriterion("userid not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(String value1, String value2) {
            addCriterion("userid between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(String value1, String value2) {
            addCriterion("userid not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andSchoolIsNull() {
            addCriterion("school is null");
            return (Criteria) this;
        }

        public Criteria andSchoolIsNotNull() {
            addCriterion("school is not null");
            return (Criteria) this;
        }

        public Criteria andSchoolEqualTo(String value) {
            addCriterion("school =", value, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolNotEqualTo(String value) {
            addCriterion("school <>", value, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolGreaterThan(String value) {
            addCriterion("school >", value, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolGreaterThanOrEqualTo(String value) {
            addCriterion("school >=", value, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolLessThan(String value) {
            addCriterion("school <", value, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolLessThanOrEqualTo(String value) {
            addCriterion("school <=", value, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolLike(String value) {
            addCriterion("school like", value, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolNotLike(String value) {
            addCriterion("school not like", value, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolIn(List<String> values) {
            addCriterion("school in", values, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolNotIn(List<String> values) {
            addCriterion("school not in", values, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolBetween(String value1, String value2) {
            addCriterion("school between", value1, value2, "school");
            return (Criteria) this;
        }

        public Criteria andSchoolNotBetween(String value1, String value2) {
            addCriterion("school not between", value1, value2, "school");
            return (Criteria) this;
        }

        public Criteria andProcessionnameIsNull() {
            addCriterion("processionname is null");
            return (Criteria) this;
        }

        public Criteria andProcessionnameIsNotNull() {
            addCriterion("processionname is not null");
            return (Criteria) this;
        }

        public Criteria andProcessionnameEqualTo(String value) {
            addCriterion("processionname =", value, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameNotEqualTo(String value) {
            addCriterion("processionname <>", value, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameGreaterThan(String value) {
            addCriterion("processionname >", value, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameGreaterThanOrEqualTo(String value) {
            addCriterion("processionname >=", value, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameLessThan(String value) {
            addCriterion("processionname <", value, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameLessThanOrEqualTo(String value) {
            addCriterion("processionname <=", value, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameLike(String value) {
            addCriterion("processionname like", value, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameNotLike(String value) {
            addCriterion("processionname not like", value, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameIn(List<String> values) {
            addCriterion("processionname in", values, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameNotIn(List<String> values) {
            addCriterion("processionname not in", values, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameBetween(String value1, String value2) {
            addCriterion("processionname between", value1, value2, "processionname");
            return (Criteria) this;
        }

        public Criteria andProcessionnameNotBetween(String value1, String value2) {
            addCriterion("processionname not between", value1, value2, "processionname");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNtelIsNull() {
            addCriterion("ntel is null");
            return (Criteria) this;
        }

        public Criteria andNtelIsNotNull() {
            addCriterion("ntel is not null");
            return (Criteria) this;
        }

        public Criteria andNtelEqualTo(String value) {
            addCriterion("ntel =", value, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelNotEqualTo(String value) {
            addCriterion("ntel <>", value, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelGreaterThan(String value) {
            addCriterion("ntel >", value, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelGreaterThanOrEqualTo(String value) {
            addCriterion("ntel >=", value, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelLessThan(String value) {
            addCriterion("ntel <", value, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelLessThanOrEqualTo(String value) {
            addCriterion("ntel <=", value, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelLike(String value) {
            addCriterion("ntel like", value, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelNotLike(String value) {
            addCriterion("ntel not like", value, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelIn(List<String> values) {
            addCriterion("ntel in", values, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelNotIn(List<String> values) {
            addCriterion("ntel not in", values, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelBetween(String value1, String value2) {
            addCriterion("ntel between", value1, value2, "ntel");
            return (Criteria) this;
        }

        public Criteria andNtelNotBetween(String value1, String value2) {
            addCriterion("ntel not between", value1, value2, "ntel");
            return (Criteria) this;
        }

        public Criteria andPersonnelIsNull() {
            addCriterion("personnel is null");
            return (Criteria) this;
        }

        public Criteria andPersonnelIsNotNull() {
            addCriterion("personnel is not null");
            return (Criteria) this;
        }

        public Criteria andPersonnelEqualTo(String value) {
            addCriterion("personnel =", value, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelNotEqualTo(String value) {
            addCriterion("personnel <>", value, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelGreaterThan(String value) {
            addCriterion("personnel >", value, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelGreaterThanOrEqualTo(String value) {
            addCriterion("personnel >=", value, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelLessThan(String value) {
            addCriterion("personnel <", value, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelLessThanOrEqualTo(String value) {
            addCriterion("personnel <=", value, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelLike(String value) {
            addCriterion("personnel like", value, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelNotLike(String value) {
            addCriterion("personnel not like", value, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelIn(List<String> values) {
            addCriterion("personnel in", values, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelNotIn(List<String> values) {
            addCriterion("personnel not in", values, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelBetween(String value1, String value2) {
            addCriterion("personnel between", value1, value2, "personnel");
            return (Criteria) this;
        }

        public Criteria andPersonnelNotBetween(String value1, String value2) {
            addCriterion("personnel not between", value1, value2, "personnel");
            return (Criteria) this;
        }

        public Criteria andTeacherIsNull() {
            addCriterion("teacher is null");
            return (Criteria) this;
        }

        public Criteria andTeacherIsNotNull() {
            addCriterion("teacher is not null");
            return (Criteria) this;
        }

        public Criteria andTeacherEqualTo(String value) {
            addCriterion("teacher =", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherNotEqualTo(String value) {
            addCriterion("teacher <>", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherGreaterThan(String value) {
            addCriterion("teacher >", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherGreaterThanOrEqualTo(String value) {
            addCriterion("teacher >=", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherLessThan(String value) {
            addCriterion("teacher <", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherLessThanOrEqualTo(String value) {
            addCriterion("teacher <=", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherLike(String value) {
            addCriterion("teacher like", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherNotLike(String value) {
            addCriterion("teacher not like", value, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherIn(List<String> values) {
            addCriterion("teacher in", values, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherNotIn(List<String> values) {
            addCriterion("teacher not in", values, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherBetween(String value1, String value2) {
            addCriterion("teacher between", value1, value2, "teacher");
            return (Criteria) this;
        }

        public Criteria andTeacherNotBetween(String value1, String value2) {
            addCriterion("teacher not between", value1, value2, "teacher");
            return (Criteria) this;
        }

        public Criteria andTtelIsNull() {
            addCriterion("ttel is null");
            return (Criteria) this;
        }

        public Criteria andTtelIsNotNull() {
            addCriterion("ttel is not null");
            return (Criteria) this;
        }

        public Criteria andTtelEqualTo(String value) {
            addCriterion("ttel =", value, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelNotEqualTo(String value) {
            addCriterion("ttel <>", value, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelGreaterThan(String value) {
            addCriterion("ttel >", value, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelGreaterThanOrEqualTo(String value) {
            addCriterion("ttel >=", value, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelLessThan(String value) {
            addCriterion("ttel <", value, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelLessThanOrEqualTo(String value) {
            addCriterion("ttel <=", value, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelLike(String value) {
            addCriterion("ttel like", value, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelNotLike(String value) {
            addCriterion("ttel not like", value, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelIn(List<String> values) {
            addCriterion("ttel in", values, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelNotIn(List<String> values) {
            addCriterion("ttel not in", values, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelBetween(String value1, String value2) {
            addCriterion("ttel between", value1, value2, "ttel");
            return (Criteria) this;
        }

        public Criteria andTtelNotBetween(String value1, String value2) {
            addCriterion("ttel not between", value1, value2, "ttel");
            return (Criteria) this;
        }

        public Criteria andMatchsIsNull() {
            addCriterion("matchs is null");
            return (Criteria) this;
        }

        public Criteria andMatchsIsNotNull() {
            addCriterion("matchs is not null");
            return (Criteria) this;
        }

        public Criteria andMatchsEqualTo(String value) {
            addCriterion("matchs =", value, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsNotEqualTo(String value) {
            addCriterion("matchs <>", value, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsGreaterThan(String value) {
            addCriterion("matchs >", value, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsGreaterThanOrEqualTo(String value) {
            addCriterion("matchs >=", value, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsLessThan(String value) {
            addCriterion("matchs <", value, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsLessThanOrEqualTo(String value) {
            addCriterion("matchs <=", value, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsLike(String value) {
            addCriterion("matchs like", value, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsNotLike(String value) {
            addCriterion("matchs not like", value, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsIn(List<String> values) {
            addCriterion("matchs in", values, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsNotIn(List<String> values) {
            addCriterion("matchs not in", values, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsBetween(String value1, String value2) {
            addCriterion("matchs between", value1, value2, "matchs");
            return (Criteria) this;
        }

        public Criteria andMatchsNotBetween(String value1, String value2) {
            addCriterion("matchs not between", value1, value2, "matchs");
            return (Criteria) this;
        }

        public Criteria andStateIsNull() {
            addCriterion("state is null");
            return (Criteria) this;
        }

        public Criteria andStateIsNotNull() {
            addCriterion("state is not null");
            return (Criteria) this;
        }

        public Criteria andStateEqualTo(String value) {
            addCriterion("state =", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotEqualTo(String value) {
            addCriterion("state <>", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThan(String value) {
            addCriterion("state >", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThanOrEqualTo(String value) {
            addCriterion("state >=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThan(String value) {
            addCriterion("state <", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThanOrEqualTo(String value) {
            addCriterion("state <=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLike(String value) {
            addCriterion("state like", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotLike(String value) {
            addCriterion("state not like", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateIn(List<String> values) {
            addCriterion("state in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotIn(List<String> values) {
            addCriterion("state not in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateBetween(String value1, String value2) {
            addCriterion("state between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotBetween(String value1, String value2) {
            addCriterion("state not between", value1, value2, "state");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}