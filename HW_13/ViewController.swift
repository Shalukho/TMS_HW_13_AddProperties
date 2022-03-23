//
//  ViewController.swift
//  HW_13
//
//  Created by Анастасия Шалухо on 23.03.22.
//

//  Tap Me. В приложении с шариком появляющимся в рандомном месте добавить расширения UIView на тень, скругления и градиент. Настраивать шарик с помощью методов расширения

import UIKit

class ViewController: UIViewController {

    let tapMe = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
    }
    
    private func setupSubViews() {
       
        let viewSize = self.view.bounds
        let superViewHeigth = viewSize.height
        let superViewWidth = viewSize.width

        tapMe.frame = CGRect(x: superViewWidth / 2 - 40, y: superViewHeigth / 2 - 40, width: 80, height: 80)
        tapMe.addGradient(withColors: [.systemGreen, .systemYellow])
        tapMe.makeRound()
        tapMe.addShadow(color: .black, radius: 20)
        tapMe.setTitle("Tap Me", for: .normal)
        
        self.view.addSubview(tapMe)
        
        tapMe.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
    }
    @objc private func buttonTouched(){
        let viewSize = self.view.bounds
        let superViewHeigth = viewSize.height
        let superViewWidth = viewSize.width
        let maxHeigth = Int(superViewHeigth) - 80
        let maxWidth = Int(superViewWidth) - 80
        
        tapMe.frame = CGRect(x: Double(Int.random(in: 80...maxWidth)),
                              y: Double(Int.random(in: 80...maxHeigth)),
                              width: 80,
                              height: 80)
    }

}

