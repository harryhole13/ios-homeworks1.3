//
//  FeedViewController.swift
//  Navigation1.3
//
//  Created by Алексей Потемин on 05.06.2022.
//

import UIKit






class FeedViewController: UIViewController {
    
    private lazy var postButton: UIButton = {
        var button = UIButton(frame: CGRect(x: 20, y: 150, width: 250, height: 50))
        button.setTitle("Press for my first post", for: .normal)
        button.setTitleColor(.red, for: .normal)
        
        button.backgroundColor = .white
        button.layer.cornerRadius = button.frame.height/2
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
               
        return button
    }()
    
    var myPost = Post(title: "This is my first post")
    
    


    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Lenta"
        self.view.addSubview(postButton)
        
        
        //tabBarItem.title = "лента"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        //navigationController?.navigationBar.largeTitleDisplayMode = .always

        view.backgroundColor = .purple
    }
    
    
    @objc private func didTapButton() {
        let postVC = PostViewController()
        self.navigationController?.pushViewController(postVC, animated: true)
        postVC.myPost = self.myPost
    
    }



}
