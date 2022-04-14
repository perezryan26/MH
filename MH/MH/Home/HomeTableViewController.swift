//
//  HomeTableViewController.swift
//  MH
//
//  Created by Ryan Perez on 3/27/22.
//

import UIKit

class HomeTableViewController: UITableViewController {

    let sections = ["FEATURED RECIPES", "LATEST"]
    let items = [["Pasta"],["Pasta","Spaghetti","Meatballs","Baked Potato"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let recipeCell = UINib.init(nibName: "RecipeCell", bundle: nil)
        self.tableView.register(recipeCell, forCellReuseIdentifier: "RecipeCell")
        let featureCell = UINib.init(nibName: "FeatureCell", bundle: nil)
        self.tableView.register(featureCell, forCellReuseIdentifier: "FeatureCell")
        let headerView = UINib.init(nibName: "HeaderView", bundle: nil)
        self.tableView.register(headerView, forHeaderFooterViewReuseIdentifier: "HeaderView")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        guard let section = CellSection(rawValue: indexPath.section) else { return 0 }
        
        switch section {
        case .featured:
            return 160
        case .latest:
            return 260
        }

    }
    
    
     
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        if let section = CellSection(rawValue: indexPath.section) {
            switch section {
            case .featured:
                // featured cell
                let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell", for: indexPath) as! FeatureCell
                return cell
            case .latest:
                // latest cell
                let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeCell
                return cell
            }
        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let featureCell = cell as? FeatureCell
        featureCell?.collectionView.delegate = self
        featureCell?.collectionView.dataSource = self
        
        let collectionViewCellNib = UINib.init(nibName: "FeaturedCollectionCell", bundle: nil)
        featureCell?.collectionView.register(collectionViewCellNib, forCellWithReuseIdentifier: "CollectionCell")
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderView") as! HeaderView
        headerView.headerLabel.text = sections[section]
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
}

extension HomeTableViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! FeaturedCollectionCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: 250, height: 120)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 16, bottom: 20, right: 16)
    }
}

enum CellSection: Int {
    case featured = 0, latest
}
