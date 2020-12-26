<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>User</title>
    <!-- Favicon icon -->
    <asset:link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png"></asset:link>
    <!-- Pignose Calender -->
    <asset:link href="./plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet"></asset:link>
    <!-- Chartist -->
    <asset:link rel="stylesheets" href="./plugins/chartist/css/chartist.min.css"></asset:link>
    <asset:link rel="stylesheet" href="./plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css"></asset:link>
    <!-- Custom Stylesheet -->
    <asset:link href="css/style.css" rel="stylesheet"></asset:link>

</head>

<body>

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

<!--**********************************
        Main wrapper start
    ***********************************-->
<div id="main-wrapper">

    <!--**********************************
            Nav header start
        ***********************************-->
    <div class="nav-header">
        <div class="brand-logo">
            <a href=${createLink(controller: 'authentication', action: 'dashBoard')}>
                <span class="brand-title" style="color: white">
                    Shoaib
                </span>
            </a>
        </div>
    </div>
    <!--**********************************
            Nav header end
        ***********************************-->

    <!--**********************************
            Header start
        ***********************************-->
    <div class="header">
        <div class="header-content clearfix">

            <div class="nav-control">
                <div class="hamburger">
                    <span class="toggle-icon"><i class="icon-menu"></i></span>
                </div>
            </div>


            <div class="header-right">
                <ul class="clearfix">


                    <li class="icons dropdown">
                        <div class="user-img c-pointer position-relative" data-toggle="dropdown">
                            <span class="activity active"></span>
                            <asset:image src="images/user/1.png" height="40" width="40" alt=""></asset:image>
                        </div>

                        <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                            <div class="dropdown-content-body">
                                <ul>
                                    <li>
                                        <a href="${createLink(controller: 'user', action: 'profile')}"><i class="icon-user"></i> <span>Profile</span></a>
                                    </li>
                                    <li>
                                        <a href="${createLink(controller: 'user', action: 'changePassword')}"><i class="icon-key"></i> <span>Change Password</span></a>
                                    </li>
                                   <li><a href="${createLink(controller: 'authentication', action: 'logout')}"><i class="icon-key"></i> <span>Logout</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

    <!--**********************************
            Sidebar start
        ***********************************-->
    <div class="nk-sidebar">
        <div class="nk-nav-scroll">
            <ul class="metismenu" id="menu">
                <li>
                    <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                        <i class="icon-speedometer menu-icon"></i><span class="nav-text">Dashboard</span>
                    </a>
                    <ul aria-expanded="false">
                        <li> <a href=${createLink(controller: 'authentication', action: 'dashBoard')}>Home</a></li>
                        <!-- <li><a href="./index-2.html">Home 2</a></li> -->
                    </ul>
                </li>
                <g:if test="${user?.email == 'admin@localhost.local'}">
                <li>
                    <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                        <i class="icon-menu menu-icon"></i><span class="nav-text">Data</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="${createLink(controller: 'user', action: 'index')}">User List</a></li>
                    </ul>
                </li>
                </g:if>
            </ul>
        </div>
    </div>
    <!--**********************************
            Sidebar end
        ***********************************-->

    <!--**********************************
            Content body start
        ***********************************-->
    <div class="content-body">


        <div class="content-wrapper">
            <!-- Content Header (Page header) -->

            <!-- Main content -->
            <section class="content">
                <div class="box box-default">
                    <g:layoutBody/>
                </div>
            </section>
            <!-- /.content -->
        </div>

        <!-- #/ container -->
    </div>
    <!--**********************************
            Content body end
        ***********************************-->


    <!--**********************************
            Footer start
        ***********************************-->
    <div class="footer">
        <div class="copyright">
            <p>Copyright &copy; Designed & Developed by <a
                    href="https://gmshoaib.github.io/" target="_blank">Shoaib</a> 2020</p>
        </div>
    </div>
    <!--**********************************
            Footer end
        ***********************************-->
</div>
<!--**********************************
        Main wrapper end
    ***********************************-->

<!--**********************************
        Scripts
    ***********************************-->
<asset:javascript src="plugins/common/common.min.js"></asset:javascript>
<asset:javascript src="js/custom.min.js"></asset:javascript>
<asset:javascript src="js/settings.js"></asset:javascript>
<asset:javascript src="js/gleek.js"></asset:javascript>
<asset:javascript src="js/styleSwitcher.js"></asset:javascript>


%{--data table--}%
<asset:link href="./plugins/tables/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet"></asset:link>
<asset:javascript src="./plugins/tables/js/jquery.dataTables.min.js"></asset:javascript>
<asset:javascript src="./plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></asset:javascript>
<asset:javascript src="./plugins/tables/js/datatable-init/datatable-basic.min.js"></asset:javascript>

%{--jquery validate--}%
<asset:javascript src="./plugins/validation/jquery.validate.min.js"></asset:javascript>
<asset:javascript src="./plugins/validation/jquery.validate-init.js"></asset:javascript>

<!-- Chartjs -->
<asset:javascript src="./plugins/chart.js/Chart.bundle.min.js"></asset:javascript>
<!-- Circle progress -->
<asset:javascript src="./plugins/circle-progress/circle-progress.min.js"></asset:javascript>
<!-- Datamap -->
<asset:javascript src="./plugins/d3v3/index.js"></asset:javascript>
<asset:javascript src="./plugins/topojson/topojson.min.js"></asset:javascript>
<script src="./plugins/datamaps/datamaps.world.min.js"></script>
<!-- Morrisjs -->
<asset:javascript src="./plugins/raphael/raphael.min.js"></asset:javascript>
<script src="./plugins/morris/morris.min.js"></script>
<!-- Pignose Calender -->
<asset:javascript src="/plugins/moment/moment.min.js"></asset:javascript>
<script src="./plugins/pg-calendar/js/pignose.calendar.min.js"></script>
<!-- ChartistJS -->
<asset:javascript src="./plugins/chartist/js/chartist.min.js"></asset:javascript>
<asset:javascript src="./plugins/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js"></asset:javascript>
<asset:javascript src="./js/dashboard/dashboard-1.js"></asset:javascript>

</body>

</html>
