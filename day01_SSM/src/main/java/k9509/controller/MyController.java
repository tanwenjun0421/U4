package k9509.controller;

import com.github.pagehelper.PageInfo;
import k9509.Service.DemoService;
import k9509.domain.Entry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@Controller
public class MyController {

    @Autowired
    private DemoService demoService;

    @RequestMapping("/list")
    public ModelAndView list(ModelAndView mv){
        List<Entry> entryList = demoService.findAllEntry();
        mv.addObject("entryList",entryList);
        mv.setViewName("main");
        return mv;
    }

    @RequestMapping("/getAll")
    @ResponseBody
    public List<Entry> getAll(){
        List<Entry> entryList = demoService.findAllEntry2();
        return entryList;
    }

    @RequestMapping("/getAll2")
    @ResponseBody
    public Map<String,Object> getAll2(Integer page,Integer rows){
        PageInfo<Entry> pageInfo = demoService.findAllEntry3(page, rows);
        Map<String,Object> map = new HashMap<>();
        map.put("total",pageInfo.getTotal());
        map.put("rows",pageInfo.getList());
        System.out.println(map);
        return map;
    }
}
