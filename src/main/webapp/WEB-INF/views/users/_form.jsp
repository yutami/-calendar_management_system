<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="constants.AttributeConst" %>
<%@ page import="constants.ForwardConst" %>

<c:set var="action" value="${ForwardConst.ACT_EMP.getValue()}" />
<c:set var="commIdx" value="${ForwardConst.CMD_INDEX.getValue()}" />

<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="${AttributeConst.EMP_CODE.getValue()}">ユーザー番号</label><br />
<input type="text" name="${AttributeConst.EMP_CODE.getValue()}" id="${AttributeConst.EMP_CODE.getValue()}" value="${user.code}" />
<br /><br />

<label for="${AttributeConst.EMP_NAME.getValue()}">氏名</label><br />
<input type="text" name="${AttributeConst.EMP_NAME.getValue()}" id="${AttributeConst.EMP_NAME.getValue()}" value="${user.name}" />
<br /><br />

<label for="${AttributeConst.EMP_PASS.getValue()}">パスワード</label><br />
<input type="password" name="${AttributeConst.EMP_PASS.getValue()}" id="${AttributeConst.EMP_PASS.getValue()}" />
<br /><br />

<label for="${AttributeConst.EMP_ADMIN_FLG.getValue()}">権限</label><br />
<select name="${AttributeConst.EMP_ADMIN_FLG.getValue()}" id="${AttributeConst.EMP_ADMIN_FLG.getValue()}">
    <option value="${AttributeConst.ROLE_GENERAL.getIntegerValue()}"<c:if test="${user.adminFlag == AttributeConst.ROLE_GENERAL.getIntegerValue()}"> selected</c:if>>一般</option>
</select>
<br /><br />
<input type="hidden" name="${AttributeConst.EMP_ID.getValue()}" value="${User.id}" />
<input type="hidden" name="${AttributeConst.TOKEN.getValue()}" value="${_token}" />
<button type="submit">登録</button>