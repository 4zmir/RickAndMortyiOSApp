//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Yeider Juarez on 7/8/23.
//

import UIKit

extension UIView{
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
