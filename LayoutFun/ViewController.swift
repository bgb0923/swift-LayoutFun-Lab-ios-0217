//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let redView = UIView(frame: CGRect.zero)
    let orangeView = UIView(frame: CGRect.zero)
    let yellowView = UIView(frame: CGRect.zero)
    let greenView = UIView(frame: CGRect.zero)
    let blueView = UIView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        setupColors()
    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setupTheConstraints() {
        self.redView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        self.redView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.redView.heightAnchor.constraint(equalTo: self.redView.widthAnchor).isActive = true
        self.redView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.view.addSubview(redView)
        
        self.orangeView.widthAnchor.constraint(equalTo: self.redView.widthAnchor, multiplier: 0.75).isActive = true
        self.orangeView.centerXAnchor.constraint(equalTo: self.redView.centerXAnchor).isActive = true
        self.orangeView.heightAnchor.constraint(equalTo: self.orangeView.widthAnchor).isActive = true
        self.orangeView.bottomAnchor.constraint(equalTo: self.redView.topAnchor).isActive = true
        self.view.addSubview(orangeView)
        
        self.yellowView.widthAnchor.constraint(equalTo: self.orangeView.widthAnchor, multiplier: 0.75).isActive = true
        self.yellowView.centerXAnchor.constraint(equalTo: self.orangeView.centerXAnchor).isActive = true
        self.yellowView.heightAnchor.constraint(equalTo: self.yellowView.widthAnchor).isActive = true
        self.yellowView.bottomAnchor.constraint(equalTo: self.orangeView.topAnchor).isActive = true
        self.view.addSubview(yellowView)
        
        self.greenView.widthAnchor.constraint(equalTo: self.yellowView.widthAnchor, multiplier: 0.75).isActive = true
        self.greenView.centerXAnchor.constraint(equalTo: self.yellowView.centerXAnchor).isActive = true
        self.greenView.heightAnchor.constraint(equalTo: self.greenView.widthAnchor).isActive = true
        self.greenView.bottomAnchor.constraint(equalTo: self.yellowView.topAnchor).isActive = true
        self.view.addSubview(greenView)
        
        self.blueView.widthAnchor.constraint(equalTo: self.greenView.widthAnchor, multiplier: 0.75).isActive = true
        self.blueView.centerXAnchor.constraint(equalTo: self.greenView.centerXAnchor).isActive = true
        self.blueView.heightAnchor.constraint(equalTo: self.blueView.widthAnchor).isActive = true
        self.blueView.bottomAnchor.constraint(equalTo: self.greenView.topAnchor).isActive = true
        self.view.addSubview(blueView)
        
        
    }
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView].forEach { colorView in
            colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor.red
        orangeView.backgroundColor = UIColor.orange
        yellowView.backgroundColor = UIColor.yellow
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
    }
}
