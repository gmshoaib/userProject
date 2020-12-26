<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Data Table</h4>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered zero-configuration" id="table">
                            <thead>
                            <tr>
                                <th>SR No</th>
                                <th>Full Name</th>
                                <th>Mobile No</th>
                                <th>Email</th>
                                <th>Address</th>
                                <th>Age</th>
                                <th>Date of Birth</th>
                            </tr>
                            </thead>

                            <tbody id="myTable">
                            <g:each in="${userList}" status="i" var="user">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td>${i + 1}</td>
                                    <td>${user?.fullName}</td>
                                    <td>${user?.mobileNo}</td>
                                    <td>${user?.email}</td>
                                    <td>${user?.address}</td>
                                    <td>${utils.DateUtils.getYearsFromDate(user?.dateOfBirth)} Years</td>
                                    <td>${utils.DateUtils.getFromattedDateStringFromDate(user?.dateOfBirth, "MMM d, yyyy")}</td>
                                </tr>
                            </g:each>
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

