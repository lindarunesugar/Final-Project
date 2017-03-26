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
    var Anime_info_selected:[String:String]!

    @IBOutlet weak var chinese_in_detail: UILabel!
    @IBOutlet weak var japanese_in_detail: UILabel!
    @IBOutlet weak var schedule_in_detail: UILabel!
    
    func edit_noti(noti:Notification)
    {
        Anime_info_selected = noti.userInfo as? [String:String]
        self.chinese_in_detail.text = Anime_info_selected["中文名稱"]
        self.japanese_in_detail.text = Anime_info_selected["日文名稱"]
        self.schedule_in_detail.text = Anime_info_selected["追番進度"]
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        let notificationName = Notification.Name("edit_anime_noti")
        NotificationCenter.default.addObserver(self, selector: #selector(PastDetailViewController.edit_noti(noti:)), name: notificationName, object: nil)
        
        self.chinese_in_detail.text = Anime_info_selected["中文名稱"]
        self.japanese_in_detail.text = Anime_info_selected["日文名稱"]
        self.schedule_in_detail.text = Anime_info_selected["追番進度"]
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let controller = segue.destination as! PastEditViewController
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
