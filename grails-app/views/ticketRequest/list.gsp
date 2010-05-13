
<%@ page import="com.oren.acmeathletes.TicketRequest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ticketRequest.label', default: 'TicketRequest')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'ticketRequest.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="requestType" title="${message(code: 'ticketRequest.requestType.label', default: 'Request Type')}" />
                        
                            <g:sortableColumn property="status" title="${message(code: 'ticketRequest.status.label', default: 'Status')}" />
                        
                            <g:sortableColumn property="reasonForDecline" title="${message(code: 'ticketRequest.reasonForDecline.label', default: 'Reason For Decline')}" />
                        
                            <th><g:message code="ticketRequest.employee.label" default="Employee" /></th>
                   	    
                            <th><g:message code="ticketRequest.department.label" default="Department" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${ticketRequestInstanceList}" status="i" var="ticketRequestInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${ticketRequestInstance.id}">${fieldValue(bean: ticketRequestInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: ticketRequestInstance, field: "requestType")}</td>
                        
                            <td>${fieldValue(bean: ticketRequestInstance, field: "status")}</td>
                        
                            <td>${fieldValue(bean: ticketRequestInstance, field: "reasonForDecline")}</td>
                        
                            <td>${fieldValue(bean: ticketRequestInstance, field: "employee")}</td>
                        
                            <td>${fieldValue(bean: ticketRequestInstance, field: "department")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${ticketRequestInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
