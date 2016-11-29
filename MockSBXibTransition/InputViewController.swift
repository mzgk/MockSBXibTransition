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
    @IBOutlet weak var dismissButton: UIButton!

    var isModal = false
    var text = "From Tab."

    // 必須
    override func loadView() {
        if let view = UINib(nibName: "Input", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView {
            self.view = view
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        // 閉じるボタンの制御
        if isModal {
            dismissButton.isHidden = false
        }
        else {
            dismissButton.isHidden = true
        }

        inputLabel.text = text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonListModalTapped(_ sender: UIButton) {
        // List.xibをModalで表示する
        let modal = ListViewController(nibName: "List", bundle: nil)
        modal.isModal = true
        modal.text = "From Modal."
        present(modal, animated: true, completion: nil)
    }

    @IBAction func buttonDismissTapped(_ sender: UIButton) {
        // Modalで来た場合のみ表示されるので、本来はDelegateで実装すること
        presentingViewController?.dismiss(animated: true, completion: nil)
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
