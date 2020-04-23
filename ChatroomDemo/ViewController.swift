//
//  ViewController.swift
//  ChatroomDemo
//
//  Created by star on 2020/4/23.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit


var Messages = [String]()

class ViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChatVC", for: indexPath) as? ChatTableViewCell else{
            return UITableViewCell()
                }
        let MessageText = Messages[indexPath.row]
        cell.ChatImageView.image = UIImage(named: "cbr650r")
        cell.ChatTextView.text = MessageText
        
        return cell

    }

    @IBOutlet weak var MessageTextField: UITextField!
    
    @IBAction func GetTextField(_ sender: Any) {
        Messages.append(MessageTextField.text!)
        tableview.reloadData()
        MessageTextField.text = ""
    }
    

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        
    }


}

