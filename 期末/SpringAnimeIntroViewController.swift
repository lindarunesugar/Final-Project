//
//  SpringAnimeIntroViewController.swift
//  期末
//
//  Created by Huang Pi-Ling on 2017/3/25.
//  Copyright © 2017年 Huang Pi-Ling. All rights reserved.
//

import UIKit

class SpringAnimeIntroViewController: ViewController {

    var chinese_title:String!
    var japanese_title:String!
    
    @IBOutlet weak var chinese: UILabel!
    @IBOutlet weak var japanese: UILabel!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var introduction: UILabel!
    @IBOutlet weak var time: UILabel!
    
    @IBAction func plus_button(_ sender: Any)
    {
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.chinese.text = self.chinese_title
        self.japanese.text = self.japanese_title
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
