
import UIKit

@IBDesignable
class YourView: UIView
{
    @IBInspectable var blockColor:UIColor = UIColor.gray{
        didSet{
            backgroundColor = blockColor
        }
    }

    @IBInspectable var conerRounding:CGFloat = 10{
        didSet{
            layer.cornerRadius = conerRounding
        }
    }

    func setupLayer(){
        grandientLayer.colors = [top1Color.cgColor, bottom2Color.cgColor]
        grandientLayer.frame = self.bounds
        layer.addSublayer(grandientLayer)
        layer.cornerRadius = cornerRounding
        self.clipsToBounds = true
    }
    
    var grandientLayer = CAGradientLayer()
    
    @IBInspectable var top1Color: UIColor = UIColor.lightGray{
        didSet{
            grandientLayer.colors = [top1Color.cgColor, bottom2Color.cgColor]
        }
    }
    
    @IBInspectable var bottom2Color: UIColor = UIColor.gray{
        didSet{
            grandientLayer.colors = [top1Color.cgColor, bottom2Color.cgColor]
        }
    }

    @IBInspectable var cornerRounding:CGFloat = 10{
        didSet{
            layer.cornerRadius = cornerRounding
        }
    }
    
    override func prepareForInterfaceBuilder() {

//        top1Color = UIColor.lightGray
//        bottom2Color = UIColor.blue
        setupLayer()
    }
    
    override func awakeFromNib() {
        setupLayer()
    }
}
