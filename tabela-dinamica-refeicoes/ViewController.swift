//
//  ViewController.swift
//  tabela-dinamica-refeicoes
//
//  Created by Patricia de Lima Carlos on 16/06/21.
//  Copyright © 2021 Patricia Carlos. All rights reserved.
//

import UIKit
//ViewController implementa a classe de UITableViewController
class ViewController: UITableViewController {
    //criando uma lista para as refeições
    let refeicoes = ["Churros","Macarrão","Pizza"]
    //de UITableViewController
    override func viewDidLoad() {
        //super p herdar da classe mãe
        super.viewDidLoad()
        print("tableViewController foi carregada")
    }
    
    //do protocolo UITableViewDataSource de dentro do UITableViewController
    //para atribuir quantidade de linhas na tabela
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //retorna a quantidade de itens da array como quantidades de linhas
        return refeicoes.count
    }
    //para retornar o conetúdo das células
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        //pega cada um os elementos da lista que está sendo renderizado
        let refeicao = refeicoes[indexPath.row]
        //transforma o elemento da lista em uma linha de texto
        celula.textLabel?.text = refeicao
        return celula
    }
}

