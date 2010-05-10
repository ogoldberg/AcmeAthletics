
<%@ page import="com.oren.acmeathletes.TicketRequest" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'ticketRequest.label', default: 'TicketRequest')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${ticketRequestInstance}">
            <div class="errors">
                <g:renderErrors bean="${ticketRequestInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${ticketRequestInstance?.id}" />
                <g:hiddenField name="version" value="${ticketRequestInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="requestType"><g:message code="ticketRequest.requestType.label" default="Request Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'requestType', 'errors')}">
                                    <g:select name="requestType" from="${ticketRequestInstance.constraints.requestType.inList}" value="${ticketRequestInstance?.requestType}" valueMessagePrefix="ticketRequest.requestType"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="status"><g:message code="ticketRequest.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'status', 'errors')}">
                                    <g:select name="status" from="${ticketRequestInstance.constraints.status.inList}" value="${ticketRequestInstance?.status}" valueMessagePrefix="ticketRequest.status"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="vpApprovalDate"><g:message code="ticketRequest.vpApprovalDate.label" default="Vp Approval Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'vpApprovalDate', 'errors')}">
                                    <g:datePicker name="vpApprovalDate" precision="day" value="${ticketRequestInstance?.vpApprovalDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="reasonForDecline"><g:message code="ticketRequest.reasonForDecline.label" default="Reason For Decline" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'reasonForDecline', 'errors')}">
                                    <g:textField name="reasonForDecline" value="${ticketRequestInstance?.reasonForDecline}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="employee"><g:message code="ticketRequest.employee.label" default="Employee" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'employee', 'errors')}">
                                    <g:select name="employee.id" from="${com.oren.acmeathletes.Employee.list()}" optionKey="id" value="${ticketRequestInstance?.employee?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="department"><g:message code="ticketRequest.department.label" default="Department" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'department', 'errors')}">
                                    <g:select name="department.id" from="${com.oren.acmeathletes.Department.list()}" optionKey="id" value="${ticketRequestInstance?.department?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="requestDate"><g:message code="ticketRequest.requestDate.label" default="Request Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'requestDate', 'errors')}">
                                    <g:datePicker name="requestDate" precision="day" value="${ticketRequestInstance?.requestDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="gameDate"><g:message code="ticketRequest.gameDate.label" default="Game Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'gameDate', 'errors')}">
                                    <g:select name="gameDate.id" from="${com.oren.acmeathletes.Game.list()}" optionKey="id" value="${ticketRequestInstance?.gameDate?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numberOfTicketsRequested"><g:message code="ticketRequest.numberOfTicketsRequested.label" default="Number Of Tickets Requested" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'numberOfTicketsRequested', 'errors')}">
                                    <g:textField name="numberOfTicketsRequested" value="${fieldValue(bean: ticketRequestInstance, field: 'numberOfTicketsRequested')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="locationPref"><g:message code="ticketRequest.locationPref.label" default="Location Pref" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'locationPref', 'errors')}">
                                    <g:select name="locationPref.id" from="${com.oren.acmeathletes.Location.list()}" optionKey="id" value="${ticketRequestInstance?.locationPref?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ifRequestedLocationNotAvailable"><g:message code="ticketRequest.ifRequestedLocationNotAvailable.label" default="If Requested Location Not Available" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'ifRequestedLocationNotAvailable', 'errors')}">
                                    <g:select name="ifRequestedLocationNotAvailable" from="${ticketRequestInstance.constraints.ifRequestedLocationNotAvailable.inList}" value="${ticketRequestInstance?.ifRequestedLocationNotAvailable}" valueMessagePrefix="ticketRequest.ifRequestedLocationNotAvailable"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="actualSeats"><g:message code="ticketRequest.actualSeats.label" default="Actual Seats" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'actualSeats', 'errors')}">
                                    <g:select name="actualSeats.id" from="${com.oren.acmeathletes.Location.list()}" optionKey="id" value="${ticketRequestInstance?.actualSeats?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="willCall"><g:message code="ticketRequest.willCall.label" default="Will Call" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'willCall', 'errors')}">
                                    <g:checkBox name="willCall" value="${ticketRequestInstance?.willCall}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="returnTicketToEmployee"><g:message code="ticketRequest.returnTicketToEmployee.label" default="Return Ticket To Employee" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'returnTicketToEmployee', 'errors')}">
                                    <g:checkBox name="returnTicketToEmployee" value="${ticketRequestInstance?.returnTicketToEmployee}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="recipient"><g:message code="ticketRequest.recipient.label" default="Recipient" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'recipient', 'errors')}">
                                    <g:textField name="recipient" value="${ticketRequestInstance?.recipient}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="category"><g:message code="ticketRequest.category.label" default="Category" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'category', 'errors')}">
                                    <g:select name="category" from="${ticketRequestInstance.constraints.category.inList}" value="${ticketRequestInstance?.category}" valueMessagePrefix="ticketRequest.category"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="businessPurpose"><g:message code="ticketRequest.businessPurpose.label" default="Business Purpose" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'businessPurpose', 'errors')}">
                                    <g:textField name="businessPurpose" value="${ticketRequestInstance?.businessPurpose}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="amountDue"><g:message code="ticketRequest.amountDue.label" default="Amount Due" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'amountDue', 'errors')}">
                                    <g:textField name="amountDue" value="${fieldValue(bean: ticketRequestInstance, field: 'amountDue')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="totalAmountDue"><g:message code="ticketRequest.totalAmountDue.label" default="Total Amount Due" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'totalAmountDue', 'errors')}">
                                    <g:textField name="totalAmountDue" value="${fieldValue(bean: ticketRequestInstance, field: 'totalAmountDue')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="creditCardType"><g:message code="ticketRequest.creditCardType.label" default="Credit Card Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'creditCardType', 'errors')}">
                                    <g:select name="creditCardType" from="${ticketRequestInstance.constraints.creditCardType.inList}" value="${ticketRequestInstance?.creditCardType}" valueMessagePrefix="ticketRequest.creditCardType"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="creditCardNumber"><g:message code="ticketRequest.creditCardNumber.label" default="Credit Card Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'creditCardNumber', 'errors')}">
                                    <g:textField name="creditCardNumber" value="${fieldValue(bean: ticketRequestInstance, field: 'creditCardNumber')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="creditCardExpiration"><g:message code="ticketRequest.creditCardExpiration.label" default="Credit Card Expiration" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'creditCardExpiration', 'errors')}">
                                    <g:datePicker name="creditCardExpiration" precision="day" value="${ticketRequestInstance?.creditCardExpiration}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="creditCardCode"><g:message code="ticketRequest.creditCardCode.label" default="Credit Card Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ticketRequestInstance, field: 'creditCardCode', 'errors')}">
                                    <g:textField name="creditCardCode" value="${fieldValue(bean: ticketRequestInstance, field: 'creditCardCode')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
