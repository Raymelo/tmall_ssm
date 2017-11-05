<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>

<html>
<head>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/back/style.css" rel="stylesheet"/>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>

    <script>
        /**
         * 校验id所在的标签的值是否不为空
         * @param id 标签ID
         * @param name 标签名称
         * @returns {boolean} true:不为空;false:为空
         */
        function checkEmpty(id, name) {
            var value = $("#" + id).val();
            if (value.length === 0) {
                alert(name + "不能为空");
                $("#" + id)[0].focus();
                return false;
            }
            return true;
        }

        /**
         * 校验id所在标签的值是否为数字
         * @param id 标签ID
         * @param name 标签名称
         * @returns {boolean} true:为数字;false:不为数字
         */
        function checkNumber(id, name) {
            var value = $("#" + id).val();
            if (value.length === 0) {
                alert(name + "不能为空");
                $("#" + id)[0].focus();
                return false;
            }
            if (isNaN(value)) {
                alert(name + "必须是数字");
                $("#" + id)[0].focus();
                return false;
            }
            return true;
        }

        /**
         * 校验id所在标签的值是否为整数
         * @param id 标签ID
         * @param name 标签名称
         * @returns {boolean} true:为整数;false:不为整数
         */
        function checkInt(id, name) {
            var value = $("#" + id).val();
            if (value.length === 0) {
                alert(name + "不能为空");
                $("#" + id)[0].focus();
                return false;
            }
            if (parseInt(value) !== value) {
                alert(name + "必须是整数");
                $("#" + id)[0].focus();
                return false;
            }
            return true;
        }

        $(function () {
            $("a").click(function () {
                var deleteLink = $(this).attr("deleteLink");
                console.log(deleteLink);
                if ("true" === deleteLink) {
                    return confirm("确认要删除");
                }
            });
        })
    </script>
</head>
<body>

