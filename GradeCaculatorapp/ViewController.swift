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
    
    var myInt1:Float = 0.0
    
    var myInt2:Float = 0.0
    
    var myInt3:Float = 0.0
    
    var totalGrade:Float = 0.0
    
    
    

    
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
        
        myInt1 = Float(total) ?? 0.0
        myInt2 = Float(total1) ?? 0.0
        myInt3 = Float(total2) ?? 0.0
        
        totalGrade = (myInt2 - myInt1*(1-myInt3/100)) / (myInt3/100)
        gradeTotal.text = "\(totalGrade)"
        
    }
    
    @IBAction func clearText(_ sender: Any)
    {
        
    }
    
}

