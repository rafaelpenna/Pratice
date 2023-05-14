//
//  view.swift
//  QuizPratice
//
//  Created by Rafael Penna on 07/05/23.
//

import Foundation

class QuestionViewModel {
    var dataQuiz: [Questions] = [Questions(correct_answer: "Linguagem C", option_1: "Python", option_2: "Linguagem C", option_3: "Php", option_4: "Java", question: "O Unix foi desenvolvido em assembly, e reescrito  em ____ para ser adaptado a outras plataformas. É um sistema multiprogramável, multiusuário, suporta vários processadores e implementa memória virtual."),
                                 Questions(correct_answer: "kernel", option_1: "shell", option_2: "sistemas de arquivos", option_3: "aplicações", option_4: "kernel", question: "O Linux em si é somente o ____ do sistema operacional, para que ele funcione são necessários, por exemplo, compiladores do código fonte."),
                                 Questions(correct_answer: "compartilham", option_1: "bloqueiam", option_2: "diminuem", option_3: "compartilham", option_4: "executam", question: "Thread é um fluxo de controle (execução) dentro do processo. Um processo pode conter um ou vários threads que ____ os recursos do processo."),
                                 Questions(correct_answer: "ambos(implementação híbrida)", option_1: "nuvem", option_2: "ambos(implementação híbrida)", option_3: "hardware", option_4: "memória", question: "A implementação de threads pode ocorrer no espaço do usuário, no núcleo do sistema operacional ou em ____."),
                                 Questions(correct_answer: "bytes", option_1: "nomes", option_2: "bytes", option_3: "tipos de arquivos", option_4: "conteúdo", question: "Em uma Sequência Estruturada de Bytes (Estrutura de Arquivos), o sistema operacional não sabe o que contém o arquivo, e tudo o que ele vê são ____. A sequência estruturada de bytes oferece flexibilidade, uma vez que os programas de usuário podem dar o nome que quiser aos seus arquivos e inserir o conteúdo que desejar."),
                                 Questions(correct_answer: "proteção", option_1: "informações", option_2: "exclusão", option_3: "proteção", option_4: "acesso", question: """
 Arquivos são compartilhados com usuários e são utilizados para diversas finalidades. Assim, é necessário que o sistema operacional ofereça ____ desses arquivos para que usuários e processos que não tenham permissão consigam acessá-los.
  São mecanismos de proteção:
 -> Senha de Acesso
 -> Grupo de usuários
 -> Lista de controle de acesso
 """),
                                 Questions(correct_answer: "absoluto / relativo", option_1: "criativo / intuitivo", option_2: "editável / definitivo", option_3: "online / offline", option_4: "absoluto / relativo", question: "Quando o sistema de arquivos é organizado por meio de uma árvore de diretórios, é necessário definir uma forma de especificar o nome dos arquivos. Para isso, são usados dois métodos: nome de caminho ____ e nome de caminho ____."),
                                 Questions(correct_answer: "armazenamento", option_1: "gerenciamento", option_2: "armazenamento", option_3: "deslocamento", option_4: "exclusão", question: "Memória é o local de ____ de informações no computador e o seu gerenciamento em um sistema operacional é importante para garantir a eficiência das aplicações que rodam no computador."),
                                 Questions(correct_answer: "gerenciamento de memória", option_1: "compartilhamento de informações", option_2: "execução em nuvem", option_3: "antivírus", option_4: "gerenciamento de memória", question: "Multiprogramação com Partições Fixas é um mecanismo de ____ está presente na maioria dos sistemas operacionais modernos. Ele permite que vários processos executem ao mesmo tempo (multiprogramação) e quando um processo é bloqueado aguardando uma informação de entrada/saída, outro processo poderá utilizar a CPU, aumentando a sua utilização."),
                                 Questions(correct_answer: "criados / criado", option_1: "criados / criado", option_2: "compartilhados / executado", option_3: "gerenciados / alterado", option_4: "excluídos / eliminado", question: """
                                           Os sistemas operacionais devem oferecer formas para que processos sejam ____. Existem quatro eventos que fazem com que um processo seja ____.
                                           -> inicio do sistema
                                           -> execução de uma chamada ao sistema de criação por um processo em execução
                                           -> uma requisição do usuário para criar um novo processo
                                           -> início de um job de lotes
                                           """),
    ]
    
    public func loadCurrentDriver(indexPath: IndexPath) -> Questions {
        return dataQuiz[indexPath.row]
    }
}
