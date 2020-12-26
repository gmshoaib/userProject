<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="shoaib" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
    %{--<div class="row page-titles mx-0">
        <div class="col p-md-0">
            <ol class="breadcrumb">
                --}%%{-- <li class="breadcrumb-item"><a href="${createLink(controller:'book', action: 'create')}">Add New Book</a></li>--}%%{--
                <li class="breadcrumb-item"><a href="${createLink(controller:'book', action: 'index')}">Book List</a></li>
            </ol>
        </div>
    </div>--}%
    <g:form class="form-horizontal two-column-form" method="post"  >
        <div class="box-body">
            <g:render template="form"/>
        </div>

        <div class="box-footer">
            <g:actionSubmit class="btn btn-primary" controller="user" action="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            <g:link action="index"><span class="btn btn-danger">Cancel</span></g:link>
        </div>
    </g:form>
    </body>
</html>
