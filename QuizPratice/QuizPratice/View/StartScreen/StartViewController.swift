//
//  StartViewController.swift
//  QuizPratice
//
//  Created by Rafael Penna on 06/05/23.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var logoImageView: UIImageView!

    @IBOutlet var subjectsButton: UIButton! {
        didSet {
            subjectsButton.layer.cornerRadius = subjectsButton.frame.height / 2
        }
    }
    
    @IBOutlet var chooseSubjectButton: UIButton! {
        didSet {
            chooseSubjectButton.layer.borderColor = UIColor.white.cgColor
            chooseSubjectButton.layer.borderWidth = 1
            chooseSubjectButton.layer.cornerRadius = chooseSubjectButton.frame.height / 2
        }
    }
    
    @IBOutlet var startButton: UIButton! {
        didSet {
            startButton.layer.cornerRadius = startButton.frame.height / 2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func startButtonTapped(_ sender: Any) {
        guard let vc = UIStoryboard(name: "QuizViewController", bundle: nil).instantiateViewController(withIdentifier: "QuizViewController") as? QuizViewController else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    @IBAction func subjectsButtonTapped(_ sender: UIButton) {
        guard let vc = UIStoryboard(name: "ResultsViewController", bundle: nil).instantiateViewController(withIdentifier: "ResultsViewController") as? ResultsViewController else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
