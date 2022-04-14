//
//  ReusableSearchBar.swift
//  image-search-swift
//
//  Created by Digital on 14/04/22.
//

import UIKit

class ReusableSearchBar: UIView {
    @IBOutlet weak var inputContainer: UIStackView!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var clearInputButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func didMoveToWindow() {
        setupView()
    }
    
    func setupView() {
        addBorderTo(layer: inputContainer.layer)
    }

    func addBorderTo(layer: CALayer) {
        layer.masksToBounds = true
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 5
    }
}
