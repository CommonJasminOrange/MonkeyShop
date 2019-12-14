package com.monkey.servlet.cate;

import com.monkey.entity.MONKEY_CATEGORY;
import com.monkey.service.MONKEY_CATEGORYDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/manage/admin_tocateupdate")
public class ToCateUpdate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符集
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        int id = Integer.parseInt(request.getParameter("id"));
        MONKEY_CATEGORY cate = MONKEY_CATEGORYDao.selectById(id);
        ArrayList<MONKEY_CATEGORY> catelist = MONKEY_CATEGORYDao.selectAll();


        request.setAttribute("catelist",catelist);
        request.setAttribute("cate1",cate);

        request.getRequestDispatcher("admin_catemodify.jsp").forward(request,response);

    }
}
