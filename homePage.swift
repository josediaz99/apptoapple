import UIKit

class homePage: UIViewController {
    
    
    
    
    
    @IBOutlet weak var myCreditScore: UILabel!
    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var myIDLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = Users()
        let currUser = user.getCurrUser()
        myNameLabel.text = currUser.username
        myCreditScore.text = "\(currUser.creditScore)"
        myIDLabel.text = "#\(currUser.id)"
        
        
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
