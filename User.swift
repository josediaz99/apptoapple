//
//  User.swift
//  SplashPage
//
//  Created by Central States SER 06 on 8/7/19.
//  Copyright © 2019 CSApps. All rights reserved.
//

import Foundation
class User {
    let username : String
    let password : String
    var creditScore : Int
    let pin : Int
    let id : Int
    var creditView: String
    var maxLoan : Double
    var maxInstantLoan : Double
    var maxLeand : Double
    init(username: String, password: String){
        //a users information is saved
        self.password = password
        self.username = username
        //for now getting random credit score
        self.creditScore = Int.random(in: 300...850)
        self.pin = Int.random(in: 1000...9999)
        self.id = Int.random(in: 100000...999999)
        //for now getting random bank balance
        let dollars = Double(Int.random(in: 100...1000000))
        let cents = Double(Float.random(in: 0...1))
        self.maxLeand = dollars + cents
        if ( creditScore < 500){
            creditView = "Bad"
            maxLoan = 100.00
            maxInstantLoan = 10.00
        }
        else if ( creditScore < 700){
            self.creditView = "Good"
            self.maxLoan = 600.00
            self.maxInstantLoan = 100.00
        }
        else {
            self.creditView = "Great"
            self.maxLoan = 1000.00
            self.maxInstantLoan = 400.00
        }
    }
    
}

class Users{
    //array of users for now, until we figure out security using database
    var users : [String: String] = ["Jose" : "jose1"]
    //getting a current user
    static var currUser : User?
    
    func setCurrUser(Username: String, P: String){
        Users.currUser = User(username: Username, password: P)
        
    }
    
    func getCurrUser() -> User{
        return Users.currUser ?? User(username: "Sample", password: "Sample")
    }
    
    func setCurrUser(User: User){
        Users.currUser = User
        
    }
    
    
    
    
    
}
class Loan{
    static var loans = [Loan]()
    let amount : Double
    let APR : Int
    let lender : User
    //has borrower stores the lender and N  while its false and when its true it stores the borrower and Y
    var hasBorrower = ["N" : User.self]
    let fees : Double
    let startDate : Date
    let dueDate : Date
    let daysDue : Int
    init(amount: Int, APR : Int, daysDue: Int, lender : User){
        self.amount = Double(amount)
        self.APR = APR
        self.lender = lender
        self.fees = Double(amount) * 0.05
        self.startDate = Date()
        self.daysDue = daysDue
        //days time seconds for computer
        let time = Double(daysDue) * 86400.00
        self.dueDate = startDate.addingTimeInterval(time)
        //add yourself to the list of loans
        Loan.loans.append(self)
        
        
    }
    //searches list of loans and find the ones that match
    func searchLoan(amount: Int, APR : Int, daysDue: Int) ->[Loan]{
        var availableLoans = [Loan]()
        for loan in Loan.loans{
            if Int(loan.amount) >= amount && loan.APR >= APR && loan.daysDue >= daysDue{
                availableLoans.append(loan)
                
            }
            
        }
        
        return availableLoans
        
    }
    
    
    
}
