//
//  ResultsViewController.swift
//  QuizPratice
//
//  Created by Rafael Penna on 06/05/23.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var finishMessageLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var adviceMessageLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "1909") ?? UIImage())
        dataComplete()
    }
    
    private func dataComplete () {
        if result < 5 {
            finishMessageLabel.text = "Ops!"
            resultLabel.text = "\(result)/10"
            adviceMessageLabel.text = "Continue estudando para saber mais sobre o assunto."
        } else if result < 7 {
            finishMessageLabel.text = "Bom trabalho!"
            resultLabel.text = "\(result)/10"
            adviceMessageLabel.text = "Você está quase lá! Estude mais um pouco para tirar suas dúvidas."
        } else {
            finishMessageLabel.text = "Parabéns!"
            resultLabel.text = "\(result)/10"
            adviceMessageLabel.text = "Você já sabe bastante sobre o assunto. Continue assim!"
        }
        
    }
    
    @IBAction func backToMenuPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
