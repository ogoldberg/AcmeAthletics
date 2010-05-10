package com.oren.acmeathletes

class Game {
        
    Date gameDate

    //TODO:Cubs games are premium price + $5
    String opponent

    //TODO:Away games are not available through this system
    Boolean homeGame = true

    Boolean ticketsAvailable = true

    //TODO:opening day means premium price
    Boolean openingDay = false
    //TODO: Premium dates include Fri-Sun games in May-October
    Boolean premiumDate
    Boolean soldOut = false



    String toString() {
       this.gameDate
    }    

    static mapping = {
        games sort: "gameDate"

    } 
    
    static constraints = {
        gameDate()
        opponent()
        ticketsAvailable()
        homeGame()
        premiumDate()
        soldOut()
        openingDay()
    }
}
