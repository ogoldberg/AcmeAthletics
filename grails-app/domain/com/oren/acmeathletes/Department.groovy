package com.oren.acmeathletes

class Department {
    String name
    static hasMany=[employees:Employee]

    static constraints = {
    }
}
