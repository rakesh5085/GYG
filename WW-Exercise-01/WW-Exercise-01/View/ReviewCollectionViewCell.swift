//
//  ReviewCollectionViewCell.swift
//  WW-Exercise-01
//
//  Created by Rakesh Kumar on 2019-06-19.

import UIKit

class ReviewCollectionViewCell: UICollectionViewCell {
    
    let profileImageButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 18
        button.clipsToBounds = true
        button.setImage(UIImage(named: "Profile"), for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
//    let authorLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = UIColor.darkGray
//        label.text = "Bob Lee"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.lightGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "30000 miles"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let messageLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "$40/hour"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
    }
    
    func addViews() {
        backgroundColor = UIColor.black
        
        addSubview(profileImageButton)
        //addSubview(authorLabel)
        addSubview(titleLabel)
        addSubview(messageLabel)

        profileImageButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        profileImageButton.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        profileImageButton.heightAnchor.constraint(equalToConstant: 36).isActive = true
        profileImageButton.widthAnchor.constraint(equalToConstant: 36).isActive = true
        
        titleLabel.leftAnchor.constraint(equalTo: profileImageButton.leftAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: profileImageButton.centerYAnchor, constant: 8).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 300)
        
        messageLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        messageLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
