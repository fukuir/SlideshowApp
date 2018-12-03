import UIKit

class ViewController: UIViewController {

    @IBAction func button(_ segue: UIStoryboardSegue) {
        self.timer?.invalidate()
        timer = nil
    }
    @IBOutlet weak var button: UIButton!
    
    @IBAction func spTimer(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
        }else{
            self.timer?.invalidate()
            timer = nil
        }
    }
    
    @IBAction func nextTimer(_ sender: Any) {
        if self.timer != nil{
            
        }else{
            dispImageNo += 1
            displayImage()
        }
    }
    
    @IBAction func prevTimer(_ sender: Any) {
        if self.timer != nil{
            
        }else{
            dispImageNo -= 1
            displayImage()
        }
    }
    
    var timer: Timer?

    var dispImageNo = 0
    let imageNameArray = [
        "IMG_5588.JPG",
        "IMG_5589.JPG",
        "IMG_5590.JPG",
        "IMG_5593.JPG",
        "IMG_5596.JPG",
        "IMG_5597.JPG",
        ]
    func displayImage() {
        
        // 画像の名前の配列

        

        if dispImageNo < 0 {
            dispImageNo = 5
        }
        
        if dispImageNo > 5 {
            dispImageNo = 0
        }

        let name = imageNameArray[dispImageNo]
        

        let image = UIImage(named: name)
        
        button.setImage(image, for: .normal)

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "IMG_5588.JPG")
        
        button.setImage(image,for: .normal)
    }
    
    @objc func onTimer(_ timer: Timer) {

        dispImageNo += 1

        displayImage()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let imageViewController:ImageViewController = segue.destination as! ImageViewController
        let name = imageNameArray[dispImageNo]
        
        
        let image = UIImage(named: name)
        imageViewController.image = image!
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
