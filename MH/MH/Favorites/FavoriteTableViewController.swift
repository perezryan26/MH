//
//  FavoriteTableViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit

class FavoriteTableViewController: UITableViewController {

    let items = ["pasta", "pasta", "pasta", "chicken"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recipeCell = UINib.init(nibName: "RecipeCell", bundle: nil)
        tableView.register(recipeCell, forCellReuseIdentifier: "RecipeCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    //Asks the data source for a cell to insert in a particular location of the table view
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeCell
        
        return cell
    }
   

}
