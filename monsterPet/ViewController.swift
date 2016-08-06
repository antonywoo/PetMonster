//
//  ViewController.swift
//  monsterPet
//
//  Created by Cex on 16/07/2016.
//  Copyright © 2016 newmediatechies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rab: UIImageView!
    @IBOutlet weak var food: DragIt!
    @IBOutlet weak var heart: DragIt!
    
    let DIM_ALPHA: CGFloat = 0.2
    let OPAQUE: CGFloat = 1.0
    let MAX_PENALITY = 3
    
    var penalties = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically froma nib.
    
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDrop:", name: "onTargetDrop", object: nil)
        
        let img1 = UIImage(named: "idle1.png")
        let img2 = UIImage(named: "idle2.png")
        let img3 = UIImage(named: "idle3.png")
        let img4 = UIImage(named: "idle4.png")
        
        var imgArr = [UIImage]()
        imgArr.append(img1!)
        imgArr.append(img2!)
        imgArr.append(img3!)
        imgArr.append(img4!)
        
        
        rab.animationImages = imgArr
        rab.animationDuration = 0.8
        rab.animationRepeatCount = 0
        rab.startAnimating()
        
        //food.dropTarget = imgArr

    }
    
    func itemDrop(notif: AnyObject) {
        print("dropped")
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("TOUCHED")
    }
}

