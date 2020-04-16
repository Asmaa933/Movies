//
//  ViewController.swift
//  Movies
//
//  Created by Asmaa Tarek on 12/17/19.
//  Copyright © 2019 Asmaa Tarek. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var NameLbl: UILabel!
    
    @IBOutlet weak var rateLbl: UILabel!
    @IBOutlet weak var releaseLbl: UILabel!
    
    @IBOutlet weak var movieImage: UIImageView!
    
    var select: MovieList?

    @IBOutlet weak var gerneTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gerneTable.tableFooterView = UIView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NameLbl.text = select?.movieName ?? ""
        rateLbl.text = select?.movieRate ?? ""
        releaseLbl.text = select?.movieRelease ?? ""
        movieImage.image = UIImage.init(named: select?.movieImage ?? "1.jpg")
        gerneTable.reloadData()
       }
    
    @IBAction func saveBtnPressed(_ sender: UIButton) {
    }
    
}
extension DetailVC : UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  select?.genre.count ?? 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
      let cell = tableView.dequeueReusableCell(withIdentifier: "genre", for: indexPath)
        cell.textLabel?.text = select?.genre[indexPath.row] ?? ""
        return cell
    }
     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Genre"
    }

}

