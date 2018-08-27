//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Andrew Liao on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    static let light = UIColor(displayP3Red: 0.4, green: 0.6, blue: 0.6, alpha: 1.0)
    static let dark = UIColor(displayP3Red: 0.333, green: 0.153, blue: 0, alpha: 1.0)
    static let lightblue = UIColor(displayP3Red: 196/255, green: 223/255, blue: 230/255, alpha: 1)
    static func setTheme(){
        
        UINavigationBar.appearance().barTintColor = light
        UIBarButtonItem.appearance().tintColor = dark
        UISegmentedControl.appearance().tintColor = dark
       
        let textAttributes =  [NSAttributedStringKey.foregroundColor : dark]
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        
        UITableView.appearance().backgroundColor = light
        UITableViewCell.appearance().backgroundColor = light
        
        UITextField.appearance().keyboardAppearance = .dark
        UITextField.appearance().tintColor = dark
        UITextView.appearance().tintColor = dark
        
        UILabel.appearance().textColor = dark
        
    }
    
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let result = UIFont(name: "Otto", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
    
    
}
