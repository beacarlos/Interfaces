//
//  CombineCardView.swift
//  FavoriteFoods
//
//  Created by Beatriz Carlos on 12/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class CombineCardView: UIView {
    
    var food : Food? {
        didSet {
            if let food = food {
                photoImageView.image = UIImage(named: food.photo)
                nameFoodLabel.text = food.name
                descriptionFoodLabel.text = food.description
            }
        }
    }
        
    let photoImageView: UIImageView = .photoImageView()
    
    let nameFoodLabel: UILabel = .textBoldLabel(32, textColor: .white)
    let descriptionFoodLabel: UILabel = .textLabel(18, textColor: .white, numberOfLines: 2)
    
    let deslikeImageView: UIImageView = .iconCard(named: "card-deslike")
    let likeImageView: UIImageView = .iconCard(named: "card-like")

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Mostrando a imagem na view.
        layer.borderWidth = 0.3 // largura da borda.
        layer.borderColor = UIColor.lightGray.cgColor // cor da borda.
        layer.cornerRadius = 8 // arredondando as bordas.
        clipsToBounds = true // permitir cortar a imagem, caso precise.
        
        addSubview(photoImageView)
        
        addSubview(deslikeImageView)
        deslikeImageView.preencher(
            top: topAnchor,
            leading: nil,
            trailing: trailingAnchor,
            bottom: nil,
            padding: .init(top: 20, left: 0, bottom: 0, right: 20)
        )
        
        addSubview(likeImageView)
        likeImageView.preencher(
            top: topAnchor,
            leading: leadingAnchor,
            trailing: nil,
            bottom: nil,
            padding: .init(top: 20, left: 20, bottom: 0, right: 0)
        )
        photoImageView.preencherSuperview()
        
        // Sombras do texto.
        nameFoodLabel.addShadow()
        descriptionFoodLabel.addShadow()
        
        // Stack View - Descrição da comida.
        let namestackView = UIStackView(arrangedSubviews: [nameFoodLabel])
        
        let stackView = UIStackView(arrangedSubviews:[namestackView, descriptionFoodLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)

        stackView.preencher(
            top: nil,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            bottom: bottomAnchor,
            padding: .init(top: 0, left: 16, bottom: 16, right: 16)
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
