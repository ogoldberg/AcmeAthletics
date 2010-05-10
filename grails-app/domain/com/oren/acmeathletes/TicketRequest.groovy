package com.oren.acmeathletes

class TicketRequest {
    String requestType
    Game gameDate
    Integer numberOfTicketsRequested
    Location locationPref
    Location actualSeats
    Double amountDue
    Double totalAmountDue
    String ifRequestedLocationNotAvailable
    Boolean willCall = true
    Boolean returnTicketToEmployee = false
    String recipient
    String category
    String creditCardType
    Integer creditCardNumber
    Date creditCardExpiration
    Integer creditCardCode
    Employee employee
    Department department
    Date requestDate
    Date vpApprovalDate
    String status
    String reasonForDecline
    String businessPurpose

    static mapping = {
        ticketRequests sort: "gameDate"
    }


    static constraints = {
        requestType(inList:["Paid", "Comp"])
        status(inList:["Pending", "Approved", "Declined", "Canceled at employee's request"])
        vpApprovalDate()
        reasonForDecline()
        employee()
        department()
        requestDate()
        gameDate()
        numberOfTicketsRequested()
        locationPref()
        ifRequestedLocationNotAvailable(inList:["Fill with best available", "Cancel Order"])
        actualSeats()
        willCall()
        returnTicketToEmployee()
        recipient()
        category(inList:["Employee", "VIP", "Business Client", "Prospective Client", "Charitable", "Other"])
        businessPurpose()
        amountDue()
        totalAmountDue()
        creditCardType(inList:["Visa", "MasterCard", "Discover", "AmEx"])
        creditCardNumber(creditCard:true)
        creditCardExpiration()
        creditCardCode()
        

    }
}
