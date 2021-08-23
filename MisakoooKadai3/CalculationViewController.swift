//
//  CalculationViewController.swift
//  MisakoooKadai3
//
//  Created by misakoarai on 2021/08/21.
//
import UIKit

class CalculationViewController: UIViewController {
    @IBOutlet private weak var numberTextField1: UITextField!
    @IBOutlet private weak var numberTextField2: UITextField!
    @IBOutlet private weak var enterdNumberLabel1: UILabel!
    @IBOutlet private weak var enterdNumberLabel2: UILabel!
    @IBOutlet private weak var calculationResultLabel: UILabel!
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    
    @IBAction private func didTapCalculationButton(_ sender: UIButton) {
        let number1 = Int(numberTextField1.text!) ?? 0
        let number2 = Int(numberTextField2.text!) ?? 0
        
        let signedNumber1 = switch1.isOn ? -number1 : number1
        let signedNumber2 = switch2.isOn ? -number2 : number2

        enterdNumberLabel1.text = String(signedNumber1)
        enterdNumberLabel2.text = String(signedNumber2)
        calculationResultLabel.text = String(signedNumber1 + signedNumber2)
    }
}
