//
//  DetailViewController.swift
//  parrill
//
//  Created by Jose Cordova on 3/12/16.
//  Copyright © 2016 SaTuR. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailPhotoImage: UIImageView!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
            if let label = self.detailNameLabel {
                label.text = detail.name
            }
            if let UIImageView = self.detailPhotoImage {
                UIImageView.image = UIImage(named:detail.photoName1)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typicall from a nib.
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
    
    
    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
        //do som stuff from the popover
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "popoverSegue" {
            if let controller = (segue.destination as? PopoverViewController) {
                controller.popoverPresentationController!.delegate = self
                controller.preferredContentSize = CGSize(width: 300, height: 300)
                controller.detailItem=detailItem
                //controller.detail2PhotoImage=UIImageView.image = UIImage(named:detail.photoName1)
            }

        }
    }

}

