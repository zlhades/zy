<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%--<s:iterator value="comments" status="idx">--%>
<%--<li class="li_out">--%>
<%--<ul class="ul_in">--%>
<%--<li class="li_1"><s:a action="userBlog" target="_blank"><s:param name="user.id" value="owner.id"/><img src="<s:property value="commenter.pic"/>" class="portraitImg"/></s:a></li>--%>
<%--<li class="li_2"><s:a action="userBlog" target="_blank"><s:param name="user.id" value="owner.id"/><s:property value="commenter.nickName"/></s:a></li>--%>
<%--<li class="li_3">--%>
<%--<span class="span_1"><s:property value="description"/></span>--%>
<%--<span class="span_2"><s:date name="createDate" format="%{getText('global.display.datetime')}"/></span>--%>
<%--<s:if test="org.responsiblePerson.id == #session.userID && commenter.id != #session.userID">--%>
<%--<span class="span_3"><a onclick="replyToComment('<s:property value="commenter.nickName"/>',<s:property value="commenter.id"/>)" href="javascript:;">回复</a></span>--%>
<%--<span class="span_3"><a onclick="deleteThisComment(this,<s:property value="id"/>)" href="javascript:;">删除</a></span>--%>
<%--</s:if>--%>
<%--<s:elseif test="org.responsiblePerson.id != #session.userID && commenter.id != #session.userID">--%>
<%--<span class="span_3"><a onclick="replyToComment('<s:property value="commenter.nickName"/>',<s:property value="commenter.id"/>)" href="javascript:;">回复</a></span>--%>
<%--</s:elseif>--%>
<%--<s:else>--%>
<%--<span class="span_3"><a onclick="deleteThisComment(this,<s:property value="id"/>)" href="javascript:;">删除</a></span>--%>
<%--</s:else>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</li>--%>
<%--</s:iterator>--%>

<s:iterator value="comments" status="idx">
    <div class="row">
        <div class="col-md-2">
            <div class="portrait">
                <span></span><s:a action="userBlog"><s:param name="user.id" value="commenter.id"/><img
                    src="<s:property value="commenter.pic"/>" alt="" class="forumportrait"/></s:a>
                <br/>
                <span><s:a action="userBlog"><s:param name="user.id" value="commenter.id"/><s:property value="commenter.nickName"/></s:a></span>
            </div>
        </div>
        <div class="col-md-10">
            <div class="forumContent">
                <s:property value="description"/>
            </div>
            <div class="forumContentDate">
                <p class="text-right"><s:date name="createDate" format="%{getText('global.display.datetime')}"/></p>
            </div>
        </div>
    </div>
    <br/>
</s:iterator>

<s:if test="commentsNum != 0">
    <s:if test="!commentsNumOverflow">
        <a class="more_or_close" onclick="getMoreComments();" href="javascript:;"><s:property value="%{getText('blog.comments.more.result')}"/>&gt;&gt;</a>
    </s:if>
    <s:else>
        <a class="more_or_close" onclick="rollBack();" href="javascript:;">&lt;&lt;<s:property value="%{getText('blog.comments.rollBack')}"/></a>
    </s:else>
</s:if>


<script type="text/javascript">
    function getMoreComments() {
        $.post("moreOrgComments.html", {'org.id':<s:property value="org.id"/>, 'commentsNum':<s:property value="commentsNum"/>}, function (data) {
            $("#message_list_ul").html(data);
        });
    }

    function rollBack() {
        $.post("moreOrgComments.html", {'org.id':<s:property value="org.id"/>, 'commentsNum': 0}, function (data) {
            $("#message_list_ul").html(data);
        });
    }
</script>
