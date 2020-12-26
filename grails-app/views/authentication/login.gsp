<!DOCTYPE html>
<html class="h-100" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Login</title>
    <!-- Favicon icon -->
    %{--<link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">--}%
    <asset:link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png"></asset:link>

    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"> -->
    %{--<link href="css/style.css" rel="stylesheet">--}%
    <asset:link rel="stylesheet" href="./css/style.css"></asset:link>

</head>

<body class="h-100">

<!--*******************
        Preloader start
    ********************-->
<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10"/>
        </svg>
    </div>
</div>
<!--*******************
        Preloader end
    ********************-->





<div class="login-form-bg h-100">
    <div class="container h-100">
        <div class="row justify-content-center h-100">
            <div class="col-xl-6">
                <div class="form-input-content">
                    <div class="card login-form mb-0">
                        <div class="card-body pt-5">
                            <a class="text-center" href="index.html"><h4>Shoaib</h4></a>
                            <g:form class="form-horizontal two-column-form" method="post" id="signUpForm">
                                <g:if test="${flash.error}">
                                    <div class="alert">
                                        <span class="closebtn" onclick="this.parentElement.style.display = 'none';">&times;</span>
                                        ${flash.error}
                                    </div>
                                </g:if>
                                <div class="form-group">
                                    <input type="email" required="required" name="email" class="form-control" placeholder="Email">
                                </div>

                                <div class="form-group">
                                    <input type="password" required="required" name="password" class="form-control" placeholder="Password">
                                </div>
                                <g:actionSubmit class="btn login-form__btn submit w-100" action="login"
                                                value="Sign In"/>
                            </g:form>
                            <p class="mt-5 login-form__footer">Don't have account? <g:link controller="user" action="signUp"> Sign Up </g:link> now</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<!--**********************************
        Scripts
    ***********************************-->
%{--<script src="plugins/common/common.min.js"></script>
<script src="js/custom.min.js"></script>
<script src="js/settings.js"></script>
<script src="js/gleek.js"></script>
<script src="js/styleSwitcher.js"></script>--}%

<asset:javascript src="./plugins/common/common.min.js"></asset:javascript>
<asset:javascript src="./js/custom.min.js"></asset:javascript>
<asset:javascript src="./js/settings.js"></asset:javascript>
<asset:javascript src="./js/gleek.js"></asset:javascript>
<asset:javascript src="./js/styleSwitcher.js"></asset:javascript>
</body>
</html>





