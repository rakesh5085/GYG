//
//  ReviewListViewController.swift
import UIKit
/// Show a list of reviews
final class ReviewListViewController: UIViewController {

  private(set) var collectionView: UICollectionView!
  let adapter = Adapter<ReviewData, ReviewCell>()

  // MARK: - Life Cycle

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setup()
  }

  private func setup() {
    view.backgroundColor = .red

    let layout = UICollectionViewFlowLayout()
    collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.dataSource = adapter
    collectionView.delegate = adapter
    collectionView.register(cellType: ReviewCell.self)
    collectionView.backgroundColor = Color.background
    collectionView.contentInset.top = 8
    collectionView.alwaysBounceVertical = true
    collectionView.sizeToFit()
    if #available(iOS 11.0, *) {
        collectionView.contentInsetAdjustmentBehavior = .always
    } else {
        // Fallback on earlier versions
    }
    collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

    adapter.configure = { review, cell in
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(tapGestureRecognizer:)))
        cell.imageView.isUserInteractionEnabled = true
        cell.imageView.addGestureRecognizer(tapGestureRecognizer)
        
        //var baseImageUrlString = "https://www.getyourguide.com/" // base url
        let imageName = "placeholder"
        let image = UIImage(named: imageName)
        
        if let imgUrlString = review.reviewerProfilePhoto {
            let imgURL = URL(string:imgUrlString)
            cell.imageView.setImage(url: imgURL ?? nil!, placeholder: image )
        }
        cell.authorLabel.text = review.author
        cell.messageLabel.text = review.message
    }

    view.addSubview(collectionView)    
    // Setup Autolayout constraints
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
    collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
    collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
    
  }

  func handle(review: ReviewBase) {
    adapter.items = review.data ?? nil!
    collectionView.reloadData()
  }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        let alert = UIAlertController(title: "WW ", message: "Image Tapped", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
