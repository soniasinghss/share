//
//  Toolbar.swift
//  SHARE
//
//  Created by Sonia Singh on 2024-01-20.
//

import UIKit


class YourViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a toolbar
        let toolbar = UIToolbar()
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        
        // Add toolbar items
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let item1 = UIBarButtonItem(title: "Item 1", style: .plain, target: self, action: #selector(item1Tapped))
        let item2 = UIBarButtonItem(title: "Item 2", style: .plain, target: self, action: #selector(item2Tapped))
        
        toolbar.setItems([item1, flexibleSpace, item2], animated: false)
        
        // Add the toolbar to the view
        view.addSubview(toolbar)
        
        // Constraints for the toolbar (adjust as needed)
        toolbar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        toolbar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        toolbar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    // Action for toolbar item 1
    @objc func item1Tapped() {
        print("Item 1 tapped")
    }
    
    // Action for toolbar item 2
    @objc func item2Tapped() {
        print("Item 2 tapped")
    }
}
