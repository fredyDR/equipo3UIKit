//
//  SignUpViewController.swift
//  UIKitApp
//
//  Created by Laura Anguiano on 15/09/22.
//

import UIKit

final class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var inputRegister: PrimaryTextField!
    @IBOutlet weak var inputRegister2: PrimaryTextField!
    @IBOutlet weak var inputRegister3: PrimaryTextField!
    @IBOutlet weak var btnRegister: PrimaryButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnRegister.backgroundColor = .gray
    }
    
    // MARK: - IBActions
    @IBAction func didTapSignUp(_ sender: Any) {
        validRegisterData()
    }
    
    @IBAction func didTapSignIn(_ sender: Any) {
        
    }
    
    func validRegisterData(){
        if inputRegister.validEmpty(), inputRegister2.validEmpty(), inputRegister3.validEmpty() {
            /*Mandar animación de que no ha ingresado ningun valor*/
            btnRegister.backgroundColor = .gray
        } else {
            /*Valida priemro correo*/
            if inputRegister.validEmail() {
                /*Valida después pass*/
                if inputRegister3.validPass() {
                    /*Pasar a siguiente ViewController*/
                    btnRegister.setupViewStyle()
                } else {
                    /*Mandar msj de que no es valida la contraseña*/
                }
            } else {
                /*Mandar msj de que no es valido el email*/
            }
        }
    }
}

// MARK: - Static Methods
extension SignUpViewController {
    static func getViewController() -> SignUpViewController {
        let storyboard = UIStoryboard(name: "SignUp", bundle: nil)
        guard let signUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController else {
            fatalError("ViewController must be of type SignUpViewController")
        }
        return signUpViewController
    }
}
