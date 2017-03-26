//
//  PastDetailViewController.swift
//  期末
//
//  Created by Huang Pi-Ling on 2017/3/26.
//  Copyright © 2017年 Huang Pi-Ling. All rights reserved.
//

import UIKit

class PastDetailViewController: UIViewController
{
    //接收資料用
    var Anime_info_selected:[String:String]!

    @IBOutlet weak var chinese_in_detail: UILabel!
    @IBOutlet weak var japanese_in_detail: UILabel!
    @IBOutlet weak var schedule_in_detail: UILabel!
    
    func edit_noti(noti:Notification)
    {
        Anime_info_selected = noti.userInfo as? [String:String]
        //將更新的資料存入
        self.chinese_in_detail.text = Anime_info_selected["中文名稱"]
        self.japanese_in_detail.text = Anime_info_selected["日文名稱"]
        self.schedule_in_detail.text = Anime_info_selected["追番進度"]
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //編輯頁面的通知（編輯、新增）
        let notificationName = Notification.Name("EditAnimeNoti")
        NotificationCenter.default.addObserver(self, selector: #selector(PastDetailViewController.edit_noti(noti:)), name: notificationName, object: nil)
        
        //將更新的資料存入
        self.chinese_in_detail.text = Anime_info_selected["中文名稱"]
        self.japanese_in_detail.text = Anime_info_selected["日文名稱"]
        self.schedule_in_detail.text = Anime_info_selected["追番進度"]
        // Do any additional setup after loading the view.
    }
    //準備把資料傳送到編輯頁面
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        //讓controller變成PastEditViewController
        let controller = segue.destination as! PastEditViewController
        //把這個變數傳送到編輯頁面相對應的變數裡
        controller.Anime_info_selected = self.Anime_info_selected
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation
     */
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    

}
