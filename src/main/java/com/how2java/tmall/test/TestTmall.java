package com.how2java.tmall.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class TestTmall {

    public static void main(String args[]) {
        //准备分类测试数据：
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String url = "jdbc:mysql://localhost:3380/tmall_ssm?useUnicode=true&characterEncoding=utf8";
        String user = "root";
        String passport = "root";
        try (Connection c = DriverManager.getConnection(url, user, passport); Statement s = c.createStatement()) {
            for (int i = 1; i <= 10; i++) {
                String sqlFormat = "insert into category values (null, '测试分类%d')";
                String sql = String.format(sqlFormat, i);
                s.execute(sql);
            }
            System.out.println("已经成功创建10条分类测试数据");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
