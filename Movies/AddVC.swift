//
//  AddVC.swift
//  Movies
//
//  Created by Asmaa Tarek on 12/17/19.
//  Copyright © 2019 Asmaa Tarek. All rights reserved.
//

import UIKit
protocol AddVCDelegate {
    func addMovie(movie:MovieList?)
}

class AddVC: UIViewController {
    
    @IBOutlet weak var movieName: UITextField!
    @IBOutlet weak var rateTxt: UITextField!
    @IBOutlet weak var releaseTxt: UITextField!
    @IBOutlet weak var genre1: UITextField!
    @IBOutlet weak var genre2: UITextField!
    @IBOutlet weak var genre3: UITextField!
    var newMovie:MovieList?
    var genreArr = [String]()
    var delegate : AddVCDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func saveBtnPressed(_ sender: UIButton) {
        genreArr.append(genre1.text ?? "")
        genreArr.append(genre2.text ?? "")
        genreArr.append(genre3.text ?? "")
        
         newMovie = MovieList(movieName: movieName.text ?? "", movieRate: rateTxt.text ?? "", movieImage: "new.png" , movieRelease: releaseTxt.text ?? "" , genre: genreArr)
        delegate?.addMovie(movie: newMovie)
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
    
}
