//
//  MovieList.swift
//  Movies
//
//  Created by Asmaa Tarek on 12/17/19.
//  Copyright © 2019 Asmaa Tarek. All rights reserved.
//

import Foundation
class MovieList
{
    var movieName:String
    var movieRate:String
    var movieImage:String
    var movieRelease:String
    var genre:[String]
    init(movieName:String,movieRate:String,movieImage:String,movieRelease:String,genre:[String]) {
        self.movieName = movieName
        self.movieRate = movieRate
        self.movieImage = movieImage
        self.movieRelease = movieRelease
        self.genre = genre
    }
  
}
