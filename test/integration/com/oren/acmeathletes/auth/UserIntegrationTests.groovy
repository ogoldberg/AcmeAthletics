package com.oren.acmeathletes.auth

import grails.test.*
import org.apache.shiro.crypto.hash.Sha1Hash

class UserIntegrationTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testValidUser() {
        def user = new ShiroUser(username: "admin", passwordHash: new Sha1Hash("admin").toHex())
        assertTrue(user.validate())
        assertNotNull(user.save())

    }
}
