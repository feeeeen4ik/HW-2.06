//
//  LogInViewController.swift
//  HW 2.06
//
//  Created by Феликс Антонович on 04.11.2024.
//

import UIKit

final class LogInViewController: UIViewController {
    
    @IBOutlet var welcomeOutlet: UILabel!
        
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeOutlet.text = "Welcome, " + userName
    }
    
    @IBAction func logOutButtonAction(){
        dismiss(animated: true)
    }
    
}
