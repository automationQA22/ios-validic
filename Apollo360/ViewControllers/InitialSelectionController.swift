//
//  InitialSelectionController.swift
//  Apollo360
//
//  Created by Bhushan Rana on 11/04/22.
//

import UIKit

class InitialSelectionController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }


    @IBAction func nextAction(_ sender: SelectionButton) {
        let controller = DevicesController(nibName: "DevicesController", bundle: nil)
        self.navigationController?.pushViewController(controller, animated: true)
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

