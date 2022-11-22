//
//  SignUpModel.swift
//  SearchMusicsAlbums
//
//  Created by Константин Евсюков on 03.11.2022.
//

import Foundation
import UIKit

enum ModelLabel: String {
    case login = "Registration"
    case firstName = "First Name"
    case secondName = "Second Name"
    case age = "Age"
    case phone = "Phone"
    case email = "Email"
    case password = "Password"
}

class ModelLabelType: UILabel {
    
    private let type: ModelLabel
    
    init(type: ModelLabel) {
        self.type = type
        super.init(frame: .zero)
        createLabels()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ModelLabelType {
    
    func createLabels() {
        text = type.rawValue
        font = .systemFont(ofSize: 14)
        textColor = .black
        
        if type == .login {
            font = .boldSystemFont(ofSize: 24)
        }
    }
}
