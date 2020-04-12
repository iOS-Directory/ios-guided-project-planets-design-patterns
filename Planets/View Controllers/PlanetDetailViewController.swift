//
//  PlanetDetailViewController.swift
//  Planets
//
//  Created by Andrew R Madsen on 9/20/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    private func updateViews() {
        guard let planet = planet, isViewLoaded else {
            imageView?.image = nil
            label?.text = nil
            return
        }
        
        imageView.image = planet.image
        label.text = planet.name
    }
    
    //MARK: - State Restoration
    
    override func encodeRestorableState(with coder: NSCoder) {
        //Take Planet -> Data -> Encode
        
        guard let planet = planet else {return }
        
        let planetData = try? PropertyListEncoder().encode(planet)
        
        coder.encode(planetData, forKey: "planetDataKey")
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        // Data -> Take Planet -> set planet var
    }
    
}
