//
//  ViewController.swift
//  swiftProj
//
//  Created by gali zorea on 06/04/2016.
//  Copyright © 2016 gali zorea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let finalsq = 25
        var board = [Int](count: finalsq + 1, repeatedValue: 0)
        board[3] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        
        var square = 0
        var dice = 0
        while square < finalsq
        {
            dice++
            if dice == 7 {dice = 0}
            square += dice
            if square < board.count
            {
                square += board[square]
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

