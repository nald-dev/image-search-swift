//
//  ViewController.swift
//  image-search-swift
//
//  Created by Digital on 13/04/22.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var inputContainer: UIStackView!
    
    @IBOutlet weak var clearInputButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupView()
        setupMethod()
    }

    func setupView() {
        addBorderTo(layer: inputContainer.layer)
    }
    
    func setupMethod() {
        clearInputButton.addTarget(self, action: #selector(clearInput), for: .touchUpInside)
        searchButton.addTarget(self, action: #selector(search), for: .touchUpInside)
    }
    
    @objc func clearInput() {
        print("Clear")
    }
    
    @objc func search() {
        print("Search")
    }
    
    func addBorderTo(layer: CALayer) {
        layer.masksToBounds = true
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 5
    }
}

