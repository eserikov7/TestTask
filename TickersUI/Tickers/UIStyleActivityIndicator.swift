//
//  UIStyleActivityIndicator.swift
//  sittme
//
//  Created by Evgeny Serikov on 12/03/2019.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit

class UIStyleActivityIndicator: UIView {

    static var spinner:UIActivityIndicatorView?
    
    class func show(in view: UIView) {
        self.hide()
        let activityIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
        view.addSubview(activityIndicator)
        activityIndicator.center = view.center
        activityIndicator.startAnimating()
        self.spinner = activityIndicator
    }
    
    class func show(in viewController: UIViewController) {
        self.show(in: viewController.view)
    }
    
    class func hide() {
        spinner?.stopAnimating()
        spinner?.removeFromSuperview()
        spinner = nil
    }
    
    func hide() {
        UIStyleActivityIndicator.hide()
        removeFromSuperview()
    }
    
}
