package gtja.service;

import gtja.util.MyUtil;
import gtja.vo.FileLog;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class FileService {
    static FileLog fileLog = new FileLog();
    //private static Logger logger = Logger.getLogger(FileService.class);
    public Map<String,String> queryFile(String act,HttpServletResponse resp,HttpServletRequest req) {
        Map<String,String> map = new HashMap<>();
        File file = new File(act);
        if(file.isDirectory()){
            File[] files = file.listFiles();
            for(int i = 0; i<files.length; i++){
                String str = files[i].toString();
                String key = str.substring(str.lastIndexOf("\\")+1);
                map.put(key,str.replace("\\","/"));
            }
            //日志记录
            myJDBC(req,"查看文件夹");

        }else{
            FileInputStream in = null;
            OutputStream out = null;
            try {
                resp.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(act, "UTF-8"));
                in = new FileInputStream(file);
                out = resp.getOutputStream();
            }catch (Exception e){
                e.printStackTrace();
            }
            byte[] buffer = new byte[1024];
            int len = 0;
            try {
                while((len=in.read(buffer))>0){
                    out.write(buffer,0,len);
                }
                in.close();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

            myJDBC(req,"下载文件");

        }
        return map;
    }

    public static void myJDBC(HttpServletRequest req ,String a){
        fileLog.setIp(FileService.getIpAddress(req));
        fileLog.setAction(a);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        fileLog.setTime(df.format(new Date()));
        String sql = "insert into db_log(ip,action,time) values(?,?,?) ";
        Connection conn = MyUtil.getConnection();
        PreparedStatement ps = null;
        try {
            ps= conn.prepareStatement(sql);
            ps.setString(1,fileLog.getIp());
            ps.setString(2,fileLog.getAction());
            ps.setString(3,fileLog.getTime());
            ps.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        MyUtil.closeResouce(conn);
    }

    public static String getIpAddress(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }
}
























