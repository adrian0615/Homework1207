//
//  RandomTests.swift
//  CutUpText
//
//  Created by Adrian McDaniel on 12/15/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import XCTest
@testable import CutUpText

class RandomTests: XCTestCase {

    func testRandom() {
        print(shuffle(sentences: "Hey there", "How are you", "What are you up to?"))
    }

   

}
