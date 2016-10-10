//
//  ShoppingListViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

protocol EmojiCreationDelegate {
    func emojiGroupCreated(_ emojigroup: (String, String))
}

class ShoppingViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis: [(String, String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.75, green:0.18, blue:0.27, alpha:1.00)
        tableView.backgroundColor = UIColor(red:0.85, green:0.37, blue:0.29, alpha:1.0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = false
    }
    
}

// MARK: - UITableViewDataSource Methods
extension ShoppingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiCellTableViewCell
        let currentEmojiLove = emojis[(indexPath as NSIndexPath).row]
        cell.firstEmojiLabel.text = currentEmojiLove.0
        cell.secondEmojiLabel.text = currentEmojiLove.1
        return cell
    }
}

// MARK: - UITableViewDelegate Methods
extension ShoppingViewController: UITableViewDelegate { }


// MARK: - Emoji Creation Delegate Methods
extension ShoppingViewController: EmojiCreationDelegate {
    
    func emojiGroupCreated(_ emojigroup: (String, String)) {
        emojis.append(emojigroup)
        tableView.reloadData()
    }
    
}

// MARK: - Segue Methods
extension ShoppingViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! EmojiSelectionViewController
        destVC.emojiDelegate = self
    }
    
}














// MARK: - Produce Dummy Data
extension ShoppingViewController {
    
    func dummyData() {
        emojis = [
            ("😄", "🤔"),
            ("👁", "💑"),
            ("💄", "💋"),
            ("💼", "🦄"),
            ("🐗", "🌫")
        ]
        tableView.reloadData()
    }
    
}
