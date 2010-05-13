
<%@ page import="com.oren.acmeathletes.TicketRequest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ticketRequest.label', default: 'TicketRequest')}" />
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
                            <td valign="top" class="name"><g:message code="ticketRequest.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.requestType.label" default="Request Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "requestType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.status.label" default="Status" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "status")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.reasonForDecline.label" default="Reason For Decline" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "reasonForDecline")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.employee.label" default="Employee" /></td>
                            
                            <td valign="top" class="value"><g:link controller="employee" action="show" id="${ticketRequestInstance?.employee?.id}">${ticketRequestInstance?.employee?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.department.label" default="Department" /></td>
                            
                            <td valign="top" class="value"><g:link controller="department" action="show" id="${ticketRequestInstance?.department?.id}">${ticketRequestInstance?.department?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.requestDate.label" default="Request Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${ticketRequestInstance?.requestDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.gameDate.label" default="Game Date" /></td>
                            
                            <td valign="top" class="value"><g:link controller="game" action="show" id="${ticketRequestInstance?.gameDate?.id}">${ticketRequestInstance?.gameDate?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.numberOfTicketsRequested.label" default="Number Of Tickets Requested" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "numberOfTicketsRequested")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.locationPref.label" default="Location Pref" /></td>
                            
                            <td valign="top" class="value"><g:link controller="location" action="show" id="${ticketRequestInstance?.locationPref?.id}">${ticketRequestInstance?.locationPref?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.ifRequestedLocationNotAvailable.label" default="If Requested Location Not Available" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "ifRequestedLocationNotAvailable")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.actualSeats.label" default="Actual Seats" /></td>
                            
                            <td valign="top" class="value"><g:link controller="location" action="show" id="${ticketRequestInstance?.actualSeats?.id}">${ticketRequestInstance?.actualSeats?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.ticketDelivery.label" default="Ticket Delivery" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "ticketDelivery")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.recipient.label" default="Recipient" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "recipient")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.vpApprovalDate.label" default="Vp Approval Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${ticketRequestInstance?.vpApprovalDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.category.label" default="Category" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "category")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.businessPurpose.label" default="Business Purpose" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "businessPurpose")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.amountDue.label" default="Amount Due" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "amountDue")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.totalAmountDue.label" default="Total Amount Due" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "totalAmountDue")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.creditCardType.label" default="Credit Card Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "creditCardType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.creditCardNumber.label" default="Credit Card Number" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "creditCardNumber")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.creditCardExpiration.label" default="Credit Card Expiration" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${ticketRequestInstance?.creditCardExpiration}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="ticketRequest.creditCardCode.label" default="Credit Card Code" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: ticketRequestInstance, field: "creditCardCode")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${ticketRequestInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
