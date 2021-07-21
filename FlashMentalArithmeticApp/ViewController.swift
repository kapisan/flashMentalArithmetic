//
//  ViewController.swift
//  FlashMentalArithmeticApp
//
//  Created by niwa  shuhei on 2021/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var displayLabel: UILabel!

    var numberArray = [Int]()
    var newNumberArray = [Int]()
//    var answerArray = [Int]()
    var count = 0
    var x = 0
    var btnTimer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.navigationController?.setNavigationBarHidden(true, animated: false)
//        self.navigationController?.navigationBar.backgroundColor = .none

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()

        numberArray = [1,2,3,4,5,6,7,8,9]
        newNumberArray = numberArray.shuffled()

        print(newNumberArray)

    }

    func startTimer() {
        self.btnTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.changeColor), userInfo: nil, repeats: true)
    }

    @objc func changeColor() {

        count += 1

        switch count {
        case 1:
            displayLabel.text = String(newNumberArray[0])
        case 2:
            displayLabel.text = String(newNumberArray[1])
        case 3:
            displayLabel.text = String(newNumberArray[2])
        case 4:
            displayLabel.text = String(newNumberArray[3])
        case 5:
            displayLabel.text = String(newNumberArray[4])
        case 6:
//            x = 0
            count = 0
            self.btnTimer.invalidate()
            displayLabel.text = ""
//            numberArray.removeAll()
            let nextVC = self.storyboard?.instantiateViewController(identifier: "answerView") as! AnswerViewController
            nextVC.answerArray = newNumberArray
            self.navigationController?.pushViewController(nextVC, animated: true)
            print("画面遷移")
        default:
            print("対象外")
        }
    }
    @IBAction func startActionButton(_ sender: UIButton) {
        startTimer()
    }

}
