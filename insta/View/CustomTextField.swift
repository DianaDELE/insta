//
//  FeedCell.swift
//  insta
//
//  Created by Karen De Luna on 04/11/21.
//
//este no se guardo no sé
import UIKit

class CustomTextField: UITextField {
    //aquí colocamos los parámetros de customtextfield
    init(placeholder: String){
        super.init(frame: .zero)

        //espacio entre el borde y texto, 12 pixeles entre borde y texto
        let spacer = UIView()
        spacer.setDimensions(height: 50, width= 12)
        leftView = spacer
        leftViewMode = .always

        borderStyle = .none
        textColor = .white
        keyboardAppearance = .dark
        keyboardType = .emailAddress
        //para la transparencia
        backgroundColor = UIColor(white:1, alpha: 0.1)
        setHeight(50)
        attributedPlaceholder = NSAttributedString(string: placeholder,attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])

    }

    required init?(coder: NSCoder){
        fatalError("NO SE IMPLEMENTO")
    }
}