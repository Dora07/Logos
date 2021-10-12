
import UIKit

class ViewController: UIViewController
{
    //日期
    @IBOutlet weak var DateLabel: UILabel!
    //祈求textfield
    @IBOutlet weak var UserThinkTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
      TodayDate()
       
        
    }

    //今天日期
    func TodayDate()
    {
        let Today = Date()
        let dateFormatter  = DateFormatter()
        //日期文字樣式
        dateFormatter.dateFormat = "今天是西元YYYY年MM月dd日"
          //日期地區
            dateFormatter.locale = Locale(identifier: "zh_TW")
            let TodayString = dateFormatter.string(from: Today)
            DateLabel.text =  TodayString
    }
    

}

