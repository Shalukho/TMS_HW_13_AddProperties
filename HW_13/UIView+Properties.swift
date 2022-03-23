//
//  UIView+Properties.swift
//  HW_13
//
//  Created by Анастасия Шалухо on 23.03.22.
//

import UIKit

extension UIView {
    func roundCorners(withRadius radius: CGFloat){
        self.layer.cornerRadius = radius
        self.layer.sublayers?.forEach{$0.cornerRadius = radius}
    }
    func makeRound(){
        let side = min(self.frame.height, self.frame.width)
        roundCorners(withRadius: side/2)
    }
    func addGradient(withColors colors: [UIColor]){
        let gradient = CAGradientLayer ()
        gradient.frame = self.bounds
        gradient.cornerRadius = self.layer.cornerRadius
        gradient.colors = colors.map {$0.cgColor}
        self.layer.insertSublayer(gradient, at: 0)
    }
    func addShadow(
        color: UIColor = .black,
        opacity: Float = 1,
        offset: CGSize = .zero,
        radius: CGFloat = 10
    ){
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
    }
}
