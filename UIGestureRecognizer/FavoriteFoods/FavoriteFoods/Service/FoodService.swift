//
//  FoodService.swift
//  FavoriteFoods
//
//  Created by Beatriz Carlos on 12/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation

class FoodService {
    static let shared = FoodService()
    
    let food : [Food] = [
        Food(id: 1, name: "Waffle", description: "Waffle americano.", like: true, photo: "food-1"),
        Food(id: 1, name: "Tacos", description: "Tacos de frango com legumes.", like: true, photo: "food-2"),
        Food(id: 1, name: "Cheeseburger", description: "Cheeseburger sem cebola.", like: true, photo: "food-3"),
        Food(id: 1, name: "Carne de panela", description: "Feito com legumes.", like: false, photo: "food-4"),
        Food(id: 1, name: "Torta de chocolate", description: "Chocolate meio amargo.", like: true, photo: "food-5"),
        Food(id: 1, name: "Peixe assado", description: "Peixe assado", like: true, photo: "food-6"),
        Food(id: 1, name: "Pizza", description: "Pizza de cogumelos", like: false, photo: "food-7"),
        Food(id: 1, name: "Macarronada", description: "Com queijo e legumes.", like: true, photo: "food-8"),
        Food(id: 1, name: "Batata frita", description: "Estilo palito.", like: true, photo: "food-9"),
        Food(id: 1, name: "Bife", description: "Bife com salada.", like: true, photo: "food-10"),
        Food(id: 1, name: "Espetinho", description: "Espetinho de frango.", like: true, photo: "food-11"),
        Food(id: 1, name: "Croissant", description: "Croissant de presunto e queijo.", like: true, photo: "food-12"),
        Food(id: 1, name: "Sopa", description: "Sopa de carne com vegetais.", like: true, photo: "food-13"),
        Food(id: 1, name: "Sushi", description: "Sushi de kani.", like: true, photo: "food-14"),
        Food(id: 1, name: "Aperol", description: "Drink de laranja.", like: true, photo: "food-16"),
        Food(id: 1, name: "Chopp", description: "Chopp em copo de meio litro.", like: true, photo: "food-17"),
        Food(id: 1, name: "Lemon tea.", description: "lemon tea gelado.", like: true, photo: "food-18"),
        Food(id: 1, name: "Donuts", description: "Clássico americano.", like: true, photo: "food-19"),
        Food(id: 1, name: "Sorvete", description: "13 sabores para escolha.", like: true, photo: "food-20"),
        Food(id: 1, name: "Vinho", description: "Vinho tinto suave.", like: true, photo: "food-15")
    ]
    
    func selectFoods() -> [Food] {
        return self.food
    }
}
