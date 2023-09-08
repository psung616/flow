package com.example.flow.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface FlowMapper {

    List<String> selectAll();

    int selectAllCnt();

    void updateDefault(Map<String, Object> map);

    void insertCustom(Map<String, Object> map);

    void deleteCustom(Map<String, Object> map);

    List<String> selectCustomAll();
}
