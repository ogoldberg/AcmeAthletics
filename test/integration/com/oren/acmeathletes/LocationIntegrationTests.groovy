package com.oren.acmeathletes

import grails.test.*

class LocationIntegrationTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testNewLocation() {
        def l1 = new Location (
                name: "Outfield Terrace Reserved",
                regularPrice: 16,
                premiumPrice: 20,
                allInclusive: true)

        assertTrue l1.validate()
        assertTrue l1.seatsAvailable
        assertTrue l1.allInclusive

    }
}
