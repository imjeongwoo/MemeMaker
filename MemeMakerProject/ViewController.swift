//
//  ViewController.swift
//  MemeMakerProject
//
//  Created by 임정우 on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func topAction(_ sender: Any) {
        let selectedIndex = topSegmentedControl.selectedSegmentIndex;
        let selectedFood = selectString(index: selectedIndex)
        
        topLabel.text = selectedFood
        viewImage()
    }
    
    @IBAction func bottomAction(_ sender: Any) {
        let selectedIndex = bottomSegmentedControl.selectedSegmentIndex;
        let selected = selectString2(index: selectedIndex)
        
        bottomLabel.text = selected
        viewImage()
    }
    
    func selectString(index: Int) -> String {
        if index == 0 {return "Pizza"}
        else if index == 1 {return "Hamburger"}
        else if index == 2 {return "Chicken"}
        else {return ""}
    }
    
    func selectString2(index: Int) -> String {
        if index == 0 {return "Normal"}
        else if index == 1 {return "Hot"}
        else {return ""}
    }
    
    func viewImage() {
        let food = selectString(index: topSegmentedControl.selectedSegmentIndex)
        let taste = selectString2(index: bottomSegmentedControl.selectedSegmentIndex)
        imageView.image = UIImage(named: taste + food)
    }
}

