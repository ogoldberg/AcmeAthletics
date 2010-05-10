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
                name: "Baseball Operations",
                phone: "555-555-5555",
                vp: "Bob Jones").save()

            def d2 = new Department (
                name: "Business Development",
                phone: "555-555-5555",
                vp: "Bob Jones").save()
            def d3 = new Department (
                name: "Finance",
                phone: "555-555-5555",
                vp: "Bob Jones").save()
            def d4 = new Department (
                name: "Stadium Operations",
                phone: "555-555-5555",
                vp: "Bob Jones").save()
            def d5 = new Department (
                name: "Corporate Sales",
                phone: "555-555-5555",
                vp: "Bob Jones").save()
            def d6 = new Department (
                name: "Group Sales",
                phone: "555-555-5555",
                vp: "Bob Jones").save()
            def d7 = new Department (
                name: "Ticketing",
                phone: "555-555-5555",
                vp: "Bob Jones").save()
            def d8 = new Department (
                name: "President/Owners",
                phone: "555-555-5555",
                vp: "Bob Jones").save()

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

            //Games

            createDummyGame (
                 "5/11/2010 19:15:00 CDT",
                 "HOU")
              
            createDummyGame (
                "5/12/2010 19:15:00 CDT", "HOU")

            createDummyGame (
                 "5/13/2010 12:40:00 CDT",
                 "HOU")
            
            createDummyGame (
                 "5/17/2010 19:15:00 CDT",
                 "WSH")
                
            createDummyGame(
                 "5/18/2010 19:15:00 CDT",
                 "WSH")
               
            createDummyGame (
                 "5/19/2010 19:15:00 CDT",
                 "FLA")
               
            createDummyGame (
                 "5/20/2010 12:40:00 CDT",
                 "FLA")
               
            createDummyGame (
                 "5/21/2010 19:15:00 CDT",
                 "LAA")
                
            createDummyGame (
                 "5/22/2010 13:15:00 CDT",
                 "LAA")
               
            createDummyGame (
                 "5/23/2010 13:15:00 CDT",
                 "LAA")
                
            createDummyGame (
                 "5/31/2010 15:15:00 CDT",
                 "CIN")

            createDummyGame (
                 "6/1/2010 19:15:00 CDT",
                 "CIN")

            createDummyGame (
                 "6/2/2010 19:15:00 CDT",
                 "CIN")

            createDummyGame (
                 "6/4/2010 19:15:00 CDT",
                 "MIL")
            createDummyGame (
                 "6/5/2010 15:10:00 CDT",
                 "MIL")
             createDummyGame (
                 "6/6/2010 13:15:00 CDT",
                 "MIL")
             createDummyGame (
                 "6/14/2010 13:15:00 CDT",
                 "SEA")
             createDummyGame (
                 "6/15/2010 13:15:00 CDT",
                 "SEA")  
             createDummyGame (
                 "6/16/2010 13:15:00 CDT",
                 "SEA")  
             createDummyGame (
                 "6/18/2010 13:15:00 CDT",
                 "OAK")  
             createDummyGame (
                 "6/19/2010 13:15:00 CDT",
                 "OAK")  
             createDummyGame (
                 "6/20/2010 13:15:00 CDT",
                 "OAK")  
             createDummyGame (
                 "6/28/2010 13:15:00 CDT",
                 "ARI")  
             createDummyGame (
                 "6/29/2010 13:15:00 CDT",
                 "ARI")  
             createDummyGame (
                 "6/30/2010 13:15:00 CDT",
                 "ARI")  
             createDummyGame (
                 "7/1/2010 13:15:00 CDT",
                 "MIL")  
             createDummyGame (
                 "7/2/2010 13:15:00 CDT",
                 "MIL")  
             createDummyGame (
                 "7/3/2010 13:15:00 CDT",
                 "MIL")  
             createDummyGame (
                 "7/4/2010 13:15:00 CDT",
                 "MIL")  
             createDummyGame (
                 "7/15/2010 13:15:00 CDT",
                 "LAD")  
             createDummyGame (
                 "7/16/2010 13:15:00 CDT",
                 "LAD")  
             createDummyGame (
                 "7/17/2010 13:15:00 CDT",
                 "LAD")  
             createDummyGame (
                 "7/18/2010 13:15:00 CDT",
                 "LAD")  
             createDummyGame (
                 "7/19/2010 13:15:00 CDT",
                 "PHI")  
             createDummyGame (
                 "7/20/2010 13:15:00 CDT",
                 "PHI")  
             createDummyGame (
                 "7/21/2010 13:15:00 CDT",
                 "PHI")  
             createDummyGame (
                 "7/22/2010 13:15:00 CDT",
                 "PHI")  
             createDummyGame (
                 "7/30/2010 13:15:00 CDT",
                 "PIT")  
             createDummyGame (
                 "7/31/2010 13:15:00 CDT",
                 "PIT")  
             createDummyGame (
                 "8/1/2010 13:15:00 CDT",
                 "PIT")  
             createDummyGame (
                 "8/2/2010 13:15:00 CDT",
                 "HOU")  
             createDummyGame (
                 "8/3/2010 13:15:00 CDT",
                 "HOU")  
             createDummyGame (
                 "8/4/2010 13:15:00 CDT",
                 "HOU")  
             createDummyGame (
                 "8/13/2010 13:15:00 CDT",
                 "CHC")  
             createDummyGame (
                 "8/14/2010 13:15:00 CDT",
                 "CHC")  
             createDummyGame (
                 "8/15/2010 13:15:00 CDT",
                 "CHC")  
             createDummyGame (
                 "8/17/2010 13:15:00 CDT",
                 "MIL")  
             createDummyGame (
                 "8/18/2010 13:15:00 CDT",
                 "MIL")  
             createDummyGame (
                 "8/20/2010 13:15:00 CDT",
                 "SF")  
             createDummyGame (
                 "8/21/2010 13:15:00 CDT",
                 "SF")  
             createDummyGame (
                 "8/22/2010 13:15:00 CDT",
                 "SF")  
             createDummyGame (
                 "9/3/2010 13:15:00 CDT",
                 "CIN")  
             createDummyGame (
                 "9/4/2010 13:15:00 CDT",
                 "CIN")  
             createDummyGame (
                 "9/5/2010 13:15:00 CDT",
                 "CIN")  
             createDummyGame (
                 "9/13/2010 13:15:00 CDT",
                 "CHC")  
             createDummyGame (
                 "9/14/2010 13:15:00 CDT",
                 "CHC")  
             createDummyGame (
                 "9/15/2010 13:15:00 CDT",
                 "CHC")  
             createDummyGame (
                 "9/16/2010 13:15:00 CDT",
                 "SD")  
             createDummyGame (
                 "9/17/2010 13:15:00 CDT",
                 "SD")  
             createDummyGame (
                 "9/18/2010 13:15:00 CDT",
                 "SD")  
             createDummyGame (
                 "9/19/2010 13:15:00 CDT",
                 "SD")  



            def adminRole = new ShiroRole(name: "Administrator").save()

            def ticketBuyerRole = new ShiroRole(name: "TicketBuyer").save()
            def vpRole = new ShiroRole(name: "VicePresident").save()

        }

        




    }
    def destroy = {
    }
    def createDummyGame(dateString, opponent) {
        def date = new Date(dateString)
        def isPremium = false
        if (date.format("EEE")== "Fri" ||
            date.format("EEE") == "Sat" ||
            date.format("EEE") == "Sun"
        )
        {
            isPremium = true
        }


        def game = new Game(
            homeGame:true,
            ticketsAvailable: true,
            gameDate: dateString,
            opponent: opponent,
            openingDay: false,
            premiumDate: isPremium

        )
        if (!game.validate()) {
            println "Game didn't validate!"
            println game.errors.allErrors
        }
        else {game.save()}
        return game
    }

}



