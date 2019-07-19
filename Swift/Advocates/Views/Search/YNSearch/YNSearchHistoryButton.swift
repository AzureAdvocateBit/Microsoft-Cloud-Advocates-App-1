//
//  YNSearchButton.swift
//  YNSearch
//
//  Created by Seungyoun Yi on 2017. 4. 12..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit

class YNSearchHistoryView: UIView {
    var ynSearchHistoryButton: YNSearchHistoryButton!
    var closeButton: UIButton!
    var bottomLine: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func initView() {
        self.ynSearchHistoryButton = YNSearchHistoryButton(frame: CGRect(x: 0, y: 0, width: self.frame.width - 15, height: self.frame.height))
        self.addSubview(ynSearchHistoryButton)
        
        self.closeButton = UIButton(frame: CGRect(x: self.frame.width - 15, y: (self.frame.height - 15)/2, width: 15, height: 15))
        let close = UIImage(named: "close", in: Bundle(for: Search.self), compatibleWith: nil)

        self.closeButton.setImage(close, for: .normal)
        self.addSubview(closeButton)
        
        self.bottomLine = UIView(frame: CGRect(x: 0, y: self.frame.height-1, width: self.frame.width, height: 1))
        self.bottomLine.backgroundColor = UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 242.0/255.0, alpha: 1.0)
        self.addSubview(bottomLine)
        
    }
}

 class YNSearchHistoryButton: UIButton {
    var textLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override var isHighlighted: Bool {
        didSet {
            switch isHighlighted {
            case true:
                self.textLabel.textColor = UIColor.darkGray.withAlphaComponent(0.3)
            case false:
                self.textLabel.textColor = UIColor.darkGray
            }
        }
    }
    
    func initView() {
        let searchHistoryImageview = UIImageView(frame: CGRect(x: 0, y: (self.frame.height - 15)/2, width: 15, height: 15))
        let search_history = UIImage(named: "search_history", in: Bundle(for: Search.self), compatibleWith: nil)
        searchHistoryImageview.image = search_history
        self.addSubview(searchHistoryImageview)
        
        self.textLabel = UILabel(frame: CGRect(x: 25, y: 0, width: self.frame.width - 40, height: self.frame.height))
        self.textLabel.font = UIFont.systemFont(ofSize: 14)
        self.textLabel.textColor = UIColor.darkGray
        self.addSubview(textLabel)
        
    }

}

