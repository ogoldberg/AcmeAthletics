package com.oren.acmeathletes

class Department {
    String name
    String phone
    static hasMany=[employees:Employee]

    String toString() {
        this.name
    }

    static constraints = {
        name(nullable:false, blank:false)
        phone()
        employees(blank:true) 
    }
}
