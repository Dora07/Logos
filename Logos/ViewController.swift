
import UIKit

class ViewController: UIViewController , UITextFieldDelegate
{
    //日期
    @IBOutlet weak var DateLabel: UILabel!
    //祈求textfield
    @IBOutlet weak var UserThinkTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
      TodayDate()
        //執行UITextFieldDelegate
        UserThinkTextField.delegate = self
       
        
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
    
    
    //當點擊鍵盤以外的畫面隱藏鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //按Return鍵隱藏鍵盤
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            UserThinkTextField.resignFirstResponder()
            return true
        }
    
    
    
    //將textfield資料傳遞至第二頁
    @IBSegueAction func UserSay(_ coder: NSCoder) -> SecondViewController?
    {
        let controller = SecondViewController(coder: coder)
        controller?.UserTextField = UserThinkTextField.text
        
        return controller
    }
  
    

    
    
    
    
    
}

