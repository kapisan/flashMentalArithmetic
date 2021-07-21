//
//  AnswerViewController.swift
//  FlashMentalArithmeticApp
//
//  Created by niwa  shuhei on 2021/07/14.
//

import UIKit

class AnswerViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var answerTextField: UITextField!
    
    var answerArray = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()

        //キーボードで数字と記号のみを表示
        self.answerTextField.keyboardType = UIKeyboardType.numbersAndPunctuation

        self.answerTextField.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        label.adjustsFontSizeToFitWidth = true

        print(answerArray)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        let result: Int = answerArray.reduce(0) { $0 + $1 }

        var answerInt = 0

        if textField.text != nil {
            answerInt = Int(textField.text!)!
        }

        print(result)
        if result == answerInt {
            print("正解")
            label.text = "正解"
        } else {
            print("不正解")
            label.text = "不正解"
        }
        //キーボードを閉じる
        textField.resignFirstResponder()

        return true
    }

    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            } else {
                let suggestionHeight = self.view.frame.origin.y + keyboardSize.height
                self.view.frame.origin.y -= suggestionHeight
            }
        }
    }

    @objc func keyboardWillHide() {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }

}
