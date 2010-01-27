package com.oren.acmeathletes

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
