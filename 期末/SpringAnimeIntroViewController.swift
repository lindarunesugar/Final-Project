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
    @IBOutlet weak var time: UILabel!

    @IBOutlet weak var introduction: UITextView!
    
    
    @IBAction func plus_button(_ sender: UIButton)
    {
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()

        //傳入中文標題
        self.chinese.text = self.chinese_title
        //傳入日文標題
        self.japanese.text = self.japanese_title
        //顯示相對應之圖片
        self.picture.image = UIImage(named: chinese_title)
        
        //藉由判斷中文標題來決定要顯示該部動畫之方送日期及介紹
        switch self.chinese.text!
        {
            case "怪怪守護神":
                time.text = "放送日期：2017-04-02(星期日)"
                introduction.text = "「付喪神」－那是寄宿在人們漫長歲月中使用的器具或物品的思念所產生的妖精。母親所留下的遺物「櫻花腰帶」對一也來說，是片刻也不想離手的貴重物品，某日，突然受到了不可思議的物體的襲擊，而在那時出現救了一也的，是腰帶所幻化成的付喪神－桐葉。隨著桐葉的現身，一也開始學習面對和解決許多離奇現象，逐漸理解攸關已故母親不為人知的過去，與此同時，攸關人類和付喪神之間的問題也逐漸浮出檯面。"
            
            case "從零開始的魔法書":
                time.text = "放送日期：2017-04-10(星期一)"
                introduction.text = "「世界上存在著魔女，並有一種名為「魔術」的學問，但世人尚未知曉「魔法」這項技術的存在。某天，一位被輕蔑稱作「墮獸人」的半人半獸傭兵，在森林躲避追殺他的魔女時，偶然遇上了另一位魔女——零。在自稱零的魔女給予傭兵「變回人類」這項條件下，這名每天都夢想能夠變成人類的墮獸人傭兵，便與魔女締結契約，成為她的護衛，並與她展開尋訪魔法書《零之書》的旅程。"
            
            case "夏目友人帳 陸":
                time.text = "放送日期：2017-04-11(星期二)"
                introduction.text = "高中生夏目有靈異體質，能看見別人所看不到的。當他得到祖母的遺物「友人帳」之後，不論白天或晚上，開始有各式各樣的妖怪，紛紛找上門！原來夏目的祖母鈴子，也和夏目一樣有靈異體質，大家都對她敬而遠之。鈴子因為十分寂寞，便到處向妖怪下戰書，並要戰敗的妖怪交出名字，訂立服從的契約。而夏目拿到的，正是這本寫有眾多妖怪名字，能夠號令百妖，力量引人覬覦的「友人帳」！ 夏目在得知事情原委之後，決心要將「友人帳」上的名字， 一一還給被祖母擊敗的妖怪。而想要不費吹灰之力拿到友人帳的妖怪「貓咪老師」，則自願當保鑣，保護夏目和「友人帳」，共同踏上妖怪之旅！"
            
            case "重啟咲良田":
                time.text = "放送日期：2017-04-05(星期三)"
                introduction.text = "咲良田，一座看似平凡普通、安詳寧靜的城鎮，實際上城中半數居民都是擁有超能力並受到約束的「能力者」。就讀蘆原橋高中的淺井惠和春埼美空，正是「管理局」嚴密控管的對象， 因為惠與春埼合作的「重啟」指令，能夠讓世界回到三天前，使一切重新來過。為了讓管理局放寬監視而加入「服務社」的兩人，某天收到了一名少女的委託：「請讓我的貓復活！」惠和春埼為了救助貓咪，使用了「重啟」……"
            
            case "月色真美":
                time.text = "放送日期：2017-04-06(星期四)"
                introduction.text = "《月色真美》（日語：月がきれい）是由feel.製作的日本原創電視動畫作品，預定在2017年4月播出"
            
            case "信長的忍者～伊勢金金崎篇～":
                time.text = "放送日期：2017-04-07(星期五)"
                introduction.text = "作品為四格漫畫，於白泉社的《Young Animal》2008年第12號開始連載，以日本戰國為舞台，描寫少女忍者千鳥與主人織田信長以及愉快的夥伴們一起以天下統一為目標。雖然是搞笑漫畫，但作品中也含有不少戰國時代的逸聞及雜學，故事主軸也基本符合史實。一五五五年，時為戰國時代。有位青年懷抱着遠大的夢想，被人稱作大傻瓜的他正是後來的織田信長。有一位仰慕着青年的少女，被信長的夢想所吸引的她笑着說道「我要成為信長大人的忍者！」目標只有一個，那就是天下布武！"
            
            case "進擊的巨人 第2期":
                time.text = "放送日期：2017-04-01(星期六)"
                introduction.text = "進擊的巨人》故事圍繞在艾連·葉卡，寄養於他家裡的米卡莎·阿卡曼以及他們的童年玩伴阿爾敏·亞魯雷特的冒險。在保護他們家鄉的瑪利亞之牆被超大型巨人摧毀後，艾倫親眼看著自己的母親被一頭巨人吃掉，便發誓要殺光所有的巨人。於是、艾連與他們朋友們加入軍隊。五年後，三人從軍隊的訓練中畢業，他們在托洛斯特區談天時、巨人再度入侵。在隨後的戰鬥中，艾連在阿爾敏面前被一頭巨人吃掉。隨後、一頭不會攻擊人類、反而攻擊其它巨人的巨人加入戰場，在戰鬥結束後、該名巨人顯現出其真實身分即是艾連，他獲得一項能變成巨人的能力。他立刻被視為威脅，但在他協助軍隊奪回托洛斯特區後，考量到他對人類的貢獻及可能的危險，艾爾文長官仍決定接受他、並將他編入里維兵長旗下的特別作戰小組。在對希干希納區的調查中，調查兵團受到試圖奪取艾連的女型巨人的襲擊。調查兵團一度捉住了女型巨人，但之後讓她逃脫。阿爾敏推測女型巨人是自己在軍隊裡的同期生安妮，便策劃了一個計謀擒住她。在該次行動造成的連帶損傷中，揭示了人類居住區外的高牆內藏有多個巨人。在安妮之後，幾個艾連的朋友也透露了具有能變身成巨人的能力，他們皆是被送到人類陣營的間諜，目的是為了找到「座標」，後來證實具有「座標」能力、能控制其他巨人的巨人便是艾連。"

            default: break
            
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
