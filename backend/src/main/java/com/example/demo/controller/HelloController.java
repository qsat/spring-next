package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

import com.example.demo.domain.User;
import com.example.demo.mapper.UserMapper;

@Controller
public class HelloController {
    @Autowired
    UserMapper userMapper;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String get(Model model) {
        List<User> list = userMapper.selectAll();
        model.addAttribute("users", list);
        return "index";
    }

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String getHello(Model model) {
        List<User> list = userMapper.selectAll();
        model.addAttribute("users", list);
        return "hello";
    }
}
