//
//  ViewController.swift
//  SwiftSimpleAnimationSample
//
//  Created by tajika on 2016/01/22.
//  Copyright © 2016年 Tajika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var object01: BallView!
    @IBOutlet weak var object02: BallView!
    @IBOutlet weak var object03: BallView!
    @IBOutlet weak var object04: BallView!
    @IBOutlet weak var switch01: UISwitch!
    @IBOutlet weak var switch02: UISwitch!
    @IBOutlet weak var switch03: UISwitch!
    @IBOutlet weak var switch04: UISwitch!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchDisplay01(sender: UISwitch) {
        switchDisplay(object01, hidden: !sender.on)
    }

    @IBAction func switchDisplay02(sender: UISwitch) {
        switchDisplay(object02, hidden: !sender.on)
    }
    
    @IBAction func switchDisplay03(sender: UISwitch) {
        switchDisplay(object03, hidden: !sender.on)
    }
    
    @IBAction func switchDisplay04(sender: UISwitch) {
        switchDisplay(object04, hidden: !sender.on)
    }
    
    func switchDisplay(view: UIView, hidden: Bool) {
        view.hidden = hidden
    }
    
    @IBAction func startAnimate(sender: UIButton) {
        objectAnimation(object01, option: .CurveLinear)
        objectAnimation(object02, option: .CurveEaseIn)
        objectAnimation(object03, option: .CurveEaseOut)
        objectAnimation(object04, option: .CurveEaseInOut)
    }
    
    func objectAnimation(view: UIView, option: UIViewAnimationOptions) {
        UIView.animateWithDuration(0.7,
            delay: 0,
            options: option,
            animations: { () -> Void in
                view.frame.origin.y = 0
            }) { (Bool) -> Void in
                UIView.animateWithDuration(0.7,
                    delay: 0,
                    options: option,
                    animations: { () -> Void in
                        view.frame.origin.y = view.superview!.frame.size.height - view.frame.size.height
                    },
                    completion: nil
                )
        }
    }

}

