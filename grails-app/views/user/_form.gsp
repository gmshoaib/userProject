<div class="form-group row">
    <label class="col-lg-4 col-form-label" for="firstName">First Name <span class="text-danger">*</span>
    </label>

    <div class="col-lg-6">
        <input type="text" class="form-control" required="true" id="firstName" name="firstName" placeholder="Enter a first name" value="${user?.firstName}">
    </div>
</div>

<div class="form-group row">
    <label class="col-lg-4 col-form-label" for="lastName">Last Name <span class="text-danger"></span>
    </label>

    <div class="col-lg-6">
        <input  type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter a last name" value="${user?.lastName}">
    </div>
</div>

<div class="form-group row">
    <label class="col-lg-4 col-form-label" for="address">Address<span class="text-danger"></span>
    </label>

    <div class="col-lg-6">
        <textarea type="text" class="form-control"  id="address" name="address" placeholder="Enter a address" value="${user?.address}"></textarea>
    </div>
</div>

<div class="form-group row">
    <label class="col-lg-4 col-form-label" for="mobileNo">Mobile Number<span class="text-danger">*</span>
    </label>

    <div class="col-lg-6">
        <input type="textArea" class="form-control" required="true"  id="mobileNo" name="mobileNo" placeholder="Enter a mobile number" value="${user?.mobileNo}">
    </div>
</div>

<div class="form-group row">
    <label class="col-lg-4 col-form-label" for="email">Email<span class="text-danger">*</span>
    </label>

    <div class="col-lg-6">
        <input type="email" class="form-control" required="true"  id="email" name="email" placeholder="Enter a email" value="${user?.email}">
    </div>
</div>



<div class="form-group row">
    <label class="col-lg-4 col-form-label" for="dateOfBirth">Date of Birth<span class="text-danger">*</span>
    </label>

    <div class="col-lg-6">
        <input type="date" required="true" class="form-control" id="dateOfBirth" name="dateOfBirth">
    </div>
</div>

<div class="form-group row">
    <label class="col-lg-4 col-form-label" for="passWord">PassWord<span class="text-danger">*</span>
    </label>

    <div class="col-lg-6">
        <input type="password" class="form-control" required="true" id="passWord" name="passWord" placeholder="Enter a passWord">
    </div>
</div>