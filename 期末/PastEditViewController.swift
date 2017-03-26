//
//  PastEditViewController.swift
//  期末
//
//  Created by Huang Pi-Ling on 2017/3/26.
//  Copyright © 2017年 Huang Pi-Ling. All rights reserved.
//

import UIKit

class PastEditViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    var Anime_info_selected:[String:String]!
    
    //設置PickerView
    var schdule_picker = UIPickerView(frame: CGRect(x: 0,y: 0,width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/3))
    //設置PickerView內容
    var schdule_content = ["2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52"]
    
    //共有幾項
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 3
    }
    
    //每個row的數量
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        //第一列
        if component == 0
        {
            //第
            return 1
        }
        //第二列
        else if component == 1

        {
            //話數
            return schdule_content.count
        }
        //第三列
        else
        {
            //話
            return 1
        }
    }
    
    //pickerView的標題
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == 0
        {
            return "第"
        }
        else if component == 1
            
        {
            return schdule_content[row]
        }
        else
        {
            return "話"
        }
    }
    
    //選到之後
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        if component == 1
        {
            //存入textfield及array
            schedule_textfield.text = "第\(schdule_content[row])話"
            Anime_info_selected["追番進度"] = "第\(schdule_content[row])話"
        }
    }
    
    @IBOutlet weak var chinese_textfield: UITextField!
    @IBOutlet weak var japanese_textfield: UITextField!
    @IBOutlet weak var schedule_textfield: UITextField!
    
    @IBAction func save_button(_ sender: Any)
    {
        //將更改或新增的資料存入
        Anime_info_selected = ["中文名稱":self.chinese_textfield.text!,"日文名稱":self.japanese_textfield.text!,"追番進度":self.schedule_textfield.text!]
        //傳送通知
        let notificationName = Notification.Name("EditAnimeNoti")
        NotificationCenter.default.post(name: notificationName, object: nil, userInfo: Anime_info_selected)
        //回去前一個頁面
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //pickerView的設置
        schdule_picker.dataSource = self
        schdule_picker.delegate = self
        
        //將TextField的鍵盤換成PickerView
        schedule_textfield.inputView = schdule_picker
        
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
