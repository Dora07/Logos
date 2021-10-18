
import UIKit

class SecondViewController: UIViewController
{
    //第二頁的變數UserTextField型別為第一頁傳來的Date
    var  UserTextField : String!
   
    //確定第一頁資料有傳送過來的label
    @IBOutlet weak var UserThink: UILabel!
    //聖經標題
    @IBOutlet weak var BibleTitleLabel: UILabel!
    //聖經圖片
    @IBOutlet weak var BibleImage: UIImageView!
    //聖經內文
    @IBOutlet weak var BibleTextView: UITextView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
         //執行判斷
        BibleTest()
        //確定第一頁資料有傳送過來的label
        UserThink.text = UserTextField
      
    }
    
    //從使用者輸入判斷抽出經文內容
    func BibleTest()
    {
        //如果文字關於挫折
        if UserTextField?.contains("挫折") == true
        {   //聖經標題
            BibleTitleLabel.text = "【編號：1011幸福卡】"
            //聖經圖片
            BibleImage.image = UIImage(named: "1011")
            //聖經內容
            BibleTextView.text = "我們行善，不可喪志；若不灰心，到了時候就要收成。  你有一顆溫柔且善良的心，「為善不欲人知」是你做事的風格，對人真心誠意的付出，哪裡有需求你就會在那裡出現！但最近發生一些事情讓你感到很挫折，以致於你不斷地問自己：「我所做的好事都沒人看見甚至被曲解！我還要繼續下去嗎？」  上帝要鼓勵你不要灰心、不要放棄行善的能力，當你持之以恆的做，在你異想不到的時刻，祂會感動一些人，陸陸續續回來感謝你之前對他們的付出。"
        }
        //如果文字關於懊悔
        else if UserTextField?.contains("懊悔") == true
        {
            BibleTitleLabel.text = "【編號：1018幸福卡】"
            BibleImage.image = UIImage(named: "1018")
            BibleTextView.text = "又要以耶和華為樂， 他就將你心裏所求的賜給你。  窗外有美麗的風景，不要只看見自己裡面的需要或不足，切勿杞人憂天，或為無法挽回的事情懊悔不已！ 你必須打開你的心胸，放遠你的眼光。  今天上帝要對你說：「我愛你：勇敢的走出去，不要在乎別人的眼光，看看外面的世界！不要擔心害怕，因為有我陪著你，我要賜給你前所未有的平安，你將會迎向更寬廣丶更美好的人生！」"
        }
        else if UserTextField?.contains("領袖") == true
        {
            BibleTitleLabel.text = "【編號：1021幸福卡"
            BibleImage.image = UIImage(named: "1021")
            BibleTextView.text = "凡事不可結黨，不可貪圖虛浮的榮耀。  在群體當中你往往會成為眾人的焦點，很難忽略你散發出來的個人風采！所有很多人喜歡靠近你，想與你交談也常常尋求你的建議，很自然地成為極具影響力的意見領袖，你也非常享受這樣的感覺！不知不覺聚集了一群人，而把與你想法不同、價值理念不同的人排擠在外。  上帝要提醒你，當你享受鎂光燈的同時，要學習3顆心「謙卑心」、「憐憫心」、「同理心」，你將會大大地擴張生命的視野！"
        }
        else if UserTextField?.contains("心灰意冷") == true
        {
            BibleTitleLabel.text = "【編號：1002幸福卡】"
            BibleImage.image = UIImage(named: "1002")
            BibleTextView.text = "你們中間若有缺少智慧的，應當求那厚賜與眾人，也不斥責人的神，主就必賜給他。  你有一顆溫柔的心，也非常樂意去幫助別人，但常常事與願違的做錯事、說錯話、傳錯情，以致於讓你覺得心灰意冷、對人冷淡！  上帝說：「孩子我知道你的心，你已經做的很好！今天我要賜給你從天而來的智慧，有能力愛自己＆愛身邊的人！」"
        }
        else if UserTextField?.contains("自由") == true
        {
            BibleTitleLabel.text = "【編號：1090幸福卡】"
            BibleImage.image = UIImage(named: "1090")
            BibleTextView.text = "你們必曉得真理，真理必叫你們得以自由。  你是一位有能力又有定見的人，憑藉你豐富的經驗可以處理所有的人事物，甚至游刃有餘；但這些過往的經驗也把你緊緊的綁住，你期待有一個新的突破，像老鷹一樣可以自由的翱翔天際。  今天上帝要鼓勵你：「不要再倚靠自己有限的能力，你撐得太久了，已經感到十分的疲憊；來到我這裡吧！你將得到前所未有的自由，我將恢復你的身心靈，我的力量將成為你的力量！」"
        }
        else if UserTextField?.contains("失去") == true
        {
            BibleTitleLabel.text = "【編號：1017幸福卡】"
            BibleImage.image = UIImage(named: "1017")
            BibleTextView.text = "你們不要論斷人，就不被論斷；你們要饒恕人，就必蒙饒恕 。  你習慣用放大鏡檢視所有的人事物，你是一個有條不紊的人，凡事都先計劃丶計劃丶再計劃，你可以把事情做得非常的好，但是卻失去與人相處的快樂！   今天上帝要對你說：「孩子，我要送你一顆單純的心，回轉像小孩一樣，單純的與人互動，學習愛與包容。放輕鬆！你將會得到從天堂而來的喜樂與平安！」"
               }
        else{
                   BibleTitleLabel.text = "【編號：1036幸福卡】"
                BibleImage.image = UIImage(named: "1036")
                BibleTextView.text = "你們要將一切的憂慮卸給神，因為他顧念你們。  你習慣將還沒有發生的事情先放在心中，並且做最壞的打算，以致於肩頭的重擔始終無法卸下！憂慮丶擔心丶害怕常常捉住你，以致於你畫地自限！  看看天空的飛鳥，牠們不撒種、也不收藏糧食，上帝都照顧養活牠們；難道你不比飛鳥更寶貴嗎？上帝今天要安慰你：「我給你的是平安的意念，不是降下災難的意念！我愛你，我在乎你！將你擔心的事情交給我。」 "
           }
    }
  

}
