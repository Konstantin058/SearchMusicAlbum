//
//  2.swift
//  SearchMusicsAlbums
//
//  Created by Константин Евсюков on 02.11.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    private let firstNameLabel = ModelLabelType(type: .firstName)
    private let secondNameLabel = ModelLabelType(type: .secondName)
    private let ageLabel = ModelLabelType(type: .age)
    private let phoneLabel = ModelLabelType(type: .phone)
    private let emailLabel = ModelLabelType(type: .email)
    private let passwordLabel = ModelLabelType(type: .password)
    
    private var stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
        setModel()
    }
    
    private func setupViews() {
        title = "Active User"
        view.backgroundColor = .white
        
        stackView = UIStackView(arrangedSubviews: [firstNameLabel,
                                                   secondNameLabel,
                                                   ageLabel,
                                                   phoneLabel,
                                                   emailLabel,
                                                   passwordLabel],
                                axis: .vertical,
                                spacing: 10,
                                distribution: .fillProportionally)
        
        view.addSubview(stackView)
    }
    
    private func setModel() {
        guard let activeUser = DataBase.shared.activeUser else { return }
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = " dd.MM.yyyy"
        let dateString = dateFormater.string(from: activeUser.age)
        
        firstNameLabel.text = activeUser.firstName
        secondNameLabel.text = activeUser.secondName
        phoneLabel.text = activeUser.phone
        emailLabel.text = activeUser.email
        passwordLabel.text = activeUser.password
        ageLabel.text = dateString
    }
}

//MARK: SetConstraints
extension UserInfoViewController {
    
    private func setConstraints() {
        
        [firstNameLabel, secondNameLabel, ageLabel, phoneLabel, emailLabel, passwordLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
