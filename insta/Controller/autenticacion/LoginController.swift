//
//  LoginController.swift
//  insta
//
//  Created by Karen De Luna on 11/11/21.
//

import UIKit

class LoginController: UIViewController{
    //MARK: - Properties
    
    private let iconImage: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "icons8-mapamundi-64.png"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    private let emailTextField: UITextField = {
        let tf = CustomTextField(placeholder: "EMAIL")
        tf.keyboardType = .emailAddress
        return tf
    }()
    
    private let passwordTextField: UITextField = {
        let tf = CustomTextField(placeholder: "PASSWORD")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("LOG IN", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemPurple
        button.layer.cornerRadius = 5
        button.setHeight(50) 
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()


    private let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.attributedTitle(firstPart: "Olvido su password?  ", secondPart: "Ayuda para entrar a mi cuenta" )
        return button
    }()
    
    
    private let dontHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.attributedTitle(firstPart: "No tienes una cuenta?  ", secondPart: "Entrar" )
        return button
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    //MARK: - Helpers
    func configureUI(){
        view.backgroundColor = .white
        //oculta la barra de navegaciòn
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemCyan.cgColor, UIColor.systemBlue.cgColor]
        //empieza hasta arriba 0, termina hasta abajo 1
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.setDimensions(height: 80, width: 120)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
        
        
        //bloque de contraseña e email
        let stack = UIStackView(arrangedSubviews: [emailTextField,passwordTextField, loginButton, forgotPasswordButton])
        stack.axis = .vertical
        stack.spacing = 20
        
        view.addSubview(stack)
        stack.anchor(top: iconImage.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 32, paddingLeft: 32,paddingRight: 32)

        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.centerX(inView: view)
        //safeAreaLayoutGuide es para que corra en cualquier dispositivo sin importar el tamaño de la pantalla, ejemplo iphone 7 y iphone X
        dontHaveAccountButton.anchor(button: view.safeAreaLayoutGuide.bottomAnchor)
    }
}
