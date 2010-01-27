package com.oren.acmeathletes

class Employee {

    String firstName
    String lastName
    Department department
    String status
    String email


    static constraints = {
        firstName(blank:false)
        lastName(blank:false)
        department(blank:false)
        email(email:true)

    }
}
