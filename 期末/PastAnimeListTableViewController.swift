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
    
    var Anime_info = [["中文名稱":"暗殺教室","日文名稱":"暗殺教室","追番進度":"第3話"],["中文名稱":"暗殺教室","日文名稱":"暗殺教室","追番進度":"第3話"]]
    
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Anime_info.count
    }

    //每個cell的高度
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 55
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PastCell", for: indexPath) as! PastListTableViewCell
        let dic = Anime_info[indexPath.row]
        cell.chinese.text = dic["中文名稱"]
        cell.japanese.text = dic["日文名稱"]
        cell.schedule.text = dic["追番進度"]
        
        // Configure the cell...

        return cell
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.destination is PastDetailViewController
        {
            let controller = segue.destination as! PastDetailViewController
            let indexPath = self.PastListTableView.indexPathForSelectedRow
            let anime_seleted = Anime_info[indexPath!.row]
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
