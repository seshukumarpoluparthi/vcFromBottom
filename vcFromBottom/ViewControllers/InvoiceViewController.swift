//
//  InvoiceViewController.swift
//  vcFromBottom
//
//  Created by apple on 10/1/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class InvoiceViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewTapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(viewTapGesture)
    }
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBAction func btn_ShowVCTapped(_ sender: UIButton) {
        guard let pushvc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
            else{
                return
        }
        pushvc.height = 400
        pushvc.presentDuration = 0.5
        pushvc.dismissDuration = 0.5
        present(pushvc, animated: true, completion: nil)
    }
}
