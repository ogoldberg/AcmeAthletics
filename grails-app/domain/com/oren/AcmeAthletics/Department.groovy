package com.oren.AcmeAthletics

class Department {
    String name
    static hasMany=[employees:Employee]

    static constraints = {
    }
}
