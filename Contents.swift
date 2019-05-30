import UIKit

var str = "Hello, playground"


///Note :

/// Class refrence type  the value will replace ///


//Classes support inheritance; structures don't.
//Classes are reference types; structures are value types.



//class Details {
//
//    var name = "raghu"
//
//
//}
//var details1 =  Details()
//var details2 = details1
//
//
//details2.name = "raghuDattawad"
//print("class Values",details1.name)
//print("class values", details2.name)





//// Struct Value Type  the value cannot be changed ////


struct Details {

    var name = "raghu"


}
var details1 =  Details()
var details2 = details1


details2.name = "raghuDattawad"
print("struct details",details1.name)
print("struct details",details2.name)



/////////// 2nd Example ///////////////////



class Address {
    
    var fullAddress:String
    var  city:String
    
    
    init(getFullAddress:String, getCity:String) {
        
    
    
        self.fullAddress = getFullAddress
        self.city = getCity
    }
    
}

class Person{
    

    var name:String
    var address:Address


    init(getName:String, getPersonAddress:Address) {
        
        
        self.name = getName
        self.address = getPersonAddress
    }
}

var headQuatersAddress = Address(getFullAddress: "Basavangudi NR Colony", getCity:"Bangalore")

var personDetailsRaghu = Person(getName: "Raghu", getPersonAddress:headQuatersAddress )
var shinuDetails = Person(getName: "shinu", getPersonAddress:headQuatersAddress)


shinuDetails.address.fullAddress  = "Belgaum"

//// after changing the values //

// 1st //
print("First",personDetailsRaghu.address.fullAddress)

/// 2nd

print("second",shinuDetails.address.fullAddress)

//Note:
//Changing the address of headquarters will change it for both

//[Note: Change the Class as struct and the value will not change]


