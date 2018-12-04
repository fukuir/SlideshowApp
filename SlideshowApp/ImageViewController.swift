import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageview: UIImageView!
    var image = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
