package com.csw.controller;

import com.csw.dao.UserDao;
import com.csw.entity.User;
import com.csw.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserDao userDao;

    @RequestMapping("regist")
    public String regist(User user, String captchaCode, HttpSession session) throws UnsupportedEncodingException {
        System.out.println("user//:" + user);
        String salt = MD5Utils.getSalt();
        user.setSalt(salt);
        String password = MD5Utils.getPassword(user.getPassword() + salt);
        user.setPassword(password);
        String code = (String) session.getAttribute("securityCode");
        if(!code.equalsIgnoreCase(captchaCode)){
            return "redirect:/jsp/front/regist.jsp?erroMsg="+ URLEncoder.encode("验证码错误", "UTF-8");
        }
        System.out.println("1");
        User user2 = userDao.selectOne(new User(null,user.getUsername(),null,null));
        if (user2 == null) {
            System.out.println("user//:" + user);
            user.setId(UUID.randomUUID().toString());
            userDao.insert(user);
            return "redirect:/jsp/front/login.jsp";
        } else {
            return "redirect:/jsp/front/regist.jsp?erroMsg="+ URLEncoder.encode("用户已存在，请重新注册", "UTF-8");
        }
    }

    @RequestMapping("login")
    public String login(User user, HttpSession session) throws Exception {
        System.out.println("*******************");
        User user2 = userDao.selectOne(new User(null,user.getUsername(),null,null));
        if (user2 != null && user2.getPassword().equals(MD5Utils.getPassword(user.getPassword() + user2.getSalt()))) {
            session.setAttribute("user", user2);
            System.out.println("next");
            return "redirect:";
        } else {
            System.out.println("用户不存在");
            return "redirect:/jsp/front/login.jsp?erroMsg=" + URLEncoder.encode("用户不存在", "UTF-8");
        }
    }
}
