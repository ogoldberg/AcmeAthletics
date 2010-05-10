
<%@ page import="com.oren.acmeathletes.Location" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
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
            <g:hasErrors bean="${locationInstance}">
            <div class="errors">
                <g:renderErrors bean="${locationInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="seatsAvailable"><g:message code="location.seatsAvailable.label" default="Seats Available" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'seatsAvailable', 'errors')}">
                                    <g:checkBox name="seatsAvailable" value="${locationInstance?.seatsAvailable}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="location.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${locationInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="premiumPrice"><g:message code="location.premiumPrice.label" default="Premium Price" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'premiumPrice', 'errors')}">
                                    <g:textField name="premiumPrice" value="${fieldValue(bean: locationInstance, field: 'premiumPrice')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="allInclusive"><g:message code="location.allInclusive.label" default="All Inclusive" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'allInclusive', 'errors')}">
                                    <g:checkBox name="allInclusive" value="${locationInstance?.allInclusive}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="regularPrice"><g:message code="location.regularPrice.label" default="Regular Price" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: locationInstance, field: 'regularPrice', 'errors')}">
                                    <g:textField name="regularPrice" value="${fieldValue(bean: locationInstance, field: 'regularPrice')}" />
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
