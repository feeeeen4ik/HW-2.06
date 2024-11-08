//
//  PersonViewController.swift
//  HW 2.06
//
//  Created by Феликс Антонович on 08.11.2024.
//

import UIKit

final class PersonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let MainVC = segue.source as? MainViewController else {
            return
        }
        
    }


}
