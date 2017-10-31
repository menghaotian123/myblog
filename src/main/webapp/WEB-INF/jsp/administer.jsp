<%--
  Created by IntelliJ IDEA.
  User: caosong
  Date: 2017/8/28
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="col-md-3 note_left">
            <h4 class="text-center">分类</h4>
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne">
                                文章变动
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <a href="Javascript:addminLoadfunction('/Admin/add')">增加文章</a>
                        </div>
                        <div class="panel-body">
                            <a href="Javascript:addminLoadfunction('/Admin/change')">修改文章</a>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo">
                                评论变动
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <a href="">删除评论</a>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree">
                                账号变动
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <a>修改密码</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="contentShow" class="col-md-9 note_right">
        请在左侧选择功能

    </div>

</div>
<script type="text/javascript">
    function addminLoadfunction(url) {
        $("#contentShow").load(url);
    }
</script>