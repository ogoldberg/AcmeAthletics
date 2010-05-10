
<%@ page import="com.oren.acmeathletes.Location" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'location.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="seatsAvailable" title="${message(code: 'location.seatsAvailable.label', default: 'Seats Available')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'location.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="premiumPrice" title="${message(code: 'location.premiumPrice.label', default: 'Premium Price')}" />
                        
                            <g:sortableColumn property="allInclusive" title="${message(code: 'location.allInclusive.label', default: 'All Inclusive')}" />
                        
                            <g:sortableColumn property="regularPrice" title="${message(code: 'location.regularPrice.label', default: 'Regular Price')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${locationInstanceList}" status="i" var="locationInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatBoolean boolean="${locationInstance.seatsAvailable}" /></td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "premiumPrice")}</td>
                        
                            <td><g:formatBoolean boolean="${locationInstance.allInclusive}" /></td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "regularPrice")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${locationInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
