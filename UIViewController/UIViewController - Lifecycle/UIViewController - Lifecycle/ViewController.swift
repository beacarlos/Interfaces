//
//  ViewController.swift
//  UIViewController - Lifecycle
//
//  Created by Beatriz Carlos on 14/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Chamado quando a view é criada na memória.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Chamado antes da visualização do conteúdo ser adicionada à hierarquia de visualização do aplicativo. É chamado toda vez antes de ser carregado a tela.
    override func viewWillAppear(_ animated: Bool) {
        <#code#>
    }

    // Chamado depois da visualização do conteúdo ser adicionada à hierarquia de visualização do aplicativo.
    override func viewDidAppear(_ animated: Bool) {
        <#code#>
    }
    
    // Chamado imediatamente antes da exibição do conteúdo da view ser removida da hierarquia de exibição do aplicativo.
    override func viewWillDisappear(_ animated: Bool) {
        <#code#>
    }
    
    // Chamado imediatamente depois da exibição do conteúdo da view ser removida da hierarquia de exibição do aplicativo.
    override func viewDidDisappear(_ animated: Bool) {
        <#code#>
    }
    
    // Chamado quando os limites da view's são alterados, mas antes de apresentar suas subview's. Exemplo: fazer uma animação quando sai do portrait e vai pra landscape.
    override func viewWillLayoutSubviews() {
        <#code#>
    }
    
    // Chamado quando os limites da view's são alterados, mas depois de apresentar suas subview's.
    override func viewDidLayoutSubviews() {
        <#code#>
    }
}
