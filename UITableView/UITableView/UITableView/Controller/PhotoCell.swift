//
//  PhotoCell.swift
//  UITableView
//
//  Created by Beatriz Carlos on 13/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {
    
    var photoImageView = UIImageView()
    var photoTitleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(photoImageView)
        addSubview(photoTitleLabel)
        
        configureImagemView()
        configureTitleLabel()
        setImageContraints()
        setTitleContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(photo: Photo) {
        photoImageView.image = photo.image
        photoTitleLabel.text = photo.title
    }
    
    func configureImagemView() {
        photoImageView.layer.cornerRadius = 10
        photoImageView.clipsToBounds = true
        photoImageView.contentMode = .scaleAspectFill
    }
    
    func configureTitleLabel() {
        photoTitleLabel.numberOfLines = 0
        photoTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageContraints() {
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        photoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        photoImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        photoImageView.widthAnchor.constraint(equalTo: photoImageView.heightAnchor, multiplier: 16/9).isActive = true

    }
    
    func setTitleContraints() {
        photoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        photoTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        photoTitleLabel.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: 20).isActive = true
        photoTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        photoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
}
