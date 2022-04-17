//
//  RoundedLabel.swift
//  Homework-13
//
//  Created by Alex on 17.04.22.
//

import UIKit

@IBDesignable public class RoundedLabel: UILabel {

    override public func layoutSubviews() {
        super.layoutSubviews()

        layer.cornerRadius = frame.height / 2
    }
}
