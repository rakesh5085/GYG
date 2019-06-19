//
//  ReviewCell.swift
import UIKit

final class ReviewCell: UICollectionViewCell {
  private(set) lazy var containerView: UIView = {
    let view = UIView()
    view.clipsToBounds = true
    view.layer.cornerRadius = 5
    view.backgroundColor = Color.main.withAlphaComponent(0.4)

    return view
  }()

  private(set) lazy var imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true

    return imageView
  }()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.blue
        label.font = UIFont.systemFont(ofSize: 14)
       
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

  private(set) lazy var messageLabel: UILabel = {
    let messageLabel = UILabel()
    messageLabel.numberOfLines = 0
    messageLabel.lineBreakMode = .byWordWrapping
    messageLabel.font = UIFont.preferredFont(forTextStyle: .headline)

    return messageLabel
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    messageLabel.sizeToFit()
    authorLabel.sizeToFit()
    addSubview(containerView)
    containerView.addSubview(imageView)
    containerView.addSubview(authorLabel)
    containerView.addSubview(titleLabel)
    containerView.addSubview(messageLabel)

    setupConstraints()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError()
  }

  private func setupConstraints() {
    NSLayoutConstraint.activate([
      containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8),
      containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -8),
      containerView.topAnchor.constraint(equalTo: topAnchor, constant: 1),
      containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1),

      imageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 4),
      imageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 4),
      imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -4),
      imageView.heightAnchor.constraint(equalToConstant: 60),
      imageView.widthAnchor.constraint(equalToConstant: 80),
        
      authorLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
      authorLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 8),
      authorLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8),
      authorLabel.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor, constant: 5),
      authorLabel.bottomAnchor.constraint(equalTo: messageLabel.topAnchor, constant: -10),

      messageLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
      messageLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 8),
      messageLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8),
      messageLabel.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 5),
      messageLabel.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor, constant: -10)

    ])
  }
}
