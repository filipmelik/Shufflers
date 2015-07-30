# ArrayShuffler

A simple helper class that randomly shuffles the elements in the given array.


## Installation

To install it simply add the following line to your Podfile:

<<<<<<< HEAD
pod 'ArrayShuffler', git: 'https://github.com/filipmelik/ArrayShuffler.git'
=======
    pod 'Shufflers', git: 'https://github.com/filipmelik/Shufflers.git'
>>>>>>> 08075b05aa9f712fa221fd84b5f57c40208893a6

## Usage

Shuffle the array

```swift
let inputArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
let arrayShuffler = ArrayShuffler();
let shuffledArray = arrayShuffler.shuffle(inputArray) as! [Int];
```

Shuffle the array and limit the number of returned elements to certain number

```swift
let inputArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
let limit = 5;
let arrayShuffler = ArrayShuffler();
let shuffledArray = arrayShuffler.shuffleWithLimit(inputArray, limit : limit) as! [Int];
```

## Author

Filip Melik

## License

MIT

