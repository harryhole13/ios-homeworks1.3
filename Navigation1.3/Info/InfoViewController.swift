//
//  ViewController.swift
//  Navigation1.3
//
//  Created by Алексей Потемин on 05.06.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    private lazy var alertButton: UIButton = {
        var button = UIButton(frame: CGRect(x: 20, y: 220, width: 250, height: 50))
        button.setTitle("Atention", for: .normal)
        button.setTitleColor(.red, for: .normal)
        
        button.backgroundColor = .white
        button.layer.cornerRadius = button.frame.height/2
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
        return button
    }()
    
    
    @objc private func didTapButton() {
        let alertInfo = UIAlertController(title: "End of quest", message: "Are you sure?", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "Sure", style: .default){ _ in
            print ("the quest is over")
            
        }
        let cancelAlert = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertInfo.addAction(okAction)
        alertInfo.addAction(cancelAlert)
        self.present(alertInfo, animated: true, completion: nil)
    
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Info"
        self.view.addSubview(alertButton)
        
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .green
     
    }


}

