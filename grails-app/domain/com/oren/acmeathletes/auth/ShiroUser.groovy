package com.oren.acmeathletes.auth

class ShiroUser {
    String username
    String passwordHash
    
    String toString() {
        this.username
    }
    
    static hasMany = [ roles: ShiroRole, permissions: String ]

    static constraints = {
        username(nullable: false, blank: false)
    }
}
