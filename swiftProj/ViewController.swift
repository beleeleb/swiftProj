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
        game2()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


func game ()
{
    
    let finalsq = 25
    var board = [Int](repeating: 0 ,count: finalsq + 1)
    board[3] = +08; board[06] = +11; board[09] = +09; board[10] = +02
    board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
    
    var square = 0
    var dice = 0
    while square < finalsq
    {
        dice += 1
        if dice == 7 {dice = 0}
        square += dice
        if square < board.count
        {
            square += board[square]
        }
    }
    // Do any additional setup after loading the view, typically from a nib.
}

func game2()
{
    
    let finalsq = 25
    var board = [Int](repeating: 0, count: finalsq + 1)
    
    board[3] = +08; board[06] = +11; board[09] = +09; board[10] = +02
    board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
    
    var sq = 0
    var dice = 0
    
    gameloop: while ( sq != finalsq)
    {
        dice+=1
        if dice == 7 {dice = 1}
        
        switch(sq + dice)
        {
        case finalsq:
            break gameloop
            
        case let temp where temp > finalsq:
            continue gameloop
            
        default:
            sq += dice
            sq += board[sq]
        }
    }
    
    print("game over")
}


