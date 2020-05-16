//
//  CategoryVC.swift
//  News App
//
//  Created by Himanshu Joshi on 16/05/20.
//  Copyright © 2020 Himanshu Joshi. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController {
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let profileLabel: UILabel = {
        let label = UILabel()
        label.text = "NEWS BY CATEGORY"
        label.font = UIFont(name: "Avenir", size: 16.0)
        label.textColor = .lightGray
        return label
    }()
    
    let businessBtn: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        button.layer.borderWidth = 1.0
        button.setTitle("Business News", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 22.0)
        button.tintColor = .black
        return button
    }()
    
    @objc func toBusiness(_ sender : UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewsCategory") as? NewsCategory
        vc?.api = "http://newsapi.org/v2/top-headlines?country=in&category=business&sortBy=publishedAt&apiKey=3006b0a901d24919ab86700b4666c940"
        vc?.category = "BUSINESS NEWS"
        present(vc!, animated: true, completion: nil)
    }
    
    let entertainmentBtn: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        button.layer.borderWidth = 1.0
        button.setTitle("Entertainment News", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 22.0)
        button.tintColor = .black
        return button
    }()
    
    @objc func toEntertainment(_ sender : UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewsCategory") as? NewsCategory
        vc?.api = "http://newsapi.org/v2/top-headlines?country=in&category=entertainment&sortBy=publishedAt&apiKey=3006b0a901d24919ab86700b4666c940"
        vc?.category = "ENTERTAINMENT NEWS"
        present(vc!, animated: true, completion: nil)
    }
    
    let healthBtn: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        button.layer.borderWidth = 1.0
        button.setTitle("Health News", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 22.0)
        button.tintColor = .black
        return button
    }()
    
    @objc func toHealth(_ sender : UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewsCategory") as? NewsCategory
        vc?.api = "http://newsapi.org/v2/top-headlines?country=in&category=health&sortBy=publishedAt&apiKey=3006b0a901d24919ab86700b4666c940"
        vc?.category = "HEALTH NEWS"
        present(vc!, animated: true, completion: nil)
    }
    
    let scienceBtn: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        button.layer.borderWidth = 1.0
        button.setTitle("Science News", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 22.0)
        button.tintColor = .black
        return button
    }()
    
    @objc func toScience(_ sender : UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewsCategory") as? NewsCategory
        vc?.api = "http://newsapi.org/v2/top-headlines?country=in&category=science&sortBy=publishedAt&apiKey=3006b0a901d24919ab86700b4666c940"
        vc?.category = "SCIENCE NEWS"
        present(vc!, animated: true, completion: nil)
    }
    
    let sportsBtn: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        button.layer.borderWidth = 1.0
        button.setTitle("Sports News", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 22.0)
        button.tintColor = .black
        return button
    }()
   
    @objc func toSports(_ sender : UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewsCategory") as? NewsCategory
        vc?.api = "http://newsapi.org/v2/top-headlines?country=in&category=sports&sortBy=publishedAt&apiKey=3006b0a901d24919ab86700b4666c940"
        vc?.category = "SPORTS NEWS"
        present(vc!, animated: true, completion: nil)
    }
    
    let techBtn: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        button.layer.borderWidth = 1.0
        button.setTitle("Tech News", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Medium", size: 22.0)
        button.tintColor = .black
        return button
    }()
    
    @objc func toTech(_ sender : UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewsCategory") as? NewsCategory
        vc?.api = "http://newsapi.org/v2/top-headlines?country=in&category=technology&sortBy=publishedAt&apiKey=3006b0a901d24919ab86700b4666c940"
        vc?.category = "TECH NEWS"
        present(vc!, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(lineView)
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60.0).isActive = true
        lineView.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 0.7).isActive = true
        
        self.view.addSubview(profileLabel)
        profileLabel.translatesAutoresizingMaskIntoConstraints = false
        profileLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20.0).isActive = true
        profileLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
        
        self.view.addSubview(businessBtn)
        businessBtn.translatesAutoresizingMaskIntoConstraints = false
        businessBtn.isUserInteractionEnabled = true
        businessBtn.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80.0).isActive = true
        businessBtn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20.0).isActive = true
        businessBtn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20.0).isActive = true
        businessBtn.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        businessBtn.addTarget(self, action: #selector(toBusiness(_:)), for: .touchUpInside)
        
        self.view.addSubview(entertainmentBtn)
        entertainmentBtn.translatesAutoresizingMaskIntoConstraints = false
        entertainmentBtn.isUserInteractionEnabled = true
        entertainmentBtn.topAnchor.constraint(equalTo: businessBtn.bottomAnchor, constant: 10.0).isActive = true
        entertainmentBtn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20.0).isActive = true
        entertainmentBtn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20.0).isActive = true
        entertainmentBtn.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        entertainmentBtn.addTarget(self, action: #selector(toEntertainment(_:)), for: .touchUpInside)
        
        self.view.addSubview(healthBtn)
        healthBtn.translatesAutoresizingMaskIntoConstraints = false
        healthBtn.isUserInteractionEnabled = true
        healthBtn.topAnchor.constraint(equalTo: entertainmentBtn.bottomAnchor, constant: 10.0).isActive = true
        healthBtn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20.0).isActive = true
        healthBtn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20.0).isActive = true
        healthBtn.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        healthBtn.addTarget(self, action: #selector(toHealth(_:)), for: .touchUpInside)
        
        self.view.addSubview(scienceBtn)
        scienceBtn.translatesAutoresizingMaskIntoConstraints = false
        scienceBtn.isUserInteractionEnabled = true
        scienceBtn.topAnchor.constraint(equalTo: healthBtn.bottomAnchor, constant: 10.0).isActive = true
        scienceBtn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20.0).isActive = true
        scienceBtn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20.0).isActive = true
        scienceBtn.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        scienceBtn.addTarget(self, action: #selector(toScience(_:)), for: .touchUpInside)
        
        self.view.addSubview(sportsBtn)
        sportsBtn.translatesAutoresizingMaskIntoConstraints = false
        sportsBtn.isUserInteractionEnabled = true
        sportsBtn.topAnchor.constraint(equalTo: scienceBtn.bottomAnchor, constant: 10.0).isActive = true
        sportsBtn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20.0).isActive = true
        sportsBtn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20.0).isActive = true
        sportsBtn.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        sportsBtn.addTarget(self, action: #selector(toSports(_:)), for: .touchUpInside)
        
        self.view.addSubview(techBtn)
        techBtn.translatesAutoresizingMaskIntoConstraints = false
        techBtn.isUserInteractionEnabled = true
        techBtn.topAnchor.constraint(equalTo: sportsBtn.bottomAnchor, constant: 10.0).isActive = true
        techBtn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20.0).isActive = true
        techBtn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20.0).isActive = true
        techBtn.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        techBtn.addTarget(self, action: #selector(toTech(_:)), for: .touchUpInside)
    }
    
}
