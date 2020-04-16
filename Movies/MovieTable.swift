//
//  MovieTable.swift
//  Movies
//
//  Created by Asmaa Tarek on 12/17/19.
//  Copyright © 2019 Asmaa Tarek. All rights reserved.
//

import UIKit

class MovieTable: UITableViewController , AddVCDelegate {
    
    var arr = [MovieList]()
    @IBOutlet var movieTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTable.tableFooterView = UIView()
        fillArray()
     
    }
    func fillArray()
    {
        arr = [MovieList(movieName: "Forrest Gump", movieRate: "8.8", movieImage: "1.jpg", movieRelease: "1994", genre: ["Drama","Romance","Comedy"]),
               MovieList(movieName: "Les Mesriables", movieRate: "7.6", movieImage: "2.jpg", movieRelease: "2012", genre: ["Drama","History","Musical"]),
               MovieList(movieName: "You've Got Mail", movieRate: "6.6", movieImage: "3.jpg", movieRelease: "1998", genre: ["Drama","Romance","Comedy"]),
               MovieList(movieName: "Silver Linings Playbook", movieRate: "7.7", movieImage: "4.jpg", movieRelease: "2012", genre: ["Drama","Romance","Comedy"]),
               MovieList(movieName: "The Dark Knight", movieRate: "9", movieImage: "5.jpg", movieRelease: "2008", genre:  ["Action","Crime","Drama"] )
        ]
        
        
        
    }
    func addMovie(movie: MovieList?) {
        let add = self.storyboard?.instantiateViewController(withIdentifier: "addVC") as! AddVC

            if movie != nil {
                arr.append(movie!)
            }
        movieTable.reloadData()

        }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row].movieName
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detail = self.storyboard?.instantiateViewController(identifier: "detail") as? DetailVC
        {
            detail.select = arr[indexPath.row]
            self.navigationController?.pushViewController(detail, animated: true)
            
        }
        else
        {
            print("can't get")
        }
        
    }
    
    @IBAction func addBtnPressed(_ sender: UIBarButtonItem)
    {
        if let addVC = self.storyboard?.instantiateViewController(withIdentifier: "addVC") as? AddVC
        {
            addVC.delegate = self
            self.navigationController?.pushViewController(addVC, animated: true)
        }

    }
    
}
