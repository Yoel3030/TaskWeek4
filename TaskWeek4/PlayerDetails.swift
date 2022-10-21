//
//  PlayerDetails.swift
//  TaskWeek4
//
//  Created by Yoel Jacho on 19/10/22.
//

import Foundation
import UIKit

class PlayerDetail : UIViewController {
    
    
    @IBOutlet weak var ImageDetail: UIImageView!
    @IBOutlet weak var NameDetail: UILabel!
    @IBOutlet weak var DescriptionDetail: UITextView!
    @IBOutlet weak var TeamDetail: UIPickerView!
    
    
    var name : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.NameDetail.text = name
    }
    
    
    
    
}
