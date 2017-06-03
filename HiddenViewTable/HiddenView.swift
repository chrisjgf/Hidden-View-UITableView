//
//  FilterView.swift
//  Budgie
//
//  Created by Christopher Fulford on 03/03/2017.
//  Copyright © 2017 chrisjgf. All rights reserved.
//

import UIKit

@IBDesignable class HiddenView: UIView  {
    
    let nibName = "HiddenView"
    var view: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetUp()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetUp()
    }
    
    func loadViewFromNib() -> UIView {
        // grabs the appropriate bundle
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    func xibSetUp() {
        // setup the view from .xib
        
        view = loadViewFromNib()
        view.frame = self.bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(view)
    }
    
    
}
