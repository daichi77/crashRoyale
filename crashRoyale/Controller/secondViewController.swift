//
//  secondViewController.swift
//  crashRoyale
//
//  Created by 石田大智 on 2019/07/15.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    var id: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let frameW = self.view.bounds.width
        let frameH = self.view.bounds.height
        let user = APIController.users?[id]
        self.view.backgroundColor = UIColor.white
        secondViewButton().setButton(vc: self)
        secondViewLabel().returnLabel(text: "名前:\(user!.name)", frameWidth: frameW , frameHeight: frameH,vc: self)
        secondViewLabel().returnLabel(text:"rank\(String(user!.rank))", frameWidth: frameW, frameHeight: frameH + 100,vc: self)
        secondViewLabel().returnLabel(text:"level:\(String(user!.expLevel))", frameWidth: frameW , frameHeight: frameH + 200,vc: self)
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func toFirst(){
        self.dismiss(animated: true, completion: nil)
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
