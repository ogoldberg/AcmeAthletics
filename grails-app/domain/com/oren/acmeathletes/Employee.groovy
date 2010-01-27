package com.oren.AcmeAthletics

class Employee {

    String firstName
    String lastName
    Department department


    static constraints = {
        firstName(blank:false)
        lastName(blank:false)
        department(blank:false)
    }
}
