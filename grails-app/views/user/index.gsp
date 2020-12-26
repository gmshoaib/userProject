<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="shoaib">
    <title>User Management System</title>
</head>

<body>

%{--<div class="row page-titles mx-0">
    <div class="col p-md-0">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="${createLink(controller:'book', action: 'create')}">Add New Book</a></li>
            --}%%{--<li class="breadcrumb-item"><a href="${createLink(controller:'book', action: 'index')}">Book List</a></li>--}%%{--
        </ol>
    </div>
</div>--}%



<div class="row">
    <div class="col-md-12">
        <div class="box box-primary">
            <div class="box-body">
                <g:render template="inner_list"/>
            </div>

        </div>
    </div>
</div>


<script>
    $(function () {
        $("#table").DataTable();
    });
</script>

</body>
</html>

