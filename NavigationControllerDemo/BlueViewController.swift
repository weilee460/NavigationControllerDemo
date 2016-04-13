//
//  BlueViewController.swift
//  NavigationControllerDemo
//
//  Created by ying on 16/4/12.
//  Copyright © 2016年 ying. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //设置视图标题
        navigationItem.title = "Blue Scene"
        //
        let target = self.navigationController?.interactivePopGestureRecognizer!.delegate
        let pan = UIPanGestureRecognizer(target: target, action: "handleNavigationTransition:")
        pan.delegate = self
        view.addGestureRecognizer(pan)
        //禁用系统自带的滑动手势
        navigationController?.interactivePopGestureRecognizer!.enabled = false
    }
    
    func handleNavigationTransition(gestureRecognizer: UIGestureRecognizer,
                           shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer:
        UIGestureRecognizer) -> Bool {
        if self.childViewControllers.count == 1 {
            return false
        }
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
