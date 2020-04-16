//
//  MoviesTests.swift
//  MoviesTests
//
//  Created by Asmaa Tarek on 4/16/2019.
//  Copyright © 2020 Asmaa Tarek. All rights reserved.
//

import XCTest
@testable import Movies

class MoviesTests: XCTestCase {
    var movieTable: MovieTable!
    override func setUpWithError() throws {
movieTable = MovieTable()
    }

    func testArrCount(){
        movieTable.fillArray()
        XCTAssertEqual(movieTable.arr.count, 5)
        XCTAssertEqual(movieTable.arr[1].movieName , "Les Mesriabls")
    }
    override func tearDownWithError() throws {
        movieTable = nil
    }

 

}
