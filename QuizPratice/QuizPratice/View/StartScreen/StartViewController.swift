//
//  StartViewController.swift
//  QuizPratice
//
//  Created by Rafael Penna on 06/05/23.
//

import UIKit

class StartViewController: UIViewController {
    
    var subjectsList = ["Sistemas Operacionais", "Direito Cibernético", "Linguagem de Programação", "Modelagem de Dados", "Análise Orientada a Objetos", "Engenharia de Requisitos"]
    
    var subjectsSearch = [String]()

    @IBOutlet var logoImageView: UIImageView!

    @IBOutlet var subjectsButton: UIButton! {
        didSet {
            subjectsButton.layer.cornerRadius = subjectsButton.frame.height / 2
        }
    }
    @IBOutlet var searchImageView: UIImageView! {
        didSet {
            searchImageView.isHidden = true
        }
    }
    
    @IBOutlet var backgroundLabel: UILabel! {
        didSet {
            backgroundLabel.isHidden = true
        }
    }
    
    @IBOutlet var searchField: UITextField! {
        didSet {
            searchField.isHidden = true
        }
    }
    
    @IBOutlet var tableViewSubjects: UITableView!
    
    @IBOutlet var chooseSubjectButton: UIButton! {
        didSet {
            chooseSubjectButton.layer.borderColor = UIColor.white.cgColor
            chooseSubjectButton.layer.borderWidth = 1
            chooseSubjectButton.layer.cornerRadius = chooseSubjectButton.frame.height / 2
            chooseSubjectButton.isHidden = false
        }
    }
    
    @IBOutlet var startButton: UIButton! {
        didSet {
            startButton.layer.cornerRadius = startButton.frame.height / 2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProtocols()
        tableViewConfig()
        self.subjectsSearch = subjectsList
    }
    
    private func tableViewConfig() {
        tableViewSubjects.isHidden = true
        tableViewSubjects.separatorStyle = .none
    }

    private func setupProtocols() {
        tableViewSubjects.delegate = self
        tableViewSubjects.dataSource = self
    }
    
    @IBAction func startButtonTapped(_ sender: Any) {
        guard let vc = UIStoryboard(name: "QuizViewController", bundle: nil).instantiateViewController(withIdentifier: "QuizViewController") as? QuizViewController else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    @IBAction func subjectsButtonTapped(_ sender: UIButton) {
        if self.tableViewSubjects.isHidden {
            animateList(toogle: true)
            hiddenButton(toogle: true)
        } else {
            animateList(toogle: false)
            hiddenButton(toogle: false)
        }
    }
    
    @IBAction func searchHandler(_ sender: UITextField) {
        if let searchText = sender.text {
            subjectsSearch = subjectsList.filter{$0.lowercased().contains(searchText.lowercased())}
            tableViewSubjects.reloadData()
        }
        clearText()
    }
    
    func animateList(toogle: Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.tableViewSubjects.isHidden = false
                self.searchField.isHidden = false
                self.searchImageView.isHidden = false
                self.backgroundLabel.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.tableViewSubjects.isHidden = true
                self.searchField.isHidden = true
                self.searchImageView.isHidden = true
                self.backgroundLabel.isHidden = true
            }
        }
    }
    
    func hiddenButton(toogle: Bool) {
        if toogle {
            self.chooseSubjectButton.isHidden = true
        } else {
            self.chooseSubjectButton.isHidden = false
        }
    }
    
    func clearText() {
        if searchField.text == "" {
            self.subjectsSearch = subjectsList
            tableViewSubjects.reloadData()
        }
    }
}

extension StartViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjectsSearch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = subjectsSearch[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chooseSubjectButton.setTitle("\(subjectsSearch[indexPath.row])", for: .normal)
        animateList(toogle: false)
        hiddenButton(toogle: false)
        searchField.text = ""
        clearText()
    }
}

