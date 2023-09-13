//
//  LoginView.swift
//  LogingXIBs
//
//  Created by Sindhu K on 13/09/23.
//

import UIKit

class LoginView: UIViewController {
    
    
    @IBOutlet weak var forgotpasswordButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            // Disable the login button initially
            loginButton.isEnabled = false
            
            // Add actions for text field editing events to enable/disable the login button
            usernameTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
            passwordTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
            
            // Add action for the login button
            loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        }
    @objc func textFieldDidChange() {
            // Enable the login button only if both fields are not empty
            let isUsernameEmpty = usernameTextField.text?.isEmpty ?? true
            let isPasswordEmpty = passwordTextField.text?.isEmpty ?? true
            loginButton.isEnabled = !isUsernameEmpty && !isPasswordEmpty
        }
        
        @objc func loginButtonTapped() {
            // Check if both fields have values
            guard let username = usernameTextField.text, !username.isEmpty,
                  let password = passwordTextField.text, !password.isEmpty else {
                // Handle the case when either field is empty
                print("Please enter both username and password.")
                return
            }
            
            // If both fields have values, print them in the console
            print("Username: \(username)")
            print("Password: \(password)")
        }
        
        override func loadView() {
            if let customView = Bundle.main.loadNibNamed("LoginView", owner: self, options: nil)?.first as? UIView {
                view = customView
            }
        }
    }
