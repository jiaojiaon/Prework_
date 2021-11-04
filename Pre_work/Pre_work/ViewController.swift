//
//  ViewController.swift
//  Pre_work
//
//  Created by Jiao Jiao Ding on 11/4/21.
//

import UIKit

class ViewController: UIViewController {

        @IBOutlet weak var billAmountTextField: UITextField!
        @IBOutlet weak var tipAmountLabel: UILabel!
        @IBOutlet weak var tipControl: UISegmentedControl!
        @IBOutlet weak var totalLabel: UILabel!
        @IBOutlet weak var numberOfPersonSlider: UISlider!
        @IBOutlet weak var numberPerPersonLabel: UILabel!
        @IBOutlet weak var moneyPerPersonLabel: UILabel!
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            self.title = "Tip Calculator"
            billAmountTextField.becomeFirstResponder()
            view.backgroundColor = UIColor.white
        }
        @IBAction func numberOfPeopleSlider(_ sender: Any) {
            let bill = Double(billAmountTextField.text!) ?? 0
            let tipPercentages = [0.15, 0.18, 0.2]
            let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
            
            numberPerPersonLabel.text = "Money Per \(Int(self.numberOfPersonSlider.value)) People"

            let numberOfPeople: Int = Int(numberOfPersonSlider.value)
            moneyPerPersonLabel.text = String(format: "$%0.2f", total / Double(numberOfPeople))
        }


        @IBAction func calculateTip(_ sender: Any) {
            let bill = Double(billAmountTextField.text!) ?? 0
            let tipPercentages = [0.15, 0.18, 0.2]
            let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
            
            tipAmountLabel.text = String( format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("view will appear")
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("view will disappear")
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("view did disappear")
        }

}

