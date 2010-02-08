import org.apache.shiro.crypto.hash.Sha1Hash
import com.oren.acmeathletes.*
import com.oren.acmeathletes.auth.ShiroUser;
import com.oren.acmeathletes.auth.ShiroRole;

class BootStrap {


    def init = { servletContext ->
        def user = new ShiroUser(username: "admin", passwordHash: new Sha1Hash("admin").toHex())
        user.addToPermissions("*:*")
        user.save()
        if (!user.save()) {

            }

        development {
            def d1 = new Department (
                name: "Baseball Operations" ).save()

            def adminRole = new ShiroRole(name: "Administrator").save()

            def ticketBuyerRole = new ShiroRole(name: "TicketBuyer").save()
            def vpRole = new ShiroRole(name: "VicePresident").save()

        }

        




    }
    def destroy = {
}
}



