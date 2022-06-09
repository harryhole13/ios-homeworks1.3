//
//  PostViewController.swift
//  Navigation1.3
//
//  Created by Алексей Потемин on 08.06.2022.
//

import UIKit
 
struct Post {
    var title: String?
}



class PostViewController: UIViewController {
    
    var myPost: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = myPost?.title
        view.backgroundColor = .red
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(self.didTapButton))
        
        
    }
    
    @objc private func didTapButton() {
        let infoVC = UINavigationController(rootViewController: InfoViewController())
        //self.navigationController?.pushViewController(infoVC, animated: true)
        self.present(infoVC, animated: true, completion: nil)
    }


}
