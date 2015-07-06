//
//  ArrayShufflerTest.swift
//  etesty
//
//  Created by Filip Melik on 29.06.15.
//  Copyright (c) 2015 Filip Melik. All rights reserved.
//

import UIKit
import XCTest
import Shufflers

class ArrayShufflerTest: XCTestCase {
    
    let arrayShuffler = ArrayShuffler();
    
    func testThatShuffledArrayIsNotEqualToInputArrayWithIntegers()
    {
        // given
        let inputArray = self.getIntegerInputArray();
        
        // when
        let shuffledArray = self.arrayShuffler.shuffle(inputArray) as! [Int];
        
        // then
        let errorMessage = "Shuffled array elements should have different order than input array";
        XCTAssertNotEqual(inputArray, shuffledArray, errorMessage);
    }
    
    func testThatShuffledArrayIsNotEqualToInputArrayWithStrings()
    {
        // given
        let inputArray = self.getStringInputArray();
        
        // when
        let shuffledArray = self.arrayShuffler.shuffle(inputArray) as! [String];
        
        // then
        let errorMessage = "Shuffled array elements should have different order than input array";
        XCTAssertNotEqual(inputArray, shuffledArray, errorMessage);
    }
    
    func testThatShuffledArrayHasEqualNumberOfElementsAsInputArray()
    {
        // given
        let inputArray = self.getIntegerInputArray();
        let inputArrayElementCount = inputArray.count;
        
        // when
        let shuffledArray = self.arrayShuffler.shuffle(inputArray);
        let shuffledArrayElementCount = shuffledArray.count;
        
        // then
        let errorMessage = "Shuffled array should have equal number of elements as the input array";
        XCTAssertEqual(inputArrayElementCount, shuffledArrayElementCount, errorMessage);
    }
    
    func testThatShuffleWithLimitReturnsOnlySpecifiedCountOfElements()
    {
        // given
        let inputArray = self.getIntegerInputArray();
        let inputArrayElementCount = inputArray.count;
        let limit = 5;
        
        // when
        let shuffledArray = self.arrayShuffler.shuffleWithLimit(inputArray, limit : limit) as! [Int];
        let shuffledArrayElementCount = shuffledArray.count;
        
        // then
        var errorMessage = "Number of shuffled array elements should not be same as the input array element count";
        XCTAssertNotEqual(inputArrayElementCount, shuffledArrayElementCount, errorMessage);
        errorMessage = "Number of shuffled array elements should be equal to given limit";
        XCTAssertEqual(shuffledArrayElementCount, limit, errorMessage)
    }
    
    private func getIntegerInputArray() -> [Int]
    {
        return [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    }
    
    private func getStringInputArray() -> [String]
    {
        return ["ghost", "tomato", "donald duck", "boom!"];
    }
    
}

