//
//  ViewModelStart.swift
//  QuizPratice
//
//  Created by Rafael Penna on 22/05/23.
//
import UIKit

class StartViewModel {
    
    private var dataSubjects:[Subjects] = []
    
    private var dataList: [String] = [] 
    
    init(){
        self.configArraySubjects()
        self.configData()
    }
    
    private func configArraySubjects(){
        self.dataSubjects.append(Subjects(subjectsName: "Sistemas Operacionais"))
        self.dataSubjects.append(Subjects(subjectsName: "Direito Cibernético"))
        self.dataSubjects.append(Subjects(subjectsName: "Linguagem de Programação"))
        self.dataSubjects.append(Subjects(subjectsName: "Modelagem de Dados"))
        self.dataSubjects.append(Subjects(subjectsName: "Análise Orientada a Objetos"))
        self.dataSubjects.append(Subjects(subjectsName: "Engenharia de Requisitos"))
    }
    
    func configData() {
        for d in 0 ..< dataSubjects.count {
            self.dataList.append(dataSubjects[d].subjectsName)
        }
    }
    
    public var getData: [String] {
        return dataList
    }
}
