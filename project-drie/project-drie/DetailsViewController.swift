//
//  DetailsViewController.swift
//  project-drie
//
//  Created by Sjors Verhoef on 20-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedPirate: Pirate?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lifeLabel: UILabel!
    @IBOutlet weak var activeYearsLabel: UILabel!
    @IBOutlet weak var countryOfBirthLabel: UILabel!
    @IBOutlet weak var commentsLabel: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.nameLabel.text = self.selectedPirate?.name
        self.lifeLabel.text = self.selectedPirate?.life
        self.activeYearsLabel.text = self.selectedPirate?.years_active
        self.countryOfBirthLabel.text = self.selectedPirate?.country_of_origin
        self.commentsLabel.text = self.selectedPirate?.comments
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
