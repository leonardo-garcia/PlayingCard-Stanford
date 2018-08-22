//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by Leonardo Garcia  on 8/2/18.
//  Copyright © 2018 Leonardo Garcia. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {
    
    var rank: Int = 5 { didSet{ setNeedsDisplay(); setNeedsLayout() } }
    var suit: String = "♥️" { didSet{ setNeedsDisplay(); setNeedsLayout() } }
    var isFaceUp: Bool = true { didSet{ setNeedsDisplay(); setNeedsLayout() } }
 
    private var cornerString: NSAttributedString {
        return centeredAttributedString("\(rank)" + "\n" + suit, fontSize: 0.0)
    }
    
    private func centeredAttributedString(_ string: String, fontSize: CGFloat) -> NSAttributedString {
        
        var font = UIFont.preferredFont(forTextStyle: .body).withSize(fontSize)
        font = UIFontMetrics(forTextStyle: .body).scaledFont(for: font)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        return NSAttributedString(string: string, attributes: [NSAttributedStringKey.paragraphStyle : paragraphStyle, .font: font])
    }

    override func draw(_ rect: CGRect) {
        let roundedRect = UIBezierPath(roundedRect: bounds, cornerRadius: 16.0)
        roundedRect.addClip()
        UIColor.white.setFill()
        roundedRect.fill()
    }
}

