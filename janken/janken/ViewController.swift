//
//  ViewController.swift
//  janken
//
//  Created by 石山 洋 on 2016/08/13.
//  Copyright © 2016年 石山 洋. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    let randomSource = GKARC4RandomSource()
    
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 180度のラジアンを求める
        let angle:CGFloat = CGFloat((180.0 * M_PI) / 180.0)
        
        // イメージビューを回転
        computerImageView.transform = CGAffineTransformMakeRotation(angle)
    }
    @IBAction func tapStart() {
        // イメージビューにグーを表示
        computerImageView.image = UIImage(named: "gu.png")
        playerImageView.image = UIImage(named: "gu.png")
        
        // ラベルに「じゃんけん！」と表示
        messageLabel.text = "じゃんけん！"
    }

    @IBAction func tapGu() {
        playerImageView.image = UIImage(named: "gu.png")
        doComputer(0)
    }
    @IBAction func tapChoki() {
        playerImageView.image = UIImage(named: "choki.png")
        doComputer(1)
    }
    @IBAction func tapPa() {
        playerImageView.image = UIImage(named: "pa.png")
        doComputer(2)
    }
    
    func doComputer(player:Int){
        let computer = randomSource.nextIntWithUpperBound(3)
        var msg = ""
        
        switch computer {
        case 0:
            // グー
            computerImageView.image = UIImage(named: "gu.png")
            switch player {
            case 0:
                msg = "あいこ"
            case 1:
                msg = "あなたの負け"
            case 2:
                msg = "あなたの勝ち"
            default:
                break
            }
        case 1:
            // チョキ
            computerImageView.image = UIImage(named: "choki.png")
            switch player {
            case 0:
                msg = "あなたの勝ち"
            case 1:
                msg = "あいこ"
            case 2:
                msg = "あなたの負け"
            default:
                break
            }
        case 2:
            // パー
            computerImageView.image = UIImage(named: "pa.png")
            switch player {
            case 0:
                msg = "あなたの負け"
            case 1:
                msg = "あなたの勝ち"
            case 2:
                msg = "あいこ"
            default:
                break
            }
        default:
            break
        }
        
        messageLabel.text = msg
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

