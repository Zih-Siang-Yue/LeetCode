//
//  ViewController.swift
//  Leetcode
//
//  Created by Sean on 2018/10/20.
//  Copyright © 2018年 Sean. All rights reserved.
//

import UIKit

class Circle {
    
    var radius: Double = 0
    var circumference: Double {
        return Double.pi * 2 * radius
    }
}

class ViewController: UIViewController {
    
    let identifier: String = "CustomCell"
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.delegate = self
        tv.dataSource = self
        tv.estimatedRowHeight = 44
        tv.backgroundColor = .lightGray
        return tv
    }()
    
//    var tvView: UITableView {
//        let tv = UITableView()
//        return tv
//    }
    
//    //MARK: Init
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//    }
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = YahooInterview()
        _ = Leetcode()
        _ = ClosurePractice()
        _ = Others()
        setupTableView()
    }

    func setupTableView() {
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: identifier)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.tableView)

        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        print("===> touches began")
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        print("===> touches moved")
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        print("===> touches ended")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? CustomCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showAlert(indexPath)
    }
    
    func showAlert(_ indexPath: IndexPath) {
        let alert: UIAlertController = .init(title: "Alert", message: "cell \(indexPath.row) was tapped", preferredStyle: .alert)
        let action: UIAlertAction = .init(title: "Confirm", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}


class CustomCell: UITableViewCell {
    
    lazy var bgView: UIView = {
        let bg = UIView()
        bg.backgroundColor = .yellow
        let tap: UITapGestureRecognizer = .init(target: self, action: #selector(tapAction(_:)))
        bg.addGestureRecognizer(tap)
        return bg
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.baseSetting()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.baseSetting()
    }
    
    func baseSetting() {
        self.addSubview(bgView)
        self.bgView.translatesAutoresizingMaskIntoConstraints = false
        self.bgView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.bgView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.bgView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5).isActive = true
        self.bgView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 20).isActive = true
    }
    
    @objc func tapAction(_ gesture: UITapGestureRecognizer) {
        print("===> bg View was tapped")
    }
    
}
