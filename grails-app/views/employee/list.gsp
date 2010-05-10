
<%@ page import="com.oren.acmeathletes.Employee" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'employee.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="firstName" title="${message(code: 'employee.firstName.label', default: 'First Name')}" />
                        
                            <g:sortableColumn property="lastName" title="${message(code: 'employee.lastName.label', default: 'Last Name')}" />
                        
                            <g:sortableColumn property="accountNumber" title="${message(code: 'employee.accountNumber.label', default: 'Account Number')}" />
                        
                            <th><g:message code="employee.department.label" default="Department" /></th>
                   	    
                            <g:sortableColumn property="email" title="${message(code: 'employee.email.label', default: 'Email')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: employeeInstance, field: "firstName")}</td>
                        
                            <td>${fieldValue(bean: employeeInstance, field: "lastName")}</td>
                        
                            <td>${fieldValue(bean: employeeInstance, field: "accountNumber")}</td>
                        
                            <td>${fieldValue(bean: employeeInstance, field: "department")}</td>
                        
                            <td>${fieldValue(bean: employeeInstance, field: "email")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${employeeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
