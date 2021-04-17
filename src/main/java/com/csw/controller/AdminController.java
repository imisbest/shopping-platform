package com.csw.controller;

import com.csw.dao.AdminDao;
import com.csw.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("admin")
public class AdminController {
    @Autowired
    private AdminDao adminDao;

    @RequestMapping("login")
    @ResponseBody
    public String login(Admin admin, String captchaCode, HttpServletRequest request, HttpSession session) {
        System.out.println("admin]"+admin);
        Admin admin1 = adminDao.selectOne(admin);
        System.out.println("admin1]"+admin1);
        String code = (String) session.getAttribute("securityCode");
        if (code.equalsIgnoreCase(captchaCode)) {
            if (admin1 != null) {
                session.setAttribute("admin", admin1);
                return null;
            } else {
                return "请检查用户名或者密码";
            }
        } else {
            return "验证码错误";
        }
    }

    @RequestMapping("logout")
    public String logout(HttpSession session) {
        // 获取主体信息
        session.invalidate();
        return "redirect:/jsp/back/login.jsp";
    }
}
