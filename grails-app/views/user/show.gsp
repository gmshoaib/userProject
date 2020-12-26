<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="shoaib" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User Show')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="form-group row">
        <label class="col-lg-2 col-form-label">First Name:</label>
        <div class="col-lg-6">
            <label class="col-lg-4 col-form-label" style="color: black"> ${user?.firstName}</label>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-lg-2 col-form-label">Last Name:</label>
        <div class="col-lg-6">
            <label class="col-lg-4 col-form-label" style="color: black"> ${user?.lastName}</label>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-lg-2 col-form-label">Address:</label>
        <div class="col-lg-6">
            <label class="col-lg-4 col-form-label" style="color: black"> ${user?.address}</label>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-lg-2 col-form-label">Phone:</label>
        <div class="col-lg-6">
            <label class="col-lg-4 col-form-label" style="color: black"> ${user?.mobileNo}</label>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-lg-2 col-form-label">Email:</label>
        <div class="col-lg-6">
            <label class="col-lg-4 col-form-label" style="color: black"> ${user?.email}</label>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-lg-2 col-form-label">Age:</label>
        <div class="col-lg-6">
            <label class="col-lg-4 col-form-label" style="color: black"> ${utils.DateUtils.getYearsFromDate(user?.dateOfBirth)} Years</label>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-lg-2 col-form-label">Birth Date:</label>
        <div class="col-lg-6">
            <label class="col-lg-4 col-form-label" style="color: black"> ${utils.DateUtils.getFromattedDateStringFromDate(user?.dateOfBirth, "MMM d, yyyy")}</label>
        </div>
    </div>
    </body>
</html>
