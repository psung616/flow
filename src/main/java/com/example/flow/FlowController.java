package com.example.flow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class FlowController {

    @Autowired
    private FlowService flowService;

    @GetMapping("/")
    public String main (ModelMap model){

        List<String> list = flowService.selectAll();
        model.addAttribute("list",list);

        int cnt = flowService.selectAllCnt();
        model.addAttribute("cnt",cnt);

        return "main";
    }

    @PostMapping("/defaultControll")
    public ResponseEntity<Map<String,Object>> defaultControll(@RequestParam("no") String no,@RequestParam("nm") String nm, @RequestParam("chk") boolean chk) throws Exception{
        Map<String, Object> map = new HashMap<>();
        map.put("no", no);
        map.put("nm", nm);
        map.put("chk", chk);

        flowService.updateDefault(map);

        if(chk == true){
            flowService.insertCustom(map);
        }else{
            flowService.deleteCustom(map);
        }


        return ResponseEntity.ok(map);
    }


}
