//
//  SelectionTableViewController.swift
//  Soap
//
//  Created by yuling on 2017/10/27.
//  Copyright © 2017年 yuling. All rights reserved.
//

import UIKit

enum selectionComponent {

    case title
    
    case selection
    
}

enum selectionDetailComponent {
    
    case material
    
    case feature
}

class SelectionTableViewController: UITableViewController {
    
    let components: [selectionComponent] = [ .title, .selection ]
    
    let detailComponents: [selectionDetailComponent] = [.material, .feature]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorStyle = .none

        setupTableView()
    }
    
    func setupTableView() {
        
        let titleNib = UINib(
            nibName: "TitleTableViewCell",
            bundle: nil
        )
        
        tableView.register(
            titleNib,
            forCellReuseIdentifier: "TitleTableViewCell"
        )
    
        let selectionNib = UINib(
            nibName: "SelectionTableViewCell",
            bundle: nil
        )
        
        tableView.register(
            selectionNib,
            forCellReuseIdentifier: "SelectionTableViewCell"
        )
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return components.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let component = components[section]
        
        switch component {
        case .title:
            
            return 1
            
        case .selection:
            
            return detailComponents.count
        
        }
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let component = components[indexPath.section]
        
        switch component {
            
        case .title:
            
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "TitleTableViewCell",
                for: indexPath
            ) as! TitleTableViewCell
            
            return cell
            
        case .selection:
            
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "SelectionTableViewCell",
                for: indexPath
            ) as! SelectionTableViewCell
            
            return cell
            
        }

    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 44.0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let component = components[indexPath.section]
        
        switch component {
            
        case .title, .selection:
            
            return UITableViewAutomaticDimension
        
        }
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
