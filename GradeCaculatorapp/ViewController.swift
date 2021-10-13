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
    
    @IBOutlet weak var extraCredit: UILabel!
    
    
    
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
    
    
    //Caculate Button
    @IBAction func caculateNumbers(_ sender: Any)
    {
        total = yourCurrentGrade.text ?? ""
        total1 = yourNeededGrade.text ?? ""
        total2 = yourFinalExamWeight.text ?? ""
        
        myInt1 = Float(total) ?? 0.0
        myInt2 = Float(total1) ?? 0.0
        myInt3 = Float(total2) ?? 0.0
        
        //Important. Come here if you want equations like this
        
        totalGrade = (myInt2 - myInt1*(1-myInt3/100)) / (myInt3/100)
        gradeTotal.text = "\(totalGrade)"
        
        if totalGrade <= 100.0
        {
            self.view.backgroundColor = UIColor.green
        }
        else
        {
            self.view.backgroundColor = UIColor.red
        }
        
        if totalGrade >= 100.0
        {
            extraCredit.text = "You're good"
        }
        else
        {
            extraCredit.text = "Ask for Extra Credit"
        }
        
    }
    
    
    
    
    //Clear Button
    @IBAction func clearText(_ sender: Any)
    {
        yourCurrentGrade.text = ""
        yourNeededGrade.text = ""
        yourFinalExamWeight.text = ""
        extraCredit.text = "Grade Caculator"
        gradeTotal.text = "Total"
        self.view.backgroundColor = UIColor.white
        
    }
    
}

