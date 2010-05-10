
<%@ page import="com.oren.acmeathletes.Game" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'game.label', default: 'Game')}" />
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
            <g:hasErrors bean="${gameInstance}">
            <div class="errors">
                <g:renderErrors bean="${gameInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="gameDate"><g:message code="game.gameDate.label" default="Game Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gameInstance, field: 'gameDate', 'errors')}">
                                    <g:datePicker name="gameDate" precision="day" value="${gameInstance?.gameDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="opponent"><g:message code="game.opponent.label" default="Opponent" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gameInstance, field: 'opponent', 'errors')}">
                                    <g:textField name="opponent" value="${gameInstance?.opponent}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ticketsAvailable"><g:message code="game.ticketsAvailable.label" default="Tickets Available" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gameInstance, field: 'ticketsAvailable', 'errors')}">
                                    <g:checkBox name="ticketsAvailable" value="${gameInstance?.ticketsAvailable}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="homeGame"><g:message code="game.homeGame.label" default="Home Game" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gameInstance, field: 'homeGame', 'errors')}">
                                    <g:checkBox name="homeGame" value="${gameInstance?.homeGame}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="premiumDate"><g:message code="game.premiumDate.label" default="Premium Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gameInstance, field: 'premiumDate', 'errors')}">
                                    <g:checkBox name="premiumDate" value="${gameInstance?.premiumDate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="soldOut"><g:message code="game.soldOut.label" default="Sold Out" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gameInstance, field: 'soldOut', 'errors')}">
                                    <g:checkBox name="soldOut" value="${gameInstance?.soldOut}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="openingDay"><g:message code="game.openingDay.label" default="Opening Day" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: gameInstance, field: 'openingDay', 'errors')}">
                                    <g:checkBox name="openingDay" value="${gameInstance?.openingDay}" />
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
