package com.oren.acmeathletes

class TicketRequest {
    Game gameDate
    Integer numTickets
    String sectionRequested
    String actualSeats
    Number amountDue
    Number totalAmountDue
    Boolean ifNoBestAvail
    Boolean willCall
    String recipient
    String creditCardType
    Number creditCardNumber
    Date creditCardExpiration
    Integer creditCardCode
    Employee employee
    Integer accountNumber
    Department department
    Date requestDate
    Boolean approved
    String reason




    static constraints = {
        creditCardNumber(creditCard:true)
    }
}
