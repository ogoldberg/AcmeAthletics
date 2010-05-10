
<%@ page import="com.oren.acmeathletes.Game" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'game.label', default: 'Game')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'game.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="gameDate" title="${message(code: 'game.gameDate.label', default: 'Game Date')}" />
                        
                            <g:sortableColumn property="opponent" title="${message(code: 'game.opponent.label', default: 'Opponent')}" />
                        
                            <g:sortableColumn property="ticketsAvailable" title="${message(code: 'game.ticketsAvailable.label', default: 'Tickets Available')}" />
                        
                            <g:sortableColumn property="homeGame" title="${message(code: 'game.homeGame.label', default: 'Home Game')}" />
                        
                            <g:sortableColumn property="premiumDate" title="${message(code: 'game.premiumDate.label', default: 'Premium Date')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${gameInstanceList}" status="i" var="gameInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${gameInstance.id}">${fieldValue(bean: gameInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${gameInstance.gameDate}" /></td>
                        
                            <td>${fieldValue(bean: gameInstance, field: "opponent")}</td>
                        
                            <td><g:formatBoolean boolean="${gameInstance.ticketsAvailable}" /></td>
                        
                            <td><g:formatBoolean boolean="${gameInstance.homeGame}" /></td>
                        
                            <td><g:formatBoolean boolean="${gameInstance.premiumDate}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${gameInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
