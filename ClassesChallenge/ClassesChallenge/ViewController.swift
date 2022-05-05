//
//  ViewController.swift
//  ClassesChallenge
//
//  Created by Robert Englund
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var favoriteColorField: UITextField!

    @IBOutlet weak var myTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: - MVP
        let student = Student()
        myTextView.text = "First Name: \(student.firstName)\n" + "Last Name: \(student.lastName)\n"
        
        // TODO: - Stretch #1
                          + "Id: \(student.idNumber)\n" +
                          "Favorite Color: \(student.favoriteColor)"
        
    }

    @IBAction func onCustomButtonPressed(_ sender: UIButton) {

        let first = firstNameField.text ?? ""
        let last = lastNameField.text ?? ""
        let id = Int(idField.text ?? "") ?? 0
        let color = favoriteColorField.text ?? ""

        // TODO: - Stretch #2
        let student = Student(  withFirstName: first, last: last, id: id, color: color)
        myTextView.text =   "First Name: \(student.firstName)\n" + "Last Name: \(student.lastName)\n" + "Id: \(student.idNumber)\n" + "Favorite Color: \(student.favoriteColor)\n"

        firstNameField.resignFirstResponder()
        lastNameField.resignFirstResponder()
        idField.resignFirstResponder()
        favoriteColorField.resignFirstResponder()
    }

    @IBAction func onHelloButtonPressed(_ sender: UIButton) {
        // TODO: - Stretch #3
        let student = Student()
        myTextView.text = student.sayHello()
    }

}

