//
//  ViewController.swift
//  Localization
//
//  Created by Евгений Ерофеев on 24.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var pushMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pushMeButton.setTitle("push_me".localized, for: .normal)
    }
    
    private func showAlert() {
        let alert = UIAlertController(title: "question".localized, message: "question_message".localized, preferredStyle: .alert)
        let cancelButton = UIAlertAction(title: "sorry".localized, style: .cancel, handler: { _ in
            alert.dismiss(animated: true, completion: nil)
        })
        let okButton = UIAlertAction(title: "you_asked_me".localized, style: .default, handler: { _ in
            alert.dismiss(animated: true, completion: nil)
        })
        alert.addAction(cancelButton)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func pushMeTapped() {
        showAlert()
    }
    
}

