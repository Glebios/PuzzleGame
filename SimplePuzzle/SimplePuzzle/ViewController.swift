//
//  ViewController.swift
//  SimplePuzzle
//
//  Created by Gleb on 03.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var timerLabel: UILabel!
    
    var gameViewWidth: CGFloat = 0
    var blockWidth: CGFloat = 0
    
    var xCenter: CGFloat = 0
    var yCenter: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBlock()
    }
    
    func createBlock() {
        gameViewWidth = gameView.frame.size.width
        blockWidth = gameViewWidth / 4
        
        xCenter = blockWidth / 2
        yCenter = blockWidth / 2
        
        for _ in 0..<4 {
            for _ in 0..<4 {
                let blockFrame: CGRect = CGRect(x: 0, y: 0, width: blockWidth - 5, height: blockWidth - 5)
                let blockView: UILabel = UILabel(frame: blockFrame)
                blockView.backgroundColor = .darkGray
                blockView.center = CGPoint(x: xCenter, y: yCenter)
                gameView.addSubview(blockView)
                
                xCenter = xCenter + blockWidth
            }
            xCenter = blockWidth / 2
            yCenter = yCenter + blockWidth
        }
    }
    
    
    @IBAction func resetAction(_ sender: Any) {
        
    }
    
}

