//
//  ViewController.swift
//  FlashMentalArithmeticApp
//
//  Created by niwa  shuhei on 2021/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var displayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startActionButton(_ sender: UIButton) {
        //ラベルに表示する箱を準備
//        var displayLabelNumber:Int = 0
        var randomArray = [Int]()
        //ランダムな数字を表示（2秒間）
        //表示回数が5回以下ならループ（5回表示したら画面遷移）
        for _ in 1 ..< 6 {
            //ランダムな数字を生成
            let randomNumber = Int.random(in: 1..<9)
            randomArray.append(randomNumber)
        }
        print(randomArray)
    }

}

