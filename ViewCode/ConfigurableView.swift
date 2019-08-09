//
//  ConfigurableView.swift
//  ViewCode
//
//  Created by Vinicius Mangueira on 09/08/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

protocol ConfigurableView: UIView {
    func setupView()
    func buildViewHierarchy()
    func setupConstraints()
}

extension ConfigurableView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
    }
}
