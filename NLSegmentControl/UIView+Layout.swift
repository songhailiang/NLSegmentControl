//
//  UIView+Layout.swift
//  NLSegmentControl
//
//  Created by songhailiang on 27/05/2017.
//  Copyright © 2017 hailiang.song. All rights reserved.
//

import UIKit

// MARK: - Autolayout
public extension UIView {
    
    @discardableResult
    func nl_equalTop(toView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: toView, attribute: .top, multiplier: 1.0, constant: offset)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_equalLeft(toView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: toView, attribute: .leading, multiplier: 1.0, constant: offset)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_equalBottom(toView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: toView, attribute: .bottom, multiplier: 1.0, constant: offset)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_equalRight(toView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: toView, attribute: .trailing, multiplier: 1.0, constant: offset)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_equalWidth(toView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: toView, attribute: .width, multiplier: 1.0, constant: offset)
        layout.isActive = true
        return layout
        
    }
    
    @discardableResult
    func nl_equalHeight(toView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: toView, attribute: .height, multiplier: 1.0, constant: offset)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_equalCenterX(toView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: toView, attribute: .centerX, multiplier: 1.0, constant: offset)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_equalCenterY(toView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: toView, attribute: .centerY, multiplier: 1.0, constant: offset)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_marginTop(toView: UIView, margin: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: toView, attribute: .bottom, multiplier: 1.0, constant: margin)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_marginLeft(toView: UIView, margin: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: toView, attribute: .trailing, multiplier: 1.0, constant: margin)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_marginBottom(toView: UIView, margin: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: toView, attribute: .top, multiplier: 1.0, constant: margin)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_marginRight(toView: UIView, margin: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: toView, attribute: .leading, multiplier: 1.0, constant: margin)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_widthIs(_ width: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: width)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_heightIs(_ height: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: height)
        layout.isActive = true
        return layout
    }
    
    @discardableResult
    func nl_ratioIs(_ ratio: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let layout = NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: self, attribute: .height, multiplier: ratio, constant: 0)
        layout.isActive = true
        return layout
    }
}
