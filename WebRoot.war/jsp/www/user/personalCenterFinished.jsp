<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<script type="text/javascript" src="js/jquery.jcountdown1.3.min.js"></script>

<div class="container">

<div class="thinline">

<br/>

<div class="col-sm-3">

    <div class="basePanelTextLeft" style="text-align: center;">
        <a href="initUpdate.html">
            <img src="<s:property value="#session.userLogoUrl" />"
                 style="width: 160px;height: 160px;border-radius: 12px;">
        </a>

        <p></p>

        <p class="teacherTitle"><s:property value="#session.nickName"/></p>
    </div>

    <p></p>

    <div class="basePanelTextLeft" style="text-align: center;">
        <button type="button" class="btn btn-info btn-block">
            <a href="personalCenter.html" style="display: block; text-decoration: none">
                <span class="glyphicon glyphicon-tag" style="margin-right: 10px;"></span>Courses Underway
            </a>
        </button>
        <button type="button" class="btn btn-warning btn-block">
            <a href="personalCenterFinished.html" style="display: block; text-decoration: none">
                <span class="glyphicon glyphicon-tags" style="margin-right: 10px;"></span>Courses Finished
            </a>
        </button>
    </div>

    <br/>

    <div class="basePanelTextLeftAbsolute">

        <div style="float: right;padding-top: 25px;">

            <s:if test="matterCount != 0">
                <div id="matters_more"
                     title="<s:property value="matterCount"/><s:text name="my.firstpage.new.matter.num"/>">

                    <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal1">
                        <s:text name="others.more"/>
                    </button>

                </div>
            </s:if>

        </div>

        <h3 class="courseSubhead"><s:text name="title.newest.notifications"/></h3>

        <div class="thickline"></div>

        <div>
            <a href="#">
                <img src="images/user/icon_mail.png" class="centerIcon"/>

                <div class="messageGreen1"><s:text name="label.course.message"/></div>
            </a>
        </div>

        <div>
            <a href="#">
                <img src="images/user/icon_mail.png" class="centerIcon"/>

                <div class="messageGreen2"><s:text name="label.comment.message"/></div>
            </a>
        </div>

        <div>
            <a href="#">
                <img src="images/user/icon_mail.png" class="centerIcon"/>

                <div class="messageGreen3"><s:text name="label.invitation.message"/></div>
            </a>
        </div>

        <div>
            <a href="#">
                <img src="images/user/icon_mail.png" class="centerIcon"/>

                <div class="messageGreen4">Message 4</div>
            </a>
        </div>

        <div>
            <a href="#">
                <img src="images/user/icon_mail.png" class="centerIcon"/>

                <div class="messageGreen5">Message 5</div>
            </a>
        </div>

    </div>

</div>

<div class="col-sm-9">

    <h3 class="courseSubject"><p class="text-center" style="font-size: 18px;">Courses Finished</p></h3>

    <div class="basePanelTextLeft">

        <s:if test="existFinishedCourse">
            <s:iterator value="finishedCourse" status="idx">

                <s:if test="#idx.getIndex() < 3">
                    <div calss="courseItem">

                        <ul class="list-inline"
                            style="background-color: #6ab600;color: #fff;border-radius: 4px; padding-top: 3px;padding-bottom: 3px;">


                            <li>
                                <s:text name="courses.info.lecturer"/>:
                                <s:a action="userBlog"><s:param name="user.id" value="teacher.id"/><s:property value="teacher.nickName"/></s:a>
                            </li>

                                <%--<li><div>Start:<s:date name="classOnTheCorner.date" format="%{getText('dateformat.forclass')}"/></div></li>--%>

                        </ul>

                        <div class="media">
                            <a class="pull-left" href="voaCourseBlog.html?course.id=<s:property value="id"/>"
                               title="<s:property value="name"/>">
                                <div class="mycourseImg ">
                                    <img src="<s:property value="logoUrl" />" class="media-object" alt="">
                                </div>
                            </a>

                            <div class="media-body">
                                <h4 class="media-heading" style="color: #6ab600;">
                                    <a href="voaCourseBlog.html?course.id=<s:property value="id"/>"
                                       title="<s:property value="name"/>">
                                        <s:property value="name"/>
                                    </a></h4>
                                <s:if test="description.length() > 50">
                                    <p><s:property value="description.substring(0,50)+'...'"/></p>
                                </s:if>
                                <s:else>
                                    <p><s:property value="description"/></p>
                                </s:else>
                                <a href="myCourseQuestionResult.html?course.id=<s:property value="id"/>"><s:text name="course.courseQuestionResult"/></a>
                            </div>
                        </div>

                        <p class="text-right"><s:date name="classOnTheCorner.date"
                                                      format="%{getText('dateformat.forclass')}"/></p>

                        <br/>

                        <div class="progress progress-striped active">

                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="90"
                                 aria-valuemin="0" aria-valuemax="100"
                                 style="width: <s:property value="100*(classOneTheCornerSequence/(classesNum*1.0))"/>%">
                                <span class="sr-only"><s:property value="100*(classOneTheCornerSequence/(classesNum*1.0))"/>% Complete</span>
                            </div>
                        </div>

                            <%--<button type="button" class="btn btn-success btn-xs btn-block">Start Class</button>--%>
                        <a class="btn btn-success btn-xs btn-block"
                           href="javascript:getVideoUrl('<s:property value="classOnTheCorner.id"/>','<s:property value="teachingNum"/>');">
                            Course View
                        </a>

                    </div>

                    <div class="imaginaryline"></div>
                </s:if>

                <s:else>
                    <ul class="list-inline"
                        style="background-color: #6ab600;color: #fff;border-radius: 4px; padding-top: 3px;padding-bottom: 3px;">
                        <div>
                            <s:text name="personalcenter.no.course.message.head"/>
                            <a href="courseCenter.html"><strong> <s:text name="frame.course.center"/> </strong></a>
                            <s:text name="personalcenter.no.course.message.tail"/>
                        </div>
                    </ul>
                </s:else>

            </s:iterator>
        </s:if>
    </div>

    <p class="text-right">
        <button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target="#myModal"><s:text name="others.more"/></button>
    </p>

    <div class="basePanelTextLeft">
        <h3 class="courseSubhead"><s:text name="recommend.school"/></h3>

        <div class="thickline"></div>

        <div class="row">
            <s:iterator value="latestOrgs" status="idx">

                <s:if test="#idx.getIndex() < 3">
                    <div class="col-sm-4">

                        <div class="recommendedSchool">
                            <a href="orgBlog.html?org.id=<s:property value="id"/>"
                               title="<s:property value="schoolName"/>">
                                <img src="<s:property value="logoUrl"/>" alt="<s:property value="schoolName"/>"/>
                            </a>
                            <br/>
                            <a href="orgBlog.html?org.id=<s:property value="id"/>"
                               title="<s:property value="schoolName"/>">
                                <span><s:property value="schoolName"/></span>
                            </a>
                        </div>

                    </div>
                </s:if>

            </s:iterator>
        </div>

        <a href="schoolCenter.html"><p class="text-right"><s:text name="others.more"/></p></a>
    </div>

    <div class="basePanelTextLeft">
        <h3 class="courseSubhead"><s:text name="recommend.course"/></h3>

        <div class="thickline"></div>

        <div class="row">
            <s:iterator value="userLikeCourse" status="idx">

                <s:if test="#idx.getIndex() < 6">

                    <div class="col-sm-4">
                        <div class="recommended">
                            <a href="voaCourseBlog.html?course.id=<s:property value="id"/>"
                               title="<s:property value="name"/>">
                                <img src="<s:property value="logoUrl"/>" alt="<s:property value="name"/>"/>
                            </a>
                            <br/>
                            <a href="voaCourseBlog.html?course.id=<s:property value="id"/>"
                               title="<s:property value="name"/>">
                                <s:property value="name"/>
                            </a>
                        </div>
                    </div>

                    <s:if test="#idx.getCount() % 3 == 0"><br/></s:if>

                </s:if>

            </s:iterator>

        </div>

        <a href="courseCenter.html"><p class="text-right"><s:text name="others.more"/></p></a>

    </div>

</div>

</div>

</div>

<%--更多Matters的显示--%>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel1"><s:text name="title.newest.notifications"/></h4>
            </div>

            <div class="modal-body">
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon">

                    <div class="messageGreen1"><s:text name="label.course.message"/></div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon"/>

                    <div class="messageGreen2"><s:text name="label.comment.message"/></div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon"/>

                    <div class="messageGreen3"><s:text name="label.invitation.message"/></div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon"/>

                    <div class="messageGreen4">Message 4</div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon"/>

                    <div class="messageGreen5">Message 5</div>
                </div>
                <div class="courseItem">
                    <div id="matters_content"></div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal"><s:text name="button.ok"/></button>
            </div>

        </div>
    </div>
</div>

<%--更多课程的页面显式--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><s:text name="usermenu.item.mycourses"/></h4>
            </div>
            <div class="modal-body">
                <div class="courseItem">
                    <s:if test="existLatestCourse">
                        <s:iterator value="latestCourse" status="idx">
                            <s:if test="#idx.getIndex() > 2">
                                <ul class="list-inline"
                                    style="background-color: #6ab600;color: #fff;border-radius: 4px; padding-top: 3px;padding-bottom: 3px;">
                                    <li><a href="javascript:;"><s:property value="%{getText('class.count',{classOneTheCornerSequence})}"/></a></li>
                                    <li><s:text name="courses.info.lecturer"/>:<s:a
                                            action="userBlog"><s:param name="user.id" value="teacher.id"/><s:property value="teacher.nickName"/></s:a></li>

                                    <li>
                                        <div style="width: 175px;"><s:text name="courses.time.left"/>&nbsp;<b
                                                id="timeLeft<s:property value="#idx.index"/>"></b></div>
                                        <script type="text/javascript">
                                            $("#timeLeft<s:property value="#idx.index"/>").countdown({
                                                date: '<s:date name="classOnTheCorner.date" format="%{getText('date.formate.firstpage.course.startdate')}"/>',
                                                onChange: function (event, timer) {
                                                },
                                                onComplete: function (event) {
                                                    $(this).html("<s:text name='course.in.progress'/>");
                                                },
                                                htmlTemplate: "<span>%{d}<s:text name="course.time.day"/> %{h}<s:text name="course.time.hour"/>%{m}<s:text name="course.time.minute"/>%{s}<s:text name="course.tine.second"/></span>",
                                                leadingZero: true,
                                                direction: "down"
                                            });
                                        </script>
                                    </li>
                                </ul>

                                <div class="media">
                                    <a class="pull-left" href="voaCourseBlog.html?course.id=<s:property value="id" />"
                                       title="<s:property value="name"/>">
                                        <div class="mycourseImg ">
                                            <img src="<s:property value="logoUrl" />"/>
                                        </div>
                                    </a>

                                    <div class="media-body">
                                        <h4 class="media-heading" style="color: #6ab600;"><s:property value="name"/></h4>
                                        <s:if test="description.length() > 50">
                                            <p></p><s:property value="description.substring(0,50)+'...'"/></p>
                                        </s:if>
                                        <s:else>
                                            <p><s:property value="description"/></p>
                                        </s:else>
                                    </div>
                                </div>
                                <br/>

                                <p class="text-right"><s:date name="classOnTheCorner.date"
                                                              format="%{getText('dateformat.forclass')}"/></p>

                                <div class="progress progress-striped active">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0"
                                         aria-valuemax="100" style="width: <s:property value="100*(classOneTheCornerSequence/(classesNum*1.0))"/>%">
                                        <span class="sr-only"><s:property value="100*(classOneTheCornerSequence/(classesNum*1.0))"/>% Complete</span>
                                    </div>
                                </div>
                                <a class="btn btn-success btn-xs btn-block"
                                   href="javascript:getVideoUrl('<s:property value="classOnTheCorner.id"/>','<s:property value="teachingNum"/>');"><s:text name="button.start.class"/></a>
                                <%-- <button type="button" class="btn btn-success btn-xs btn-block">View Course</button> --%>
                            </s:if>
                        </s:iterator>
                    </s:if>
                </div>
                <s:if test="!#idx.last">
                    <div class="thinlineGray"></div>
                </s:if>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal"><s:text name="button.ok"/></button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var sendRequest = 0;
    var total_message_number = <s:property value="matterCount"/>;
    $(document).ready(function () {
        $("#matters_more").click(function () {
            $.post('initMatters.html', {}, function (data) {
                $('#matters_content').html(data);
            });
        });
    });
    jQuery.fn.isChildAndSelfOf = function (b) {
        return (this.closest(b).length > 0);
    };

    function getVideoUrl(cid, type) {

        window.location.href = "studentClass.html?courseClass.id=" + cid;
    }
</script>
