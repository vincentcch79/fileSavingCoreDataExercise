//
//  AddViewController.swift
//  FileSavingCoreDataExercise
//
//  Created by 張智涵 on 2016/6/19.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {
    
    
    
    @IBOutlet weak var newIsbn: UITextField!
    @IBOutlet weak var newAuthor: UITextField!
    @IBOutlet weak var newType: UITextField!
    @IBOutlet weak var newPrice: UITextField!
    
    
    var updateBook: Book?
    
    
    let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext

    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        if let book = updateBook {
            newIsbn.text = book.isbn
            newType.text = book.title
            newAuthor.text = book.author
            newPrice.text = "\(book.price!)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func saveNewBook(sender: AnyObject) {
        
        
        
        if updateBook == nil {
            updateBook = NSEntityDescription.insertNewObjectForEntityForName("Book", inManagedObjectContext: managedObjectContext) as? Book
        }
        
        
       
        updateBook!.isbn = newIsbn.text
        updateBook!.author = newAuthor.text
        updateBook!.title = newType.text
        
       
        let formatter = NSNumberFormatter()
        formatter.generatesDecimalNumbers = true
        updateBook!.price = formatter.numberFromString(newPrice.text!) as? NSDecimalNumber
        
        appDelegate.saveContext()
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }

        
        
    

}
