package com.monkey.servlet.product;

import com.jspsmart.upload.*;
import com.monkey.entity.MONKEY_PRODUCT;
import com.monkey.service.MONKEY_PRODUCTDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/manage/admin_doproductupdate")
public class DoProductUpdate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符集
        request.setCharacterEncoding("GBK");
        //response.setContentType("text/html;charset=utf-8");

        //创建smartUpload对象
        SmartUpload su = new SmartUpload();
        //初始化
        su.initialize(this.getServletConfig(),request,response);
        //上传过程
        try {
            su.upload();
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }

        //获取上传的文件对象
        Files fs = su.getFiles();
        File f = fs.getFile(0);

        //获取上传到文件名称
        String fname = f.getFileName();
        fname = new String(fname.getBytes("GBK"),"utf-8");

        try {
            su.save("/images/product");
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }

        Request req1 = su.getRequest();
        int pid = Integer.parseInt(req1.getParameter("id"));
        String pname = req1.getParameter("productName");
        String id = req1.getParameter("parentId");
        String price = req1.getParameter("productPrice");
        String desc = req1.getParameter("productDesc");
        String stock = req1.getParameter("productStock");

        MONKEY_PRODUCT p1 = new MONKEY_PRODUCT(
                pid,
                pname,
                desc,
                Integer.parseInt(price),
                Integer.parseInt(stock),
                Integer.parseInt(id.split("-")[0]),
                Integer.parseInt(id.split("-")[1]),
                fname
        );

        //int count = MONKEY_PRODUCTDao.update(p1);
        MONKEY_PRODUCTDao.update(p1);

        response.sendRedirect("admin_productselect");



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
