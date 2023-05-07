//
//  view.swift
//  QuizPratice
//
//  Created by Rafael Penna on 07/05/23.
//

import Foundation

class QuestionViewModel {
    var dataQuiz: [Questions] = [Questions(correct_answer: "sobrinho 3", option_1: "sobrinho1", option_2: "sobrinho 2", option_3: "sobrinho 3", option_4: "sobrinho 4", question: "Quem é meu parente"),
                                 Questions(correct_answer: "sobrinho 23", option_1: "sobrinho 21", option_2: "sobrinho 22", option_3: "sobrinho 23", option_4: "sobrinho 24", question: "Quem é meu parente 2"),
                                 Questions(correct_answer: "sobrinho 33", option_1: "sobrinho 31", option_2: "sobrinho 32", option_3: "sobrinho 33", option_4: "sobrinho 34", question: "Quem é meu parente 3"),
                                 Questions(correct_answer: "sobrinho 43", option_1: "sobrinho 41", option_2: "sobrinho 42", option_3: "sobrinho 43", option_4: "sobrinho 44", question: "Quem é meu parente 4"),
                                 Questions(correct_answer: "sobrinho 53", option_1: "sobrinho 51", option_2: "sobrinho 52", option_3: "sobrinho 53", option_4: "sobrinho 54", question: "Quem é meu parente 5"),
                                 Questions(correct_answer: "sobrinho 63", option_1: "sobrinho 61", option_2: "sobrinho 62", option_3: "sobrinho 63", option_4: "sobrinho 64", question: "Quem é meu parente 6"),
                                 Questions(correct_answer: "sobrinho 74", option_1: "sobrinho 71", option_2: "sobrinho 72", option_3: "sobrinho 73", option_4: "sobrinho 74", question: "Quem é meu parente 7"),
                                 Questions(correct_answer: "sobrinho 84", option_1: "sobrinho 81", option_2: "sobrinho 82", option_3: "sobrinho 83", option_4: "sobrinho 84", question: "Quem é meu parente 8"),
                                 Questions(correct_answer: "sobrinho 91", option_1: "sobrinho 91", option_2: "sobrinho 92", option_3: "sobrinho 93", option_4: "sobrinho 94", question: "Quem é meu parente 9"),
                                 Questions(correct_answer: "sobrinho 102", option_1: "sobrinho 101", option_2: "sobrinho 102", option_3: "sobrinho 103", option_4: "sobrinho 104", question: "Quem é meu parente 10"),
    ]
    
    public func loadCurrentDriver(indexPath: IndexPath) -> Questions {
        return dataQuiz[indexPath.row]
    }
}
