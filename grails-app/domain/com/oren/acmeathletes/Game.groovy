package com.oren.acmeathletes

class Game {
    def scaffold = true
    
    Date gameDate
    Date gameTime

    //TODO:Cubs games are premium price + $5
    String opponent

    //TODO:Away games are not available through this system
    Boolean homeGame

    Boolean ticketsAvailable

    //TODO:opening day means premium price
    Boolean openingDay
    //TODO: Premium dates include Fri-Sun games in May-October






    static constraints = {
    }
}
