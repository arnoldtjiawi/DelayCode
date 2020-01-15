//
//  ViewController.swift
//  DelayCode
//
//  Created by Arnold Tjiawi on 16/01/20.
//  Copyright © 2020 ArnoldTjiawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //1. delay with perform
        perform(#selector(self.whatsGoodie), with: nil, afterDelay: 2)
     
        //2. dispatch queue
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4){
            self.animateBackgroundColor(to: .yellow)
        }
        
        //3. timer schedule timer
        Timer.scheduledTimer(withTimeInterval: 6, repeats: false) { (_) in
            self.animateBackgroundColor(to: .cyan)
        }
        
    }
    @objc func whatsGoodie(){
        animateBackgroundColor(to: .red)
    }
    fileprivate func animateBackgroundColor(to color: UIColor){
        UIView.animate(withDuration: 0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.view.backgroundColor = color
        })
    }

}

