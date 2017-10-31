package com.myblog.controller;

import com.myblog.model.Note;
import com.myblog.model.SimpleArtical;
import com.myblog.service.AdminSer;
import com.myblog.service.HomePagerSer;
import com.myblog.service.NoteSer;
import com.myblog.service.serviceImp.AdminImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
/**
 * Created by caosong on 2017/7/22.
 */
@Controller
public class BlogMapper {

    @Autowired
    private HomePagerSer homePager;
    @Autowired
    private NoteSer noteSer;
    @Autowired
    private AdminSer adminSer;

//Home Mapping
    @RequestMapping("/Home")
    ModelAndView Home(){
        ModelAndView modelAndView = new ModelAndView("homePage");
        modelAndView.addObject("resultList",homePager.selectnote());
        return modelAndView;
    }

//NoteSer Mapping
    @RequestMapping("/Note")
    ModelAndView Note(String noteId){
        ModelAndView modelAndView = new ModelAndView("note");
        modelAndView.addObject("noteId",Integer.parseInt(noteId));
        return modelAndView;
    }

    @RequestMapping("/Note/artical")
    ModelAndView collapseOne(String articalnum){
        ModelAndView modelAndView = new ModelAndView("note_artical");
        Integer tmp = Integer.parseInt(articalnum);
        modelAndView.addObject("noteItem",noteSer.selectnote(tmp));
        modelAndView.addObject("contentList",noteSer.articalOne(tmp));
        return modelAndView;
    }

//    Contact Mapping
    @RequestMapping("/Contact")
    ModelAndView Contact(){
        ModelAndView modelAndView = new ModelAndView("contact");

        return modelAndView;
    }

//    Admin Mapping
@RequestMapping("/Admin")
ModelAndView Admin(){
    return new ModelAndView("administer");
}
@RequestMapping("/myblog-1.0-SNAPSHOT/Admin/add")
ModelAndView AdminAdd(){
    return new ModelAndView("administer_artical_add");
}

@RequestMapping(value = "/Admin/add/result")
ModelAndView AdminAddResult(Note note){
    ModelAndView modelAndView = new ModelAndView("result");
    modelAndView.addObject("result","修改成功");
    note.setDate(new Date());
    adminSer.addArtical(note);
    return modelAndView;
}
@RequestMapping(value = "/Admin/change")
ModelAndView AdminChange(){
    return new ModelAndView("admin_artical_change");
}

    @ResponseBody
    @RequestMapping("/test")
    String get(String name){
        return name;
    }
}
