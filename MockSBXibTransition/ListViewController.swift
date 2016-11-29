//
//  ListViewController.swift
//  MockSBXibTransition
//
//  Created by mzgk on 2016/11/29.
//  Copyright © 2016年 mzgk. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var listLabel: UILabel!

    override func loadView() {
        if let view = UINib(nibName: "List", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView {
            self.view = view
        }
    }

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
