//
//  BlueViewController.swift
//  RetainCycleApp
//
//  Created by JK on 2020/05/11.
//  Copyright © 2020 codesquad. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(forName: PurpleViewController.NotificationSomething, object: nil, queue: nil) { [weak self] (notification) in
            guard let strongSelf = self else { return }

            DispatchQueue.main.async {
                strongSelf.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    @IBAction func eventHandler(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
