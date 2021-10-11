//
//  ViewController.swift
//  GradeCaculatorapp
//
//  Created by Kenneth Johnson on 10/8/21.
//

import UIKit

class ViewController: UIViewController
{
    // Outlets

    @IBOutlet weak var gradeTotal: UILabel!
    
    @IBOutlet weak var yourCurrentGrade: UITextField!
    
    @IBOutlet weak var yourNeededGrade: UITextField!
    
    @IBOutlet weak var yourFinalExamWeight: UITextField!
    
    // Variables
    var total = ""
    
    var total1 = ""
    
    var total2 = ""
    
    var myInt1 = 0
    
    var myInt2 = 0
    
    var myInt3 = 0
    
    var totalGrade = 0.0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    //Buttons
    @IBAction func caculateNumbers(_ sender: Any)
    {
        total = yourCurrentGrade.text ?? ""
        total1 = yourNeededGrade.text ?? ""
        total2 = yourFinalExamWeight.text ?? ""
        
        myInt1 = Int(total) ?? 0
        myInt2 = Int(total1) ?? 0
        myInt3 = Int(total2) ?? 0
        
        //totalGrade = Double(("myInt1") + Double("myInt2") + Double("myInt3"))
        
    }
    
    
}

