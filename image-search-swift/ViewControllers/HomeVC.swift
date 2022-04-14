//
//  ViewController.swift
//  image-search-swift
//
//  Created by Digital on 13/04/22.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var reusableSearchBarContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        establishSearchBar()
    }
    
    func establishSearchBar() {
        let nib = UINib(nibName: "ReusableSearchBar", bundle: nil)
        
        let reusableSearchBar = nib.instantiate(withOwner: self, options: nil).first as? ReusableSearchBar
        
        reusableSearchBar!.textField.placeholder = "Search something..."
        reusableSearchBar!.clearInputButton.addTarget(self, action: #selector(clearInput), for: .touchUpInside)
        reusableSearchBar!.searchButton.addTarget(self, action: #selector(search), for: .touchUpInside)
        
        guard let view = reusableSearchBar else { return }
        view.frame = reusableSearchBarContainer.bounds
        
        reusableSearchBarContainer.addSubview(view)
    }
    
    @objc func clearInput() {
        print("Clear")
    }

    @objc func search() {
        print("Search")
    }
}

