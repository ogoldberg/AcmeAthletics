
<%@ page import="com.oren.acmeathletes.Game" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'game.label', default: 'Game')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="game.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: gameInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="game.gameDate.label" default="Game Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${gameInstance?.gameDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="game.opponent.label" default="Opponent" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: gameInstance, field: "opponent")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="game.ticketsAvailable.label" default="Tickets Available" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${gameInstance?.ticketsAvailable}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="game.homeGame.label" default="Home Game" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${gameInstance?.homeGame}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="game.premiumDate.label" default="Premium Date" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${gameInstance?.premiumDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="game.soldOut.label" default="Sold Out" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${gameInstance?.soldOut}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="game.openingDay.label" default="Opening Day" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${gameInstance?.openingDay}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${gameInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
