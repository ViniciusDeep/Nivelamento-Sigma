//
//  CustomView.swift
//  ViewCode
//
//  Created by Vinicius Mangueira on 09/08/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { (view) in
            addSubview(view)
        }
    }
}

class CustomView: UIView, ConfigurableView {
  
    let imageTavares: UIImageView = {
        let image = UIImageView(image: UIImage(named: "tavares"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    //DRY
    
    let imageAlan: UIImageView = {
        let image = UIImageView(image: UIImage(named: "tavares"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        addSubviews([imageTavares, imageAlan])
    }
    
    func setupConstraints() {
        
    }
    
    
    
}
