//
//  SignUpModelTF.swift
//  SearchMusicsAlbums
//
//  Created by Константин Евсюков on 03.11.2022.
//

import Foundation
import UIKit


enum TextFieldType: String {
    case firstName = "First Name"
    case secondName = "Second Name"
    case phone = "Phone"
    case email = "Email"
    case password = "Password"
}

class TextFieldView: UITextField {
    
    private let type: TextFieldType
    
    init(type: TextFieldType) {
        self.type = type
        super.init(frame: .zero)
        createTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension TextFieldView {
    
    func createTextField() {
        placeholder = type.rawValue
        clearButtonMode = .whileEditing
        font = .boldSystemFont(ofSize: 14)
        borderStyle = .roundedRect
        returnKeyType = .next
        
        switch type {
        case .firstName:
            keyboardType = .default
        case .secondName:
            keyboardType = .default
        case .phone:
            keyboardType = .namePhonePad
        case .email:
            keyboardType = .emailAddress
            returnKeyType = .done
            tag = 0
        case .password:
            keyboardType = .alphabet
            isSecureTextEntry = true
            tag = 1
        }
    }
}
