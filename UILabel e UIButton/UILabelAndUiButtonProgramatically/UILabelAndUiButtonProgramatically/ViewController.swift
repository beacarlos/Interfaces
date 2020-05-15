//
//  ViewController.swift
//  UILabelAndUiButtonProgramatically
//
//  Created by Beatriz Carlos on 12/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var label: UILabel!
    var button = UIButton(type: .roundedRect)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        view.backgroundColor = UIColor(red: 0.93, green: 0.78, blue: 0.91, alpha: 1.00)
        //view.alpha = 0.3 //nível de transparência.
        
        // Label programacally
        let frame = CGRect(x: 30, y: 40, width: 310, height: 90)
        label = UILabel(frame: frame)
        
        label.text = "Label - Uma componente que exibe uma ou mais linhas de texto informativo." // texto.
        label.textColor = .black // cor do texto
        label.font = UIFont.systemFont(ofSize: 16) //fonte
        label.textAlignment = .center // alinhamento de texto.
        label.backgroundColor = .white //fundo da label.
        label.alpha = 1.0 // nível de transparência.
        label.numberOfLines = 3 // número de linhas.
        label.lineBreakMode = NSLineBreakMode.byTruncatingMiddle
        
        let rangeLabel = NSRange(location: 0, length: 5)
        let attributedString = NSMutableAttributedString(string: "Label - Uma exibição que exibe uma ou mais linhas de texto informativo.")
        
        attributedString.addAttributes([NSAttributedString.Key.backgroundColor: UIColor(red: 0.93, green: 0.78, blue: 0.91, alpha: 1.00)], range: rangeLabel)
        
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "HoeflerText-BlackItalic", size: 16)!, range: rangeLabel)
        
        label.attributedText = attributedString
        
        view.addSubview(label) //add o label a subview.
        
        // Button programacally
        let frameButton = CGRect(x: 135, y: 162, width: 90, height: 30)
        button = UIButton(frame: frameButton)
        button.setTitle("Clique me", for: .normal)
        
        //ações de click
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc func buttonClicked() {
        print("button clicked.")
    }

}

