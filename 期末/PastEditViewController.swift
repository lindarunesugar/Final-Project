//
//  PastEditViewController.swift
//  期末
//
//  Created by Huang Pi-Ling on 2017/3/26.
//  Copyright © 2017年 Huang Pi-Ling. All rights reserved.
//

import UIKit

class PastEditViewController: UIViewController
{

    var Anime_info_selected:[String:String]!
    
    @IBOutlet weak var chinese_textfield: UITextField!
    @IBOutlet weak var japanese_textfield: UITextField!
    @IBOutlet weak var schedule_textfield: UITextField!
    
    
    @IBAction func save_button(_ sender: Any)
    {
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if Anime_info_selected != nil
        {
            self.chinese_textfield.text = Anime_info_selected["中文名稱"]
            self.japanese_textfield.text = Anime_info_selected["日文名稱"]
            self.schedule_textfield.text = Anime_info_selected["追番進度"]
        }
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
