//
//  Student.swift
//  ClassesChallenge
//
//  Created by Robert Englund
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//


// MARK: - MVP

class Student {
    
    var firstName = "Dominic"
    var lastName = "Polcyn"
    var idNumber: Int
    var favoriteColor: String
    
    init() {
        //self.firstName = "Dominic"
        //self.lastName = "Polcyn"
        self.idNumber = 222609
        self.favoriteColor = "Pink"
    }
    
    convenience init(withFirstName first: String, last: String, id: Int, color: String) {
        self.init()
        
        self.firstName = first
        self.lastName = last
        self.idNumber = id
        self.favoriteColor = color
        
    }
    
    func sayHello() -> String {
        return "Hello " + firstName + lastName + ", your id number is 222609"
        
    }

    
    
    
}

    
    
    // MARK: - Stretch #1
    


    // MARK: - Stretch #2
    


    // MARK: - Stretch #3
    

// MARK: - End MVP Here With }



