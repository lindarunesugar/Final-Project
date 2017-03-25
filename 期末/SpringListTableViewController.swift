//
//  SpringListTableViewController.swift
//  期末
//
//  Created by Huang Pi-Ling on 2017/3/25.
//  Copyright © 2017年 Huang Pi-Ling. All rights reserved.
//

import UIKit

class SpringListTableViewController: UITableViewController
{
    let section = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"]
    let titles = [["怪怪守護神"],
                 ["從零開始的魔法書"],
                 ["夏目友人帳 陸"],
                 ["重啟咲良田"],
                 ["月色真美"],
                 ["信長的忍者～伊勢金金崎篇～"],
                 ["進擊的巨人 第2期"]]
    let subtitles = [["つぐもも"],
                     ["ゼロから始める魔法の書"],
                     ["夏目友人帳 陸"],
                     ["サクラダリセット"],
                     ["月がきれい"],
                     ["信長の忍び〜伊勢金々崎篇～"],
                     ["進撃の巨人 Season 2"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    
    //幾個section
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return self.section.count
    }
    
    //section的標題
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return self.section[section]
    }

    //每個section下row的數量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.titles[section].count
    }

    //每個cell的高度
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 69
    }
    
    //設定cell的內容
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)
        //出現小箭頭
        cell.accessoryType = .disclosureIndicator
        //標題--中文名稱
        cell.textLabel?.text = self.titles[indexPath.section][indexPath.row]
        //副標題--日文名稱
        cell.detailTextLabel?.text = self.subtitles[indexPath.section][indexPath.row]
        //設定副標題的顏色為darkGray
        cell.detailTextLabel?.textColor = UIColor .darkGray
        //設定cell上的圖片
        cell.imageView!.image = UIImage(named: self.titles[indexPath.section][indexPath.row])
        //設定圖片圓角
        cell.imageView?.layer.cornerRadius = 10
        cell.imageView?.layer.masksToBounds = true

        // Configure the cell...

        return cell
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
