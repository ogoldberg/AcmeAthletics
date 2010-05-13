package com.oren.acmeathletes

import com.oren.acmeathletes.auth.*

class Employee extends ShiroUser{

    String firstName
    String lastName
    Department department
    String status
    String title
    String email
    Integer accountNumber
    
    String toString() {
        this.firstName + " " + this.lastName + ", " + accountNumber
    }

    static constraints = {
        firstName(blank:false)
        lastName(blank:false)
        accountNumber(size:6..6, unique:true, blank:false)
        department(blank:false)
        email(email:true)

    }
}
