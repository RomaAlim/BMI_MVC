//
//  ResultController.swift
//  BMI
//
//  Created by Ramazan Kalabay on 19.12.2023.
//

import UIKit

class ResultController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultCommentLabel: UILabel!
    
    var bmiValue: String?
    var comment: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        resultCommentLabel.text = comment
        view.backgroundColor = color
    }
    


    @IBAction func recalculateActionButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
