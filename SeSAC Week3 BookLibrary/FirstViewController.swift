//
//  FirstViewController.swift
//  SeSAC Week3 BookLibrary
//
//  Created by 이명진 on 2022/07/21.
//

import UIKit

class FirstViewController: UIViewController {
    
    static let identifier = "FirstViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "검색"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(xbuttonTapped))
        
        view.backgroundColor = .systemGray4
    }
    
    @objc func xbuttonTapped() {
        self.dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
