import org.apache.shiro.crypto.hash.Sha1Hash

class BootStrap {


    def init = { servletContext ->
        def user = new ShiroUser(username: "user123", passwordHash: new Sha1Hash("password").toHex())
        user.addToPermissions("*:*")
        user.save()

        development {
            def d1 = new com.oren.acmeathletes.Department (
                name: "Baseball Operations" )

        }


    }
    def destroy = {
}
}



