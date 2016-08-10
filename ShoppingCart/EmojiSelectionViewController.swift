//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var leftTextField: UITextField!
    @IBOutlet weak var rightTextField: UITextField!
    
    var emojiDelegate: EmojiCreationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}

// MARK: - Save Button Methods
extension EmojiSelectionViewController {
    
    @IBAction func saveButtonTapped(sender: UIButton) {
        guard let firstEmoji = leftTextField.text,
            secondEmoji = rightTextField.text
            else { return }
        
        let emojiGroup = (firstEmoji, secondEmoji)
        emojiDelegate?.emojiGroupCreated(emojiGroup)
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}