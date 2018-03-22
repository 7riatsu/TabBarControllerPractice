//
//  TabBarController.swift
//  TabBarControllerPractice
//
//  Created by 成田篤基 on 2018/03/23.
//  Copyright © 2018年 Atsuki Narita. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let blue = UIColor(red: 11.0 / 255, green: 78.0 / 255, blue: 160.0 / 255, alpha: 1.0)
        let black = UIColor(red: 48.0 / 255, green: 48.0 / 255, blue: 47.0 / 255, alpha: 1.0)
        let white = UIColor.white
        
        let cameraImage            = UIImage(named: "camera")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let highlightedCameraImage = UIImage(named: "highlighted_camera")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let carImage               = UIImage(named: "car")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let highlightedCarImage    = UIImage(named: "highlighted_car")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)

        UITabBar.appearance().barTintColor = blue
        UITabBar.appearance().isTranslucent = false
        
        let firstViewController = self.viewControllers![0]
        let secondViewController = self.viewControllers![1]
        
        firstViewController.tabBarItem  = UITabBarItem(title: "camera", image: cameraImage, selectedImage: highlightedCameraImage)
        secondViewController.tabBarItem = UITabBarItem(title: "car", image: carImage, selectedImage: highlightedCarImage)
        
        let normalAttributes: Dictionary! = [NSAttributedStringKey.foregroundColor: black]
        let selectedAttributes: Dictionary! = [NSAttributedStringKey.foregroundColor: white]
        
        UITabBarItem.appearance().setTitleTextAttributes(normalAttributes, for: UIControlState.normal)
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, for: UIControlState.selected)
        
    }
    
    func makeOriginalImage(name: String) -> UIImage {
        let image = UIImage(named: name)!
        let originalImage = image.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        return originalImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
