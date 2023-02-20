//
//  ViewController.swift
//  elementquiz
//
//  Created by SD on 20/02/2023.
//

import UIKit




class ViewController: UIViewController {
    
    let elementList = ["Carbon", "Gold", "Chlorine",
                       "Sodium"]
    
    @IBOutlet weak var imageView: UIImageView!
  
   
    @IBAction func showAnwser(_ sender: Any) {
    }
    
    
    @IBOutlet weak var answerLabel: UILabel!
    

  
    @IBAction func next(_ sender: Any) {
        currentElementIndex += 1
        updateElement()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        updateElement()
      
    }
    
     
      
    
    
    var currentElementIndex = 0
    
    func updateElement() {
        let elementName =
        elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        answerLabel.text = "?"
        
    }
    
    
@IBAction func showAnswer(_ sender: Any) {
        answerLabel.text =
           elementList[currentElementIndex]
    }

 
    

 
    
}



