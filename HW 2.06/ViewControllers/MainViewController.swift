//
//  ViewController.swift
//  HW 2.06
//
//  Created by Феликс Антонович on 04.11.2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var userNameOutlet: UITextField!
    @IBOutlet var passwordOutlet: UITextField!
    
    let userData = User.getUserData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let LogInVC = segue.destination as? LogInViewController else {
            return
        }
        LogInVC.userName = userData.userName
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameOutlet.text == userData.userName, passwordOutlet.text == userData.userPassword else {
            showAlert(
                withTitle: "Invalid login or password",
                andMassage: "Please, enter correct login and password") {
                    self.passwordOutlet.text = ""
                }
            return false
        }
        return true
    }
    
    
    @IBAction func ForgotUserNameButtonAction() {
        showAlert(withTitle: "Oops!", andMassage: "Your name is \(userData.userName)😁")
    }
    
    @IBAction func ForgotPasswordButtonAction() {
        showAlert(withTitle: "Oops!", andMassage: "Your password \(userData.userPassword)😁")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameOutlet.text = ""
        passwordOutlet.text = ""
    }
    
    private func showAlert(withTitle title: String, andMassage massage: String, completion:(() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

