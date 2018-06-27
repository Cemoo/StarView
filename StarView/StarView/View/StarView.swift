
//  Created by Cemal BAYRI on 8.04.2018.
//  Copyright © 2018 Cemal BAYRI. All rights reserved.
//

import UIKit

class StarView: UIView {

    @IBOutlet weak var star1: UIButton!
    @IBOutlet weak var star2: UIButton!
    @IBOutlet weak var star3: UIButton!
    @IBOutlet weak var star4: UIButton!
    @IBOutlet weak var star5: UIButton!
    
    var star1Selected = false
    var star2Selected = false
    var star3Selected = false
    var star4Selected = false
    var star5Selected = false
    
    var testSelected = false
    
    @IBOutlet weak var test: UIButton!
    var starCount: Int = 0
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // MARK: - setup
    fileprivate func setupView() {
        let view = viewFromNibForClass()
        view.frame = bounds
        view.autoresizingMask = [
            UIViewAutoresizing.flexibleWidth,
            UIViewAutoresizing.flexibleHeight
        ]
        addSubview(view)
        
    }
    
    /// Loads a XIB file into a view and returns this view.
    fileprivate func viewFromNibForClass() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    @IBAction func test(_ sender: UIButton) {
        if testSelected == false {
            testSelected = true
        } else {
            testSelected = false
        }
        
    }
    
    func giveStar(_ sender: UIButton) {
        DispatchQueue.main.async {
            self.removeRates()
            switch sender {
            case self.star1:
                self.star1.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star1Selected = true
                self.starCount = 1
                self.star1.tintColor = UIColor.yellow
                break
            case self.star2:
                self.star1.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star1Selected = true
                self.star1.tintColor = UIColor.yellow
                
                self.star2.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star2Selected = true
                self.starCount = 2
                self.star2.tintColor = UIColor.yellow
                break
            case self.star3:
                self.star1.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star1Selected = true
                self.star1.tintColor = UIColor.yellow
                
                self.star2.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star2Selected = true
                self.star2.tintColor = UIColor.yellow
                
                self.star3.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star3Selected = true
                self.starCount = 3
                self.star3.tintColor = UIColor.yellow
                break
                
            case self.star4:
                self.star1.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star1Selected = true
                self.star1.tintColor = UIColor.yellow
                
                self.star2.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star2Selected = true
                self.star2.tintColor = UIColor.yellow
                
                self.star3.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star3Selected = true
                self.star3.tintColor = UIColor.yellow
                
                self.star4.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star4Selected = true
                self.starCount = 4
                self.star4.tintColor = UIColor.yellow
                break
            case self.star5:
                self.star1.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star1Selected = true
                self.star1.tintColor = UIColor.yellow
                
                self.star2.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star2Selected = true
                self.star2.tintColor = UIColor.yellow
                
                self.star3.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star3Selected = true
                self.star3.tintColor = UIColor.yellow
                
                self.star4.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star4Selected = true
                self.star4.tintColor = UIColor.yellow
                
                self.star5.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                self.star5Selected = true
                self.starCount = 5
                self.star5.tintColor = UIColor.yellow
                break
                
            default:
                break
            }
           
            
        }
    }
    
    
    @IBAction func btnStar1Action(_ sender: UIButton) {
        giveStar(sender)
       
    }
    @IBAction func btnStar2Action(_ sender: UIButton) {
        giveStar(sender)
    }
    @IBAction func btnStar3Action(_ sender: UIButton) {
        giveStar(sender)
    }
    @IBAction func btnStar4Action(_ sender: UIButton) {
        giveStar(sender)
    }
    @IBAction func btnStar5Action(_ sender: UIButton) {
        giveStar(sender)
    }
   
    func rateAll() {
        DispatchQueue.main.async {
            self.subviews[0].subviews.forEach { (view) in
                if view is UIButton {
                    let view = view as! UIButton
                    view.setImage(#imageLiteral(resourceName: "star"), for: .normal)
                    view.tintColor = UIColor.yellow
                }
            }
        }
    }
    
    func rateFor(_ rateCount: Int) {
        switch rateCount {
        case 1:
            self.giveStar(star1)
        case 2:
            self.giveStar(star2)
        case 3:
            self.giveStar(star3)
        case 4:
            self.giveStar(star4)
        case 5:
            self.giveStar(star5)
        default:
            break
        }
        
    }
    
    func removeRates() {
        self.subviews[0].subviews.forEach { (view) in
            if view is UIButton {
                let view = view as! UIButton
                view.setImage(#imageLiteral(resourceName: "starwhite"), for: .normal)
                view.tintColor = UIColor.yellow
            }
        }
    }

}


