package com.monkey.servlet.product;

import com.monkey.entity.MONKEY_PRODUCT;
import com.monkey.service.MONKEY_PRODUCTDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/manage/admin_productselect")
public class ProductSelect extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符集
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        int cpage = 1; //当前页
        int count = 5; //每页显示条数

        //获取指定页面
        String cp = request.getParameter("cp");

        if (cp != null){
            cpage = Integer.parseInt(cp);
        }

        int arr[] = MONKEY_PRODUCTDao.totalPage(count);

        ArrayList<MONKEY_PRODUCT> plist = MONKEY_PRODUCTDao.selectAll(cpage,count);

        //放到请求对象域里
        request.setAttribute("plist",plist);
        request.setAttribute("tsum",arr[0]);
        request.setAttribute("tpage",arr[1]);
        request.setAttribute("cpage",cpage);

        request.getRequestDispatcher("admin_product.jsp").forward(request,response);
    }
}
