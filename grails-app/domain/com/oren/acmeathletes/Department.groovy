package com.oren.acmeathletes

class Department {
    String name
    String phone
    String vp
    static hasMany=[employees:Employee]

    String toString {
        this.name
    }

    static constraints = {
        name(nullable:false, blank:false)
        phone()
        vp()
        employees(blank:true) 
    }
}
