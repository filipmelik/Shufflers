//
// Created by Filip Melik on 29.06.15.
// Copyright (c) 2015 Filip Melik. All rights reserved.
//

import Foundation

/// Shuffle elements in the given array so you get them randomly ordered
public class ArrayShuffler
{
    public init() {}
    
    // TODO http://stackoverflow.com/questions/24026510/how-do-i-shuffle-an-array-in-swift
    public func shuffle(arrayToShuffle : Array<AnyObject>) -> Array<AnyObject>
    {
        self.assertGivenArrayIsNotEmpty(arrayToShuffle);
        
        var mutableInputArray = Array(arrayToShuffle);
        var shuffledArray = [AnyObject]();
        var randomIndex : Int;
        var objectAtRandomIndex : AnyObject;
        var arrayElementsCount : Int = mutableInputArray.count;
        
        for _ in mutableInputArray {
            randomIndex = self.getRandomArrayIndexInBounds(arrayElementsCount);
            objectAtRandomIndex = mutableInputArray[randomIndex];
            shuffledArray.append(objectAtRandomIndex);
            mutableInputArray.removeAtIndex(randomIndex);
            arrayElementsCount--;
        }
        
        return shuffledArray;
    }
    
    public func shuffleWithLimit(arrayToShuffle : Array<AnyObject>, limit : Int) -> Array<AnyObject>
    {
        self.assertGivenArrayIsNotEmpty(arrayToShuffle);
        
        let shuffledArray = self.shuffle(arrayToShuffle);
        let upperBound = limit - 1;
        let shuffledArraySlice = Array(shuffledArray[0...upperBound]);
        
        return shuffledArraySlice;
    }
    
    private func getRandomArrayIndexInBounds(arrayElementsCount : Int) -> Int
    {
        let upperBound = UInt32(arrayElementsCount);
        return Int(arc4random_uniform(upperBound));
    }
    
    private func assertGivenArrayIsNotEmpty(inputArray : Array<AnyObject>)
    {
        assert(!inputArray.isEmpty, "Supplied array cannot be empty");
    }
}

