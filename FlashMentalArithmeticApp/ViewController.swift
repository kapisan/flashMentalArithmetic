//
//  ViewController.swift
//  FlashMentalArithmeticApp
//
//  Created by niwa  shuhei on 2021/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var displayLabel: UILabel!

    var wRandomArray = [Int]()
    var count = 0
    var x = 0
    var btnTimer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for _ in 1 ..< 6 {
            //ランダムな数字を生成
            let randomNumber = Int.random(in: 1..<9)
            wRandomArray.append(randomNumber)
        }

    }

    func startTimer() {
        self.btnTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.changeColor), userInfo: nil, repeats: true)
    }

    @objc func changeColor() {
        x += 1
//        if x == 1 {
//            displayLabel.text = String(wRandomArray[0])
//        } else if x == 2 {
//            displayLabel.text = String(wRandomArray[1])
//        } else if x == 3 {
//            displayLabel.text = String(wRandomArray[2])
//        } else if x == 4 {
//            displayLabel.text = String(wRandomArray[3])
//        } else if x == 5 {
//            displayLabel.text = String(wRandomArray[4])
//            x = 0
//            self.btnTimer.invalidate()
//        }

        switch x {
        case 1:
            displayLabel.text = String(wRandomArray[0])
        case 2:
            displayLabel.text = String(wRandomArray[1])
        case 3:
            displayLabel.text = String(wRandomArray[2])
        case 4:
            displayLabel.text = String(wRandomArray[3])
        case 5:
            displayLabel.text = String(wRandomArray[4])
        case 6:
            x = 0
            self.btnTimer.invalidate()
            displayLabel.text = ""
            print("画面遷移")
        default:
            print("対象外")
        }
    }
    @IBAction func startActionButton(_ sender: UIButton) {

        startTimer()
        //ラベルに表示する箱を準備
//        var displayLabelNumber:Int = 0
//        var randomArray = [Int]()
        //ランダムな数字を表示（2秒間）
        //表示回数が5回以下ならループ（5回表示したら画面遷移）
//        for _ in 1 ..< 6 {
//            //ランダムな数字を生成
//            let randomNumber = Int.random(in: 1..<9)
//            randomArray.append(randomNumber)
//        }
        print(wRandomArray)

//        displayLabel.text = String(wRandomArray[count])
//
//        for _ in 0 ..< 4 {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                self.count += 1
//                self.displayLabel.text = String(self.wRandomArray[self.count])
//            }
//        }

//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.count += 1
//            self.displayLabel.text = String(self.wRandomArray[self.count])
//        }

//        displayLabel.text = String(wRandomArray[count])
//        count += 1
    }

    

}

