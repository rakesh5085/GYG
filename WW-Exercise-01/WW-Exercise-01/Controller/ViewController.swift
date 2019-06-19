//
//  ViewController.swift
//  WW-Exercise-01
//

import UIKit

class ViewController: UIViewController {
    
    private let tourService: TourService
    private let reviewListViewController = ReviewListViewController()
    
    // MARK: - Init
    
    required init(tourService: TourService) {
        self.tourService = tourService
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .white
         self.title = "Berlin Tour Reviews"
                
        setup()
        loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Setup
    
    private func setup() {
        reviewListViewController.adapter.select = select
        add(childViewController: reviewListViewController)
    }
    
    // MARK: - Data
    
    private func loadData() {
        tourService.fetchGYGReviews(completion: { [weak self] reviews in
            self?.reviewListViewController.handle(review: reviews)
        })
    }
}
