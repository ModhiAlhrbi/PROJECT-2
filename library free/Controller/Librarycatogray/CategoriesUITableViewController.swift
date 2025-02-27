//
//  CategoriesUITableViewController.swift
//  library free
//
//  Created by موضي الحربي on 04/04/1443 AH.
//

import UIKit

class CategoriesUITableViewController: UITableViewController {
    
    // this Array displays book crumbs with pictures, and it has been translated into Arabic
    
    let categories = [
        Categories2(name: "Philosophy".localized, image1: UIImage(named: "philosophy-icon")!),
        Categories2(name: "KdisStories".localized, image1: UIImage(named: "kids.story1")!),
        Categories2(name: "Law".localized, image1: UIImage(named: "law.icon")!),
        Categories2(name: "MedicineAndHealth".localized, image1: UIImage(named: "books-health")!),
        Categories2(name: "Astronomy".localized, image1: UIImage(named: "astronmy2")!),
        Categories2(name: "Psychology".localized, image1: UIImage(named: "psychology1")!),
        
        Categories2(name: "Sociology".localized, image1: UIImage(named: "soclology")!),
        
        Categories2(name: "customsAndTraditions".localized, image1: UIImage(named: "scustoms1")!),
        
        Categories2(name: "Archeology".localized, image1: UIImage(named: "archaeology-icon")!)
        
    ]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categories.count
    }
    
    //this func for to link the categories of books and their images to a cell and then display them in rows
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as! ListTableViewCell
        
        cell.BookLbl.text = categories[indexPath.row].name
        cell.bookImage.image = categories[indexPath.row].image1
        
        return cell
    }
    
    
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
extension String {
    
    
    var localized : String {
        
        return NSLocalizedString(self, comment: "")
        
    }
}
