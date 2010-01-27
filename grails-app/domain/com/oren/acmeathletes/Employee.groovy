package com.oren.acmeathletes

class Employee {

    String firstName
    String lastName
    Department department
    String status


    static constraints = {
        firstName(blank:false)
        lastName(blank:false)
        department(blank:false)
    }
}
