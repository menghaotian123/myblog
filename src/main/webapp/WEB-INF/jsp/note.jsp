<%--
  Created by IntelliJ IDEA.
  User: caosong
  Date: 2017/7/22
  Time: 20:55
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
                                Java技术心得
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <a href="Javascript:loadArtical(1)">开发背景</a>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo">
                                前端偶得
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <a href="Javascript:loadArtical(2)">BootStrap简单应用</a>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree">
                                人生感悟
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <a>工作vs考研</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="articalShow" class="col-md-9 note_right">


    </div>

</div>
<script type="text/javascript">
    $(document).ready(function () {
        if ('${noteId}' === '' || '${noteId}' === null) {
            loadArtical(1);
        }

        else {
            loadArtical('${noteId}');
        }
    })
</script>