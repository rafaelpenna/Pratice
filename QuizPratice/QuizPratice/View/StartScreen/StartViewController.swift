//
//  StartViewController.swift
//  QuizPratice
//
//  Created by Rafael Penna on 06/05/23.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var logoImageView: UIImageView! {
        didSet {
            
        logoImageView.tintColor = UIColor.white
        }
    }
    
    @IBOutlet var startButton: UIButton! {
        didSet {
            startButton.layer.cornerRadius = startButton.frame.height / 2
        }
    }
    @IBOutlet var subjectsButton: UIButton! {
        didSet {
            subjectsButton.layer.cornerRadius = subjectsButton.frame.height / 2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "peakpx") ?? UIImage())
    }
    

    @IBAction func startButtonTapped(_ sender: Any) {
        guard let vc = UIStoryboard(name: "QuizViewController", bundle: nil).instantiateViewController(withIdentifier: "QuizViewController") as? QuizViewController else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    @IBAction func subjectsButtonTapped(_ sender: UIButton) {
    }
}
