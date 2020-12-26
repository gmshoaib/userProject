<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="shoaib" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'Change Password')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

    <g:form class="form-horizontal two-column-form" method="post"  >
        <g:if test="${flash.error}">
            <div class="alert">
                <span class="closebtn" onclick="this.parentElement.style.display = 'none';">&times;</span>
                ${flash.error}
            </div>
        </g:if>
        <div class="box-body">
            <g:render template="formPassword"/>
        </div>

        <div class="box-footer">
            <g:actionSubmit class="btn btn-primary" controller="user" action="savePassword" value="${message(code: 'default.button.update.label', default: 'Update')}" />
        </div>
    </g:form>
    </body>
</html>
