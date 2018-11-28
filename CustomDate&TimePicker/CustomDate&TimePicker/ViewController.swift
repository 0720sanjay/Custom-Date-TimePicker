//
//  ViewController.swift
//  CustomDate&TimePicker
//
//  Created by Lalit Arya on 28/11/18.
//  Copyright © 2018 Lalit Arya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var theme: SambagTheme = .light
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func showSambagTimePickerViewController(_ sender: UIButton) {
        let vc = SambagTimePickerViewController()
        vc.theme = theme
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func showSambagMonthYearPickerViewController(_ sender: UIButton) {
        let vc = SambagMonthYearPickerViewController()
        vc.theme = theme
        vc.delegate = self
        present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction func showSambagDatePickerViewController(_ sender: UIButton) {
        let vc = SambagDatePickerViewController()
        vc.theme = theme
        vc.delegate = self
        present(vc, animated: true, completion: nil)
        
    }
    
}

extension ViewController: SambagTimePickerViewControllerDelegate {
    
    func sambagTimePickerDidSet(_ viewController: SambagTimePickerViewController, result: SambagTimePickerResult) {
        resultLabel.text = "\(result)"
        viewController.dismiss(animated: true, completion: nil)
    }
    
    func sambagTimePickerDidCancel(_ viewController: SambagTimePickerViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
}

extension ViewController: SambagMonthYearPickerViewControllerDelegate {
    
    func sambagMonthYearPickerDidSet(_ viewController: SambagMonthYearPickerViewController, result: SambagMonthYearPickerResult) {
        resultLabel.text = "\(result)"
        viewController.dismiss(animated: true, completion: nil)
    }
    
    func sambagMonthYearPickerDidCancel(_ viewController: SambagMonthYearPickerViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
}

extension ViewController: SambagDatePickerViewControllerDelegate {
    
    func sambagDatePickerDidSet(_ viewController: SambagDatePickerViewController, result: SambagDatePickerResult) {
        resultLabel.text = "\(result)"
        viewController.dismiss(animated: true, completion: nil)
    }
    
    func sambagDatePickerDidCancel(_ viewController: SambagDatePickerViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
}

