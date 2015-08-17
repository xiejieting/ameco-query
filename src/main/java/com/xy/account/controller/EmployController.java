package com.xy.account.controller;

import com.xy.account.model.Employee;
import com.xy.account.service.EmployeeService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/employee.do")
public class EmployController {
    private static Logger logger = Logger.getLogger(EmployController.class);

    @Autowired
    EmployeeService employeeService;

    @RequestMapping(params = "method=search", method = RequestMethod.POST)
    public ModelAndView validateAccount(@ModelAttribute Employee employee, @ModelAttribute("token") String token_client, HttpSession httpSession) {
        ModelAndView modelAndView;
        String message;
        String server_token = (String) httpSession.getAttribute("token");
        logger.debug("*************************client:" + token_client);
        logger.debug("*************************http:" + server_token);
        boolean tokenStatus = isRepeatSubmit(token_client, server_token);
        List<Employee> employeeList = employeeService.getUserInfo(employee);
        if (tokenStatus == true) {
            message = "请勿重复提交！";
            modelAndView = new ModelAndView("EmployeeSearch");
            modelAndView.addObject("message", message);
            return modelAndView;
        }
        httpSession.removeAttribute("token");
        if (employeeList != null) {
            modelAndView = new ModelAndView("EmployeeList");
            message = "查询成功！";
            modelAndView.addObject("message", message);
            modelAndView.addObject("employees", employeeList);
        } else {
            message = "用户不存在！";
            modelAndView = new ModelAndView("EmployeeSearch");
            modelAndView.addObject("message", message);
        }
        return modelAndView;
    }

    private boolean isRepeatSubmit(String clientToken, String serverToken) {
        if (null == clientToken || null == serverToken) {
            return true;
        }
        if (!serverToken.equals(clientToken)) {
            return true;
        }
        return false;
    }

}