//
//  ViewController.swift
//  FileSavingCoreDataExercise
//
//  Created by 張智涵 on 2016/6/19.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var poemLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = NSBundle.mainBundle().pathForResource("Poem", ofType: "txt")
        do {
            let poem = try NSString(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
            print(poem)
            
        } catch {
            print(error)
        }
        do {
        poemLabel.text = try NSString(contentsOfFile: path!, encoding: NSUTF8StringEncoding) as String
        } catch {
            print("poem")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

