package com.xy.account.controller;

import com.xy.account.model.Employee;
import com.xy.util.TokenProcessor;
import org.apache.log4j.Logger;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("token")
public class LinkController {
    private Logger logger = Logger.getLogger(LinkController.class);

    @RequestMapping("/")
    public ModelAndView fisrtPage() {
        return generateMVC();
    }

    @RequestMapping("/index")
    public ModelAndView homePage() {
        return generateMVC();
    }

    @RequestMapping("/404")
    public ModelAndView notFoundPage() {
        ModelAndView modelAndView = new ModelAndView("404");
        return modelAndView;
    }

    private ModelAndView generateMVC() {
        ModelMap model = new ModelMap();
        ModelAndView modelAndView = new ModelAndView("EmployeeSearch");
        Employee employee = new Employee();
        String token = TokenProcessor.getInstance().tokenGenerate();
        logger.debug(token);
        model.addAttribute(token);
        modelAndView.addObject("token", token);
        String message = "请至少输入一项查询条件开始查询.";
        modelAndView.addObject("employee", employee);
        modelAndView.addObject("message", message);
        return modelAndView;
    }
}
