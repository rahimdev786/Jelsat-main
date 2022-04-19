//
//  ViewController1.swift
//  JelsatApp
//
//  Created by Ali Almorshed on 05/04/22.
//

import UIKit

class ViewController1: UIViewController {
    
    @IBOutlet weak var scrollView1: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView1.delegate = self
    }
}

extension ViewController1 : UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let scrollHeight = scrollView1.contentOffset.y
        print(scrollHeight)
    }
}
