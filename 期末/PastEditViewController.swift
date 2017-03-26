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
        //將更改或新增的資料存入
        Anime_info_selected = ["中文名稱":self.chinese_textfield.text!,"日文名稱":self.japanese_textfield.text!,"追番進度":self.schedule_textfield.text!]
        let notificationName = Notification.Name("EditAnimeNoti")
        NotificationCenter.default.post(name: notificationName, object: nil, userInfo: Anime_info_selected)
        //回去前一個頁面
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //已有東西->從Detail頁面進來的，因此顯示原先輸入的原始資料
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
