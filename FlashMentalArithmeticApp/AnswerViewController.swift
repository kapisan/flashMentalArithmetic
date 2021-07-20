//
//  AnswerViewController.swift
//  FlashMentalArithmeticApp
//
//  Created by niwa  shuhei on 2021/07/14.
//

import UIKit

class AnswerViewController: UIViewController {

    var answerArray = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(true, animated: false)

        print(answerArray)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
