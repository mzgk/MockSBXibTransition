//
//  InputViewController.swift
//  MockSBXibTransition
//
//  Created by mzgk on 2016/11/29.
//  Copyright © 2016年 mzgk. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var inputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonDismissTapped(_ sender: UIButton) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
