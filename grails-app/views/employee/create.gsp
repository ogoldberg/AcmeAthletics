
<%@ page import="com.oren.acmeathletes.Employee" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${employeeInstance}">
            <div class="errors">
                <g:renderErrors bean="${employeeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="firstName"><g:message code="employee.firstName.label" default="First Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: employeeInstance, field: 'firstName', 'errors')}">
                                    <g:textField name="firstName" value="${employeeInstance?.firstName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastName"><g:message code="employee.lastName.label" default="Last Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: employeeInstance, field: 'lastName', 'errors')}">
                                    <g:textField name="lastName" value="${employeeInstance?.lastName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="accountNumber"><g:message code="employee.accountNumber.label" default="Account Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: employeeInstance, field: 'accountNumber', 'errors')}">
                                    <g:textField name="accountNumber" value="${fieldValue(bean: employeeInstance, field: 'accountNumber')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="department"><g:message code="employee.department.label" default="Department" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: employeeInstance, field: 'department', 'errors')}">
                                    <g:select name="department.id" from="${com.oren.acmeathletes.Department.list()}" optionKey="id" value="${employeeInstance?.department?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="employee.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: employeeInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${employeeInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="employee.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: employeeInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${employeeInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status"><g:message code="employee.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: employeeInstance, field: 'status', 'errors')}">
                                    <g:textField name="status" value="${employeeInstance?.status}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
