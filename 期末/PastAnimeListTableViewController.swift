//
//  PastAnimeListTableViewController.swift
//  期末
//
//  Created by Huang Pi-Ling on 2017/3/26.
//  Copyright © 2017年 Huang Pi-Ling. All rights reserved.
//

import UIKit

class PastAnimeListTableViewController: UITableViewController
{
    @IBOutlet var PastListTableView: UITableView!
    
    var Anime_info = [["中文名稱":"暗殺教室","日文名稱":"暗殺教室","追番進度":"第3話"],["中文名稱":"進擊的巨人","日文名稱":"進撃の巨人","追番進度":"第23話"]]
    
    //接收通知的判斷
    func edit_data(noti:Notification)
    {
        //接收到的資料，轉型成[String:String]
        let new = noti.userInfo as! [String:String]
        //判斷有沒有被選到
        if self.PastListTableView.indexPathForSelectedRow != nil
        {
            //有被選過->修改資料
            Anime_info[self.PastListTableView.indexPathForSelectedRow!.row] = new
        }
        else
        {
            //如果沒被選過->新增資料
            self.Anime_info.insert(new, at: Anime_info.count)
            //新增到最下面
        }
        
        //更新TableView
        self.PastListTableView.reloadData()
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let notificationName = Notification.Name("EditAnimeNoti")
        NotificationCenter.default.addObserver(self, selector: #selector(PastAnimeListTableViewController.edit_data(noti:)), name: notificationName, object: nil)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    //只有一個Section
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    //看資料中有多少
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Anime_info.count
    }

    //每個cell的高度
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 55
    }
    
    //把字典裡的內容放入待補舊番列表
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //讓cell變成PastListTableViewCell去存取cell上的物件
        let cell = tableView.dequeueReusableCell(withIdentifier: "PastCell", for: indexPath) as! PastListTableViewCell
        //每個row的資料
        let dic = Anime_info[indexPath.row]
        //把字典裡相對應的資料傳到舊番列表的label
        cell.chinese.text = dic["中文名稱"]
        cell.japanese.text = dic["日文名稱"]
        cell.schedule.text = dic["追番進度"]
        
        // Configure the cell...

        return cell
    }
 
    //準備把資料傳到下一頁
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        //如果觸發來到Detail頁面--PastDetailViewController
        if segue.destination is PastDetailViewController
        {
            //讓controller變成PastDetailViewController
            let controller = segue.destination as! PastDetailViewController
            //現在選到的row
            let indexPath = self.PastListTableView.indexPathForSelectedRow
            //令一個變數存入現在這個被選到的row的內容
            let anime_seleted = Anime_info[indexPath!.row]
            //把這個變數傳送到Detail頁面相對應的變數裡
            controller.Anime_info_selected = anime_seleted
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
