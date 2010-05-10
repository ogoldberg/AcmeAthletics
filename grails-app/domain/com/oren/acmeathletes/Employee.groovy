package com.oren.acmeathletes

class Employee {

    String firstName
    String lastName
    Department department
    String status
    String title
    String email
    Integer accountNumber

    static constraints = {
        firstName(blank:false)
        lastName(blank:false)
        accountNumber(size:6..6, unique:true, blank:false)
        department(blank:false)
        email(email:true)

    }
}
