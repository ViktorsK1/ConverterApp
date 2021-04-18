//
//  ViewController.swift
//  ConverterApp
//
//  Created by Виктор Куля on 14.04.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        typeMeasureFirst.isHidden = true
        typeMeasureSecond.isHidden = true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        
        typeMeasureFirst.isHidden = false
        typeMeasureSecond.isHidden = false

        switch segmentedControl.selectedSegmentIndex {
        case 0:
            typeMeasureFirst.text = "Cº"
            typeMeasureSecond.text = "Fº"
            view.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        case 1:
            typeMeasureFirst.text = "kg"
            typeMeasureSecond.text = "lb"
            view.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        case 2:
            typeMeasureFirst.text = "km"
            typeMeasureSecond.text = "mi"
            view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        default:
            print("Somthing wrong!")
        }
    }
    

    
    @IBOutlet weak var typeMeasureFirst: UILabel!
    @IBOutlet weak var typeMeasureSecond: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var firstTF: UITextField!
    @IBOutlet weak var secondTF: UITextField!
    
    @IBAction func calculateButton(_ sender: UIButton) {

        switch segmentedControl.selectedSegmentIndex {
        case 0:
//First option
//            let temperatureCelsius = firstTF.text
//            let temperatureFahrenheit = Int(temperatureCelsius!)! * 9/5 + 32
//            secondTF.text = "\(temperatureFahrenheit)ºF"

        //            let temperatureFahrenheit = secondTF.text
        //            let temperatureCelsius = (temperatureFahrenheit - 32) * 5/9
        //            firstTF.text = "\(temperatureCelsius)ºC"
        
//Second option
            if let firstTF = firstTF.text, let temperatureCelsius = Int(firstTF) {
                let temperatureCelsius = firstTF
                let temperatureFahrenheit = Int(temperatureCelsius)! * 9/5 + 32
                secondTF.text = "\(temperatureFahrenheit)"
            } else if let secondTF = secondTF.text, let temeperatureFahrenheit = Int(secondTF) {
                let temperatureFahrenheit = secondTF
                let temperatureCelsius = (Int(temperatureFahrenheit)! - 32) * 5/9
                firstTF.text = "\(temperatureCelsius)"
            }

//"\(temperatureFahrenheit)ºF"
//"\(temperatureCelsius)ºC"
//Third option
//            enum Temperature: Int {
//                case celcius = 0
//                case fahrenheit = 1
//
//                func convert(to temperature: Temperature) -> Double {
//
//                }
//            }

        case 1:
            
            if let firstTF = firstTF.text, let weightKG = Int(firstTF) {
                let weightKG = firstTF
                let weightLB = round((Double(weightKG)! / Double(0.45359237)) * 10) / 10.0
                secondTF.text = "\(weightLB)"
            } else if let secondTF = secondTF.text, let weightLB = Int(secondTF) {
                let weightLB = secondTF
                let weightKG = round((Double(weightLB)! * Double(0.45359237)) * 10) / 10.0
                firstTF.text = "\(weightKG)"
            }
            

        case 2:
            
            if let firstTF = firstTF.text, let speedKM = Int(firstTF) {
                let speedKM = firstTF
                let speedMI = round((Double(speedKM)! / Double(1.609344)) * 10) / 10.0
                secondTF.text = "\(speedMI)"
            } else if let secondTF = secondTF.text, let speedMI = Int(secondTF) {
                let speedMI = secondTF
                let speedKM = round((Double(speedMI)! * Double(1.609344)) * 10) / 10.0
                firstTF.text = "\(speedKM)"
            }

            
        
        default:
            firstTF.text = "Wrong data! Pls, change type."
            firstTF.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            secondTF.text = "Wrong data! Pls, change type."
            secondTF.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
        
    }

    
    
}


