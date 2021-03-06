<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<script type="text/javascript" src="js/jquery.jcountdown1.3.min.js"></script>


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

<div class="container">
<div class="thinline"></div>
<br/>

<div class="row">

<div class="col-sm-4">
    <div class="basePanelshadow" style="text-align: center;">
        <div class="basePanelGrey" style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
            <s:text name="personalcenter.hall"/>
            (
            <s:if test="userOrganization.schoolName!=null">
                <s:property value="userOrganization.schoolName"/>
            </s:if>
            <s:else>
                GoGoWise Guide Team
            </s:else>
            )
        </div>
        <br/>

        <div class="list-group">
            <a href="#" class="list-group-item active">
                <img src="../../../images/studentcenter/icon_video_action.png" class="centerIcon">
                <h4 class="list-group-item-heading">The choice of computer is dictated by our special needs.</h4>

                <p class="list-group-item-text">20:00-22:00</p>

                <p class="list-group-item-text"><s:text name="courses.info.lecturer"/>:Name</p>
            </a>

            <a href="#" class="list-group-item">
                <img src="../../../images/studentcenter/icon_video.png" class="centerIcon">
                <h4 class="list-group-item-heading">
                    Students are flocking to such fields as genetics and molecular biology.
                </h4>

                <p class="list-group-item-text">15:00-17:00</p>

                <p class="list-group-item-text"><s:text name="courses.info.lecturer"/>:Name</p>
            </a>

            <a href="#" class="list-group-item">
                <h4 class="list-group-item-heading">
                    As these trends continue, what will happen to the desktop and where will it live?
                </h4>

                <p class="list-group-item-text">9:00-11:30</p>

                <p class="list-group-item-text"><s:text name="courses.info.lecturer"/>:Name</p>
            </a>

            <a href="#" class="list-group-item">

                <h4 class="list-group-item-heading">This is a seminar for mathematics majors......</h4>

                <p class="list-group-item-text">14:00-14:30</p>

                <p class="list-group-item-text"><s:text name="courses.info.lecturer"/>:Name</p>
            </a>
            <button type="button" class="btn btn-primary btn-xs btn-block"><s:text name="personalcenter.hall.view.school.video"/><%--View School Video--%></button>
            <div id="page">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li>
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li class="active">
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>

    </div>
    <br/>

    <div class="basePanelshadow">
        <div class="basePanelBlueGrey" style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
            <s:text name="label.course.discussion.room"/>
            (<s:property value="userOrganization.schoolName"/>)
        </div>

        <br/>

        <div class="list-group">
            <a href="#" class="list-group-item active">
                <h4 class="list-group-item-heading">The choice of computer is dictated by our special needs.</h4>

                <p class="list-group-item-text">20:00-22:00</p>

                <p class="list-group-item-text"><s:text name="courses.info.lecturer"/>:Name</p>
            </a>

            <a href="#" class="list-group-item">
                <h4 class="list-group-item-heading">
                    Students are flocking to such fields as genetics and molecular biology.
                </h4>

                <p class="list-group-item-text">15:00-17:00</p>

                <p class="list-group-item-text"><s:text name="courses.info.lecturer"/>:Name</p>
            </a>

            <a href="#" class="list-group-item">
                <h4 class="list-group-item-heading">
                    As these trends continue, what will happen to the desktop and where will it live?
                </h4>

                <p class="list-group-item-text">9:00-11:30</p>

                <p class="list-group-item-text"><s:text name="courses.info.lecturer"/>:Name</p>
            </a>

        </div>
        <button type="button" class="btn btn-success btn-lg btn-block"><s:text name="button.enter"/><%--Booking--%></button>
        <div id="page1">
            <ul class="pagination">
                <li>
                    <a href="#">&laquo;</a>
                </li>
                <li>
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li class="active">
                    <a href="#">3</a>
                </li>
                <li>
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#">&raquo;</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="col-sm-8">
    <div class="row">
        <div class="col-sm-8">
            <div class="basePanelTextLeftAbsolute">
                <h3 class="courseSubhead"><s:text name="usermenu.item.mycourses"/></h3>

                <s:if test="existLatestCourse">
                    <s:iterator value="latestCourse" status="idx">
                        <s:if test="#idx.getIndex() == 0">
                            <ul class="list-inline" style="background-color: #6ab600;color: #fff;border-radius: 4px;
									                               padding-top: 3px;padding-bottom: 3px;">
                                <li><a href="javascript:;">
                                    <s:property value="%{getText('class.count',{classOneTheCornerSequence})}"/>
                                </a></li>

                                <li><s:text name="courses.info.lecturer"/>:<s:a action="userBlog">
                                    <s:param name="user.id" value="teacher.id"/>
                                    <s:property value="teacher.nickName"/>
                                </s:a></li>


                                <li>

                                        <%-- <div id="remainSeconds" style="display:none">100000</div>
                                        <div id="remainTime" style="width: 134px;">Start:</div> --%>
                                    <div style="width: 260px;"><s:text name="courses.time.left"/>
                                        &nbsp;<b id="timeLeft<s:property value="#idx.index"/>"></b>
                                    </div>
                                    <script type="text/javascript">
                                        $("#timeLeft<s:property value="#idx.index"/>").countdown({
                                            date: '<s:date name="classOnTheCorner.date" format="%{getText('date.formate.firstpage.course.startdate')}"/>',
                                            onChange: function (event, timer) {
                                            },
                                            onComplete: function (event) {
                                                $(this).html("<s:text name='course.in.progress'/>");
                                            },
                                            htmlTemplate: "<span><b>%{d}</b><s:text name="course.time.day"/><b> %{h}</b><s:text name="course.time.hour"/><b>%{m}</b><s:text name="course.time.minute"/><b>%{s}</b><s:text name="course.tine.second"/></span>",
                                            leadingZero: true,
                                            direction: "down"
                                        });
                                    </script>
                                </li>
                                <li style="margin-left: 25px;">
                                    <button type="button" class="btn btn-default btn-xs" data-toggle="modal"
                                            data-target="#myModal"><s:text name="others.more"/></button>
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
                            <p class="text-right"><s:date name="classOnTheCorner.date"
                                                          format="%{getText('dateformat.forclass')}"/></p>

                            <div class="progress progress-striped active">
                                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0"
                                     aria-valuemax="100"
                                     style="width: <s:property value="100*(classOneTheCornerSequence/(classesNum*1.0))"/>%">
                                    <span class="sr-only"><s:property value="100*(classOneTheCornerSequence/(classesNum*1.0))"/>% Complete</span>
                                </div>
                            </div>
                            <a class="btn btn-success btn-lg btn-block"
                               href="javascript:getVideoUrl('<s:property value="classOnTheCorner.id"/>','<s:property value="teachingNum"/>');"><s:text name="button.start.class"/></a>
                        </s:if>
                    </s:iterator>
                </s:if>
                <s:else>
                    <ul class="list-inline"
                        style="background-color: #6ab600;color: #fff;border-radius: 4px; padding-top: 3px;padding-bottom: 3px;">
                        <div>
                            <s:text name="personalcenter.no.course.message.head"/><a
                                href="courseCenter.html"><strong> <s:property value="%{getText('frame.course.center')}"/> </strong></a><s:property value="%{getText('personalcenter.no.course.message.tail')}"/>
                                <%--You have no course registered. Please choose your courses in <a href="courseSquare.html">Course Centre</a>.--%>
                        </div>
                    </ul>
                </s:else>
            </div>
        </div>
        <div class="col-sm-4">

            <div class="basePanelTextLeftAbsolute">
                <div style="float: right;padding-top: 25px;">
                    <%-- <button type="button" class="btn btn-success btn-xs">more</button>--%>
                    <s:if test="matterCount != 0">
                        <div id="matters_more"
                             title="<s:property value="matterCount"/><s:text name="my.firstpage.new.matter.num"/>">
                            <button type="button" class="btn btn-success btn-xs" data-toggle="modal"
                                    data-target="#myModal1"><s:text name="others.more"/></button>
                        </div>
                    </s:if>
                </div>
                <h3 class="courseSubhead"><s:text name="title.newest.notifications"/></h3>

                <div class="thickline"></div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon">

                    <div class="messageGreen1"><s:text name="label.course.message"/></div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon">

                    <div class="messageGreen2"><s:text name="label.comment.message"/></div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon">

                    <div class="messageGreen3"><s:text name="label.invitation.message"/></div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon">

                    <div class="messageGreen4">Message 4</div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon">

                    <div class="messageGreen5">Message 5</div>
                </div>
            </div>


        </div>
    </div>

    <br/>

    <div class="basePanelTextLeft">
        <h3 class="courseSubhead"><s:text name="recommend.school"/></h3>

        <div class="thickline"></div>

        <div class="row">
            <s:iterator value="latestOrgs" status="idx">
                <s:if test="#idx.getIndex() < 3">
                    <div class="col-sm-4">
                        <div class="recommendedSchool">
                            <div>
                                <a href="orgBlog.html?org.id=<s:property value="id"/>"
                                   title="<s:property value="schoolName"/>"><img src="<s:property value="logoUrl"/>"/></a>
                            </div>
                            <br/>
                        <span><a href="orgBlog.html?org.id=<s:property value="id"/>"
                                 title="<s:property value="schoolName"/>"><s:property value="schoolName"/></a></span>
                        </div>
                    </div>
                </s:if>
            </s:iterator>
        </div>
        <a href="schoolCenter.html">
            <p class="text-right"><s:text name="others.more"/></p>
        </a>
    </div>
    <br/>

    <div class="basePanelTextLeft">
        <h3 class="courseSubhead"><s:text name="course.interested"/></h3>

        <div class="thickline"></div>
        <div class="row">
            <s:iterator value="userLikeCourse" status="idx">
                <s:if test="#idx.getIndex() < 6">
                    <div class="col-sm-4">
                        <div class="recommended">
                            <div>
                                <a href="voaCourseBlog.html?course.id=<s:property value="id"/>"
                                   title="<s:property value="name"/>"><img src="<s:property value="logoUrl"/>"/></a>
                            </div>
                            <br/>
                            <a href="voaCourseBlog.html?course.id=<s:property value="id"/>"
                               title="<s:property value="name"/>"><s:property value="name"/></a>
                        </div>
                    </div>
                    <s:if test="#idx.getCount() % 3 == 0">
                        <br/>
                    </s:if>
                </s:if>
            </s:iterator>
        </div>
        <a href="#">
            <p class="text-right"><s:text name="others.more"/></p>
        </a>
    </div>
</div>
</div>
</div>

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
                    <img src="images/user/icon_mail.png" class="centerIcon">

                    <div class="messageGreen2"><s:text name="label.comment.message"/></div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon">

                    <div class="messageGreen3"><s:text name="label.invitation.message"/></div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon">

                    <div class="messageGreen4">Message 4</div>
                </div>
                <div>
                    <img src="images/user/icon_mail.png" class="centerIcon">

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
                            <s:if test="#idx.getIndex() > 0">
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
