package gtja.controller;


import gtja.service.FileService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet(urlPatterns = "/file")
public class FileController extends HttpServlet {

    FileService fileService = new FileService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String act = req.getParameter("act");
        Map<String,String> fileList = fileService.queryFile(act,resp,req);
        req.setAttribute("fileList",fileList);
        //resp.sendRedirect("right.jsp");
        req.getRequestDispatcher("jsp/right.jsp").forward(req,resp);
    }
}
