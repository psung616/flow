package com.example.flow;

import com.example.flow.mapper.FlowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class FlowService {

    @Autowired
    FlowMapper flowMapper;

    public List<String> selectAll(){
        return flowMapper.selectAll();
    }


    public int selectAllCnt() {
        return flowMapper.selectAllCnt();
    }

    public void updateDefault(Map<String, Object> map) {
        flowMapper.updateDefault(map);
    }

    public void insertCustom(Map<String, Object> map) {
        flowMapper.insertCustom(map);
    }

    public void deleteCustom(Map<String, Object> map) {
        flowMapper.deleteCustom(map);
    }
}
