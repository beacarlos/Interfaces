//
//  PhotoListViewController.swift
//  UITableView
//
//  Created by Beatriz Carlos on 13/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class PhotoListViewController: UIViewController {
    
    var tableView = UITableView()
    var photos:[Photo] = []
    
    struct Cells {
        static let photoCell = "PhotoCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Galaxy"
        
        
        photos = fetchData()
        configureTableView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        UINavigationBar.appearance().tintColor = UIColor.white
        
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates() //set delegates
        tableView.rowHeight = 100  // set row height
        tableView.register(PhotoCell.self, forCellReuseIdentifier: "PhotoCell")// register cells
        tableView.pin(to: view) // set constraints
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension PhotoListViewController: UITableViewDelegate, UITableViewDataSource {
    /** Retorna o número de linhas (células da tabela) em uma seção especificada. */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.photoCell) as! PhotoCell
        let photo = photos[indexPath.row]
        cell.set(photo: photo)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(photos[indexPath.last!].image)
    }
}

extension PhotoListViewController {
    func fetchData() -> [Photo] {
        let photo1 = Photo(image: Images.star1, title: "Andromeda")
        let photo2 = Photo(image: Images.star2, title: "Southern cruise")
        let photo3 = Photo(image: Images.star3, title: "Sirius and the bigger dog")
        let photo4 = Photo(image: Images.star4, title: "Big Dipper")
        let photo5 = Photo(image: Images.star5, title: "Orion")
        let photo6 = Photo(image: Images.star6, title: "Pisces")
        let photo7 = Photo(image: Images.star7, title: "Gemini")
        let photo8 = Photo(image: Images.star8, title: "Hydra Alphard")
        let photo9 = Photo(image: Images.star9, title: "Corona borealis")
        let photo10 = Photo(image: Images.star10, title: "Centaurus")
        
        return [photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9, photo10]
    }
}
