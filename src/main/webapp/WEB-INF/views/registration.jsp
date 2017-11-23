<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet"/>
    <link href="${contextPath}/resources/adminLTE/plugins/daterangepicker/daterangepicker.css" rel="stylesheet"/>
    <link href="${contextPath}/resources/adminLTE/plugins/datepicker/datepicker3.css" rel="stylesheet"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

		<spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="email" class="form-control" placeholder="E-mail"
                            autofocus="true"></form:input>
                <form:errors path="email"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="mobileNo">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="mobileNo" class="form-control" placeholder="Mobile number"
                            autofocus="true"></form:input>
                <form:errors path="mobileNo"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="dob">
        <%-- <div class="input-group date form-group ${status.error ? 'has-error' : ''}">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <form:input class="form-control pull-right" id="datepicker" path="dob"  type="text" ></form:input>
                  <form:errors path="dob"></form:errors>
        </div> --%>
        
        <div class="input-group date ${status.error ? 'has-error' : ''}">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input class="form-control pull-right" id="datepicker" type="text">
        </div>
        </spring:bind>
        
        <%-- <spring:bind path="gender">
        <div class="form-group">
                <label class="">
                  <div class="iradio_flat-green checked" style="position: relative;" aria-checked="true" aria-disabled="false"><form:input path="gender" class="flat-red" checked="" style="position: absolute; opacity: 0;" type="radio"/><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>Male</div>
                   <form:errors path="gender"></form:errors>
                </label>
                <label class="">
                  <div class="iradio_flat-green" style="position: relative;" aria-checked="false" aria-disabled="false"><form:input path="gender" class="flat-red" style="position: absolute; opacity: 0;" type="radio"/><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>Female</div>
                   <form:errors path="gender"></form:errors>
                </label>
                <label>
                  <div class="iradio_flat-green disabled" style="position: relative;" aria-checked="false" aria-disabled="true"><input name="r3" class="flat-red" disabled="" style="position: absolute; opacity: 0;" type="radio"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                  Flat green skin radio
                </label>
        </div>
        </spring:bind> --%>
        
        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="passwordConfirm" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="passwordConfirm"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/adminLTE/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${contextPath}/resources/adminLTE/plugins/daterangepicker/moment.min.js"></script>
<script src="${contextPath}/resources/adminLTE/plugins/daterangepicker/moment.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

<!-- <input type="text" name="birthday" id="birthday" class="datepicker" required="required" placeholder="yyyy/mm/dd" />

<script type="text/javascript">jQuery(document).ready(function($) {

    $('.datepicker').datetimepicker();

});
</script> -->


</body>
</html>
