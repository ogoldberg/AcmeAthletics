class BootStrap {


    def init = { servletContext ->
        development {
            def d1 = new com.oren.AcmeAthletics.Department (
                name: "Baseball Operations" )

        }
    }
    def destroy = {
    }
}

