//
//  CombineVC.swift
//  FavoriteFoods
//
//  Created by Beatriz Carlos on 12/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class CombineVC: UIViewController {
    var allFoods: [Food] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Comidas favoritas"
        view.backgroundColor = UIColor.systemGroupedBackground
        
        self.searchFoods()
    }
    
    func searchFoods() {
        self.allFoods = FoodService.shared.selectFoods()
        self.addCards()
    }
}

extension CombineVC {
    // adicionando todos os cards.
    func addCards() {
        for food in allFoods {
            // criando uma view.
            let card = CombineCardView()
            //            redView.backgroundColor = item == 2 ? .blue : .red
            card.frame = CGRect(x: 0, y: 0, width: view.bounds.width - 32, height: view.bounds.height * 0.7)
            
            // centralizar a view.
            card.center = view.center
            card.food = food
            card.tag = food.id
            
            // Ações de clique.
            let gesture = UIPanGestureRecognizer()
            gesture.addTarget(self, action: #selector(handlesCard))
            
            card.addGestureRecognizer(gesture)
            
            view.insertSubview(card, at: 0)
        }
    }
    
    // removendo o card
    func removeCard(card: UIView) {
        card.removeFromSuperview()
    }
}

extension CombineVC {
    // Observa se há gestos em redView.
    @objc func handlesCard(_ gesture: UIPanGestureRecognizer) {
        if let card = gesture.view as? CombineCardView{
            // coordenadas para que lado está sendo arrastado.
            let point = gesture.translation(in: view)
            
            card.center = CGPoint(x: view.center.x + point.x, y:  view.center.y + point.y)
            
            let rotationAngle = point.x / view.bounds.width * 0.4
            
            // aparecer o botão de like quando se desliza para a direita.
            if point.x > 0 {
                card.likeImageView.alpha = rotationAngle * 3
                card.deslikeImageView.alpha = 0
            }
            // aparecer o botão de deslike quando se desliza para a esqeurda.
            else {
                card.deslikeImageView.alpha = rotationAngle * 3 * -1
                card.likeImageView.alpha = 0
            }
            
            // rotaciona em 2D.
            card.transform = CGAffineTransform(rotationAngle: rotationAngle)
            
            // quando o usúario soltar o card, o redView voltar para o centro da tela.
            if gesture.state == .ended {
                // Removendo e animamndo o card.
                if card.center.x > (self.view.bounds.width + 50) {
                    self.removeCard(card: card)
                }
                
                if card.center.x < -50 {
                    self.removeCard(card: card)
                }
                
                // animação para voltar para o centro mais devagar.
                UIView.animate(withDuration: 0.2) {
                    card.center = self.view.center
                    card.transform = .identity
                    
                    // desaparecer com os botões quando o card estiver no centro.
                    card.deslikeImageView.alpha = 0
                    card.likeImageView.alpha = 0
                }
            }
        }
    }
}
