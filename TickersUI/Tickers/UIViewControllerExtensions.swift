//
//  UIViewControllerExtensions.swift
//  sittme
//
//  Created by Evgeny Serikov on 12/03/2019.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit

extension  UIViewController {
    public func showAlert(message:String?) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
    
}
