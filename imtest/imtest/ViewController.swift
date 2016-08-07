//
//  ViewController.swift
//  imtest
//
//  Created by 石山 洋 on 2016/08/07.
//  Copyright © 2016年 石山 洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imview: UIImageView!
    @IBAction func btnNext(sender: AnyObject) {
        imagenum = (imagenum + 1) % images.count
        imview.image = images[imagenum]
    }

    var images:[UIImage] = []
    var imagenum:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        images.append(UIImage(named: "Image0001.JPG")!)
        images.append(UIImage(named: "Image0002.JPG")!)
        images.append(UIImage(named: "Image0003.JPG")!)
        
        imview.image = images[imagenum]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

