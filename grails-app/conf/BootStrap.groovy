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
            //Departments
            def d1 = new Department (
                name: "Baseball Operations" ).save()
            def d2 = new Department (
                name: "Business Development" ).save()
            def d3 = new Department (
                name: "Finance" ).save()
            def d4 = new Department (
                name: "Stadium Operations" ).save()
            def d5 = new Department (
                name: "Corporate Sales" ).save()
            def d6 = new Department (
                name: "Group Sales" ).save()
            def d7 = new Department (
                name: "Ticketing" ).save()
            def d8 = new Department (
                name: "President/Owners" ).save()

            //Locations
            def l1 = new Location (
                name: "Outfield Terrace Reserved",
                regularPrice: 16,
                premiumPrice: 21).save()
            def l2 = new Location (
                name: "Standing Room",
                regularPrice: 16,
                premiumPrice: 21 ).save()
            def l3 = new Location (
                name: "Pavillion Reserved",
                regularPrice: 20,
                premiumPrice: 25 ).save()
            def l4 = new Location (
                name: "Bleachers",
                regularPrice: 22,
                premiumPrice: 27 ).save()
            def l5 = new Location (
                name: "Infield Terrace Reserved",
                regularPrice: 25,
                premiumPrice: 30 ).save()
            def l6 = new Location (
                name: "Outfield Terrace Box",
                regularPrice: 27,
                premiumPrice: 32 ).save()
            def l7 = new Location (
                name: "Pavillion Box",
                regularPrice: 27,
                premiumPrice: 32 ).save()
             def l8 = new Location (
                name: "Infield Terrace Box",
                regularPrice: 32,
                premiumPrice: 37 ).save()
             def l9 = new Location (
                name: "Oufield Loge Box",
                regularPrice: 34,
                premiumPrice: 39 ).save()
            def l10 = new Location (
                name: "1st & 3rd Base Loge Box",
                regularPrice: 38,
                premiumPrice: 43 ).save()
            def l11 = new Location (
                name: "Outfield Field Box",
                regularPrice: 39,
                premiumPrice: 44 ).save()
            def l12 = new Location (
                name: "Casino Queen Porch",
                regularPrice: 42,
                premiumPrice: 47 ).save()
            def l13 = new Location (
                name: "Infield Redbird Club",
                regularPrice: 55,
                premiumPrice: 65 ).save()
            def l14 = new Location (
                name: "Home Redbird Club",
                regularPrice: 60,
                premiumPrice: 70 ).save()
             def l15 = new Location (
                name: "1st & 3rd Base Field Box",
                regularPrice: 60,
                premiumPrice: 70 ).save()
            def l16 = new Location (
                name: "Homer's Landing",
                regularPrice: 69,
                premiumPrice: 89,
                allInclusive: true).save()
             def l17 = new Location (
                name: "Leftfield Landing",
                regularPrice: 69,
                premiumPrice: 89,
                allInclusive: true ).save()
            def l18 = new Location (
                name: "Dugout Box",
                regularPrice: 80,
                premiumPrice: 90 ).save()
            def l19 = new Location (
                name: "Coca-Cola Areas",
                regularPrice: 88,
                premiumPrice: 108,
                allInclusive: true ).save()
            def l20 = new Location (
                name: "Infield Field Box",
                regularPrice: 89,
                premiumPrice: 99 ).save()
            def l21 = new Location (
                name: "Legends Club",
                regularPrice: 98,
                premiumPrice: 118,
                allInclusive: true ).save()
            def l22 = new Location (
                name: "Bank of America Club",
                regularPrice: 98,
                premiumPrice: 118,
                allInclusive: true ).save()
            def l23 = new Location (
                name: "Diamond Box",
                regularPrice: 105,
                premiumPrice: 115 ).save()
            def l24 = new Location (
                name: "Champions Club",
                regularPrice: 125,
                premiumPrice: 145,
                allInclusive: true ).save()
            def l25 = new Location (
                name: "Commisioner's Box",
                regularPrice: 200,
                premiumPrice: 200,
                allInclusive: true ).save()
              def l26 = new Location (
                name: "Cardinals Club",
                regularPrice: 250,
                premiumPrice: 250 ).save()



            def adminRole = new ShiroRole(name: "Administrator").save()

            def ticketBuyerRole = new ShiroRole(name: "TicketBuyer").save()
            def vpRole = new ShiroRole(name: "VicePresident").save()

        }

        




    }
    def destroy = {
}
}



