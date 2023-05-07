//
//  QuizCollectionViewCell.swift
//  QuizPratice
//
//  Created by Rafael Penna on 06/05/23.
//

import UIKit

enum SelectedOption {
    case optionA
    case optionB
    case optionC
    case optionD
}

class QuizCollectionViewCell: UICollectionViewCell {
    
    var viewController = QuizViewController()
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var option1: UILabel!
    @IBOutlet var option2: UILabel!
    @IBOutlet var option3: UILabel!
    @IBOutlet var option4: UILabel!
    
    @IBOutlet var optionA: UIControl!
    @IBOutlet var optionB: UIControl!
    @IBOutlet var optionC: UIControl!
    @IBOutlet var optionD: UIControl!
    
    
    private var correctAnswer: String?
    
    var setValues: Questions? {
        didSet {
            questionLabel.text = setValues?.question
            option1.text = setValues?.option_1
            option2.text = setValues?.option_2
            option3.text = setValues?.option_3
            option4.text = setValues?.option_4
            
            correctAnswer = setValues?.correct_answer
        }
    }
    
    override func prepareForReuse() {
        updateBorder(myView: optionA)
        updateBorder(myView: optionB)
        updateBorder(myView: optionC)
        updateBorder(myView: optionD)
    }
    
    var selectedOption: ((_ selectedAnswer: Bool) -> Void)?
    
    @IBAction func optionAPressed(_ sender: Any) {
        var isCorrect = false
        
        if correctAnswer == setValues?.option_1 {
            isCorrect = true
        }
        selectedOption?(isCorrect)
        changerBorder(selectedOption: .optionA)
    }
    
    @IBAction func optionBPressed(_ sender: Any) {
        var isCorrect = false
        
        if correctAnswer == setValues?.option_2 {
            isCorrect = true
        }
        selectedOption?(isCorrect)
        changerBorder(selectedOption: .optionB)
    }
    
    @IBAction func optionCPressed(_ sender: Any) {
        var isCorrect = false
        
        if correctAnswer == setValues?.option_3 {
            isCorrect = true
        }
        selectedOption?(isCorrect)
        changerBorder(selectedOption: .optionC)
    }
    
    @IBAction func optionDPressed(_ sender: Any) {
        var isCorrect = false
        
        if correctAnswer == setValues?.option_4 {
            isCorrect = true
        }
        selectedOption?(isCorrect)
        changerBorder(selectedOption: .optionD)
    }
    
    func changerBorder(selectedOption: SelectedOption) {
        switch selectedOption {
        case .optionA:
            updateBorder(myView: optionA, borderWidth: 4)
            updateBorder(myView: optionB)
            updateBorder(myView: optionC)
            updateBorder(myView: optionD)
        case .optionB:
            updateBorder(myView: optionB, borderWidth: 4)
            updateBorder(myView: optionA)
            updateBorder(myView: optionC)
            updateBorder(myView: optionD)
        case .optionC:
            updateBorder(myView: optionC, borderWidth: 4)
            updateBorder(myView: optionB)
            updateBorder(myView: optionA)
            updateBorder(myView: optionD)
        case .optionD:
            updateBorder(myView: optionD, borderWidth: 4)
            updateBorder(myView: optionB)
            updateBorder(myView: optionC)
            updateBorder(myView: optionA)
        }
    }
    
    func updateBorder(myView: UIView, borderWidth: CGFloat = 0) {
        myView.layer.borderWidth = borderWidth
        myView.layer.borderColor = UIColor.white.cgColor
    }
}
