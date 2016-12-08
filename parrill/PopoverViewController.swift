//
//  PopoverViewController.swift
//  parrill
//
//  Created by Jose Cordova on 6/12/16.
//  Copyright © 2016 SaTuR. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController {
    
    @IBOutlet var detail2PhotoImage: UIImageView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let UIImageView = self.detail2PhotoImage {
                UIImageView.image = UIImage(named:detail.photoName2)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var detailItem: Plate? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    
}

