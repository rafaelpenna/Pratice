//
//  QuizCollectionViewCell.swift
//  QuizPratice
//
//  Created by Rafael Penna on 06/05/23.
//

import UIKit

class QuizCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var option1: UILabel!
    @IBOutlet var option2: UILabel!
    @IBOutlet var option3: UILabel!
    @IBOutlet var option4: UILabel!
    
    var setValues: Questions? {
        didSet {
            questionLabel.text = setValues?.question
            option1.text = setValues?.option_1
            option2.text = setValues?.option_2
            option3.text = setValues?.option_3
            option4.text = setValues?.option_4
        }
    }
}
