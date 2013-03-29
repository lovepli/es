<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<es:contentHeader/>

<div data-table="table" class="panel">

    <es:showMessage/>

    <ul class="nav nav-pills tool ui-toolbar">
        <li <c:if test="${empty param['search.status_eq']}">class="active"</c:if>>
            <a href="${ctx}/showcase/status/show">所有数据列表</a>
        </li>
        <li <c:if test="${param['search.status_eq'] eq 'show'}">class="active"</c:if>>
            <a href="${ctx}/showcase/status/show?search.status_eq=show">显示的数据列表</a>
        </li>
        <li <c:if test="${param['search.status_eq'] eq 'hide'}">class="active"</c:if>>
            <a href="${ctx}/showcase/status/show?search.status_eq=hide">隐藏的数据列表</a>
        </li>
    </ul>


    <div class="row-fluid tool ui-toolbar">
        <div class="span4">
            <div class="btn-group">
                <a class="btn btn-create">
                    <span class="icon-file"></span>
                    新增
                </a>
                <a class="btn btn-update">
                    <span class="icon-edit"></span>
                    修改
                </a>
                <a class="btn btn-batch-delete">
                    <span class="icon-trash"></span>
                    批量删除
                </a>
            </div>
        </div>
        <div class="span8">
            <%@include file="searchForm.jsp"%>
        </div>
    </div>

    <%@include file="listTable.jsp"%>

</div>
<es:contentFooter/>
