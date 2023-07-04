//
//  FirstViewController.swift
//  HW_2.04
//
//  Created by Бийбол Зулпукаров on 4/7/23.
//

import UIKit

protocol SecondViewControllerDelegate {
    func setupColor(color: UIColor)
}

class FirstViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.mainViewColor = view.backgroundColor
        secondVC.delegate = self
    }
    
}

extension FirstViewController: SecondViewControllerDelegate {
    func setupColor(color: UIColor) {
        view.backgroundColor = color
    }
}
