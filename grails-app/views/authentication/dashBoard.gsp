<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="shoaib">

</head>

<body>

<div class="container-fluid mt-3">
    <div class="row">
        <g:if test="${user?.email == 'admin@localhost.local'}">
            <div class="col-lg-3 col-sm-6">
                <div class="card gradient-1">
                    <div class="card-body">
                        <h3 class="card-title text-white">Total Active User</h3>

                        <div class="d-inline-block">
                            <h2 class="text-white">${total}</h2>

                            <p class="text-white mb-0">${date}</p>
                            <g:link controller="user" action="index">View</g:link>
                        </div>
                        <span class="float-right display-5 opacity-5"><i class="fa fa-shopping-cart"></i></span>
                    </div>
                </div>
            </div>
        </g:if>


        <div class="col-lg-8 col-sm-6">
            <div class="card gradient-3">
                <div class="card-body">
                    <h3 class="card-title text-white">${user?.fullName}</h3>

                    <div class="d-inline-block">
                        <h2 class="text-white">${user?.mobileNo}</h2>

                        <p class="text-white mb-0">Age: ${utils.DateUtils.getYearsFromDate(user?.dateOfBirth)} Years</p>

                        <p class="text-white mb-0">Birth Date: ${utils.DateUtils.getFromattedDateStringFromDate(user?.dateOfBirth, "MMM d, yyyy")}</p>
                        <g:link controller="user" action="profile">View Details</g:link>
                    </div>
                    <span class="float-right display-5 opacity-5"><i class="fa fa-users"></i></span>
                </div>
            </div>
        </div>

    </div>

    %{--<div class="row">
        <div class="col-lg-3 col-sm-6">
            <div class="card">
                <div class="social-graph-wrapper widget-facebook">
                    <span class="s-icon"><i class="fa fa-facebook"></i></span>
                </div>

                <div class="row">
                    <div class="col-6 border-right">
                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                            <h4 class="m-1">89k</h4>

                            <p class="m-0">Friends</p>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                            <h4 class="m-1">119k</h4>

                            <p class="m-0">Followers</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-sm-6">
            <div class="card">
                <div class="social-graph-wrapper widget-linkedin">
                    <span class="s-icon"><i class="fa fa-linkedin"></i></span>
                </div>

                <div class="row">
                    <div class="col-6 border-right">
                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                            <h4 class="m-1">89k</h4>

                            <p class="m-0">Friends</p>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                            <h4 class="m-1">119k</h4>

                            <p class="m-0">Followers</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-sm-6">
            <div class="card">
                <div class="social-graph-wrapper widget-googleplus">
                    <span class="s-icon"><i class="fa fa-google-plus"></i></span>
                </div>

                <div class="row">
                    <div class="col-6 border-right">
                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                            <h4 class="m-1">89k</h4>

                            <p class="m-0">Friends</p>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                            <h4 class="m-1">119k</h4>

                            <p class="m-0">Followers</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-sm-6">
            <div class="card">
                <div class="social-graph-wrapper widget-twitter">
                    <span class="s-icon"><i class="fa fa-twitter"></i></span>
                </div>

                <div class="row">
                    <div class="col-6 border-right">
                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                            <h4 class="m-1">89k</h4>

                            <p class="m-0">Friends</p>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                            <h4 class="m-1">119k</h4>

                            <p class="m-0">Followers</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--}%
</div>

</body>
</html>

