//
//  SecondViewController.swift
//  SeSAC Week3 BookLibrary
//
//  Created by 이명진 on 2022/07/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    static let identifier = "SecondViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = .systemRed
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        guard let vc = sb.instantiateViewController(withIdentifier: ThirdViewController.identifier) as? ThirdViewController else {
            return
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

    

}
