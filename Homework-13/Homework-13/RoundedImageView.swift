//
//  RoundedImageView.swift
//  Homework-13
//
//  Created by Alex on 17.04.22.
//

import UIKit

@IBDesignable public class RoundedImageView: UILabel {

    override public func layoutSubviews() {
        super.layoutSubviews()

        //hard-coded this since it's always round
        layer.cornerRadius = 0.5 * bounds.size.width
    }
}
