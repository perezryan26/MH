//
//  HomeTableViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit

class HomeTableViewController: UITableViewController {

    //sample data
    let sections = ["FEATURED RECIPES", "LATEST"]
    let featuredItems = ["Cheeseburger", "Lemon Pepper Chicken", "Spaghetti"]
    let latestItems = ["Lobster", "Caesar Salad", "Tomato Soup", "Tortellini", "Brisket"]
    let typeItems = ["Seafood", "Salad", "Soup", "Pasta", "Meat"]
    let timeItems = ["45 minutes", "10 minutes", "1 hour", "2 hours", "12 hours"]
    let skillItems = ["Hard", "Easy", "Medium", "Hard", "Medium"]
    let peopleItems = ["2 People", "1 Person", "4 People", "2 People", "4 People"]
    
    //called when you create the class and load from xib, used for initial setup and one time
    //only work
    override func viewDidLoad() {
        super.viewDidLoad()

        let recipeCell = UINib.init(nibName: "RecipeCell", bundle: nil)
        self.tableView.register(recipeCell, forCellReuseIdentifier: "RecipeCell")
        let featureCell = UINib.init(nibName: "FeatureCell", bundle: nil)
        self.tableView.register(featureCell, forCellReuseIdentifier: "FeatureCell")
        let headerView = UINib.init(nibName: "HeaderView", bundle: nil)
        self.tableView.register(headerView, forHeaderFooterViewReuseIdentifier: "HeaderView")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.hidesBackButton = true
    }
    

    // MARK: - Table view data source

    //asks the data source to return the number of sections in the table view
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    //askes the delegate for the height to use for a row in a specified location
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        guard let section = CellSection(rawValue: indexPath.section) else { return 0 }
        
        switch section {
        case .featured:
            return 160
        case .latest:
            return 260
        }

    }
    
    //used to determine the number of rows in each cell section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let section = CellSection(rawValue: section) else { return 0 }
        
        switch section {
        case .featured:
            return 1
        case .latest:
            return latestItems.count
        }
        //return 2 //featuredItems[section].count
    }

    //used to set the attributes for each cell in a section
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        //optional binding
        if let section = CellSection(rawValue: indexPath.section) {
            switch section {
            case .featured:
                // featured cell
                let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell", for: indexPath) as! FeatureCell
                return cell
                
            case .latest:
                // latest cell
                let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeCell
                cell.FoodLabel.text = latestItems[indexPath.row]
                cell.TypeLabel.text = typeItems[indexPath.row]
                cell.TimeLabel.text = timeItems[indexPath.row]
                cell.SkillLabel.text = skillItems[indexPath.row]
                cell.PeopleLabel.text = peopleItems[indexPath.row]
                
                return cell
            }
        }
        return cell
    }

    //tells the delegate the table view is about to draw a cell for a particular row
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let featureCell = cell as? FeatureCell
        featureCell?.collectionView.delegate = self
        featureCell?.collectionView.dataSource = self
        
        let collectionViewCellNib = UINib.init(nibName: "FeaturedCollectionCell", bundle: nil)
        featureCell?.collectionView.register(collectionViewCellNib, forCellWithReuseIdentifier: "CollectionCell")
    }
    
    //asks the delegate for a view to display in the header of the specified section of the table view
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderView") as! HeaderView
        headerView.headerLabel.text = sections[section]
        return headerView
    }
    
    //asks the delegate for the height to use for the header of a particular section
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
}

//setups the collection view controller in the home table view controller
extension HomeTableViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //adds collection view to table view controller
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    //adds each collection view cell to collection view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! FeaturedCollectionCell
        return cell
    }
    
    //sets the size for each collection view cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: 250, height: 120)
        return size
    }
    
    //sets the constraints for each collection view cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 16, bottom: 20, right: 16)
    }
}

//defines a common type for a group of related values
enum CellSection: Int {
    case featured = 0, latest
}
