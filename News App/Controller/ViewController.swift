//
//  ViewController.swift
//  News App
//
//  Created by Himanshu Joshi on 13/05/20.
//  Copyright © 2020 Himanshu Joshi. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let profileLabel: UILabel = {
        let label = UILabel()
        label.text = "NEWS"
        label.font = UIFont(name: "Avenir", size: 16.0)
        label.textColor = .lightGray
        return label
    }()
    
    let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView()
        spinner.color = .black
        return spinner
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UINib(nibName: "NewsCell", bundle: nil), forCellReuseIdentifier: "newsCell")
        tableView.allowsSelection = true
        tableView.backgroundColor = .white
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44.0
        return tableView
    }()
    
    var titleArray = [String]()
    var descArray = [String]()
    var dateArray = [String]()
    var imageArray = [String]()
    var webArray = [String]()
    
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
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.addSubview(spinner)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        spinner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        spinner.startAnimating()

        getData(url: url)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func getData(url: String) {
        
        Alamofire.request(url, method: .get).responseJSON {
            response in
            if response.result.isSuccess {
                let json : JSON = JSON(response.result.value!)
                print(json)
                let arrayJSON = json["articles"]
                self.classifyData(json: arrayJSON)
            }
        }
    }
    
    func classifyData(json: JSON) {
        for index in 0..<json.count {
            titleArray.append(json[index]["title"].stringValue)
            descArray.append(json[index]["content"].stringValue)
            dateArray.append(json[index]["publishedAt"].stringValue)
            imageArray.append(json[index]["urlToImage"].stringValue)
            webArray.append(json[index]["url"].stringValue)
        }
        spinner.stopAnimating()
        self.view.addSubview(self.tableView)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.isUserInteractionEnabled = true
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 61.0).isActive = true
        self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0.0).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0.0).isActive = true
        self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0.0).isActive = true
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as? NewsCell else { return UITableViewCell() }
        cell.titleLabel.text = titleArray[indexPath.row]
        cell.descLabel.text = descArray[indexPath.row]
        cell.dataLabel.text = dateArray[indexPath.row]
        let url = URL(string: imageArray[indexPath.row])
        let data = try? Data(contentsOf: url!)
        cell.newsImage.image = UIImage(data: data!)
        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let urlString = self.webArray[indexPath.row]
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

}  
