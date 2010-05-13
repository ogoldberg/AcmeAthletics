package com.oren.acmeathletes

class TicketRequest {
    String requestType
    Game game
    Integer numberOfTicketsRequested
    Location locationPref
    Location actualSeats
    Double amountDue
    Double totalAmountDue
    String ifRequestedLocationNotAvailable
    String ticketDelivery
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
        status(inList:["Waiting for Approval", "Approval Declined", "Waiting for Purchase", "Purchase Declined", "Purchased", "Canceled at employee's request"])        
        reasonForDecline()
        employee()
        department()
        requestDate()
        game()
        numberOfTicketsRequested()
        locationPref()
        ifRequestedLocationNotAvailable(inList:["Fill with best available", "Cancel Order"])
        actualSeats()
        ticketDelivery(inList:["Will Call", "Return Ticket to Employee"])
        recipient()
        vpApprovalDate()
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
