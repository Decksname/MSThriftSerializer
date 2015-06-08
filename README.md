# MSThriftSerializer

[![CI Status](http://img.shields.io/travis/Maximilian Schenk/MSThriftSerializer.svg?style=flat)](https://travis-ci.org/Maximilian Schenk/MSThriftSerializer)
[![Version](https://img.shields.io/cocoapods/v/MSThriftSerializer.svg?style=flat)](http://cocoapods.org/pods/MSThriftSerializer)
[![License](https://img.shields.io/cocoapods/l/MSThriftSerializer.svg?style=flat)](http://cocoapods.org/pods/MSThriftSerializer)
[![Platform](https://img.shields.io/cocoapods/p/MSThriftSerializer.svg?style=flat)](http://cocoapods.org/pods/MSThriftSerializer)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MSThriftSerializer is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

##Usage

To use the MSSerializer just import `#import <MSThriftSerializer/MSThriftSerializer.h>`

To serialize your Thrift object to an NSData call the static method `+(NSData*) serialize:(id)object;` To restore your Thrift object from NSData you call `+(id) deserialize:(NSData*)data toClass:(Class)class;` 


##Example

```objective-c
//    Create example objects
NSLog(@"Creating example objects...");
SimpleObject* obj1 = [[SimpleObject alloc]initWithName:@"ExampleName" isAwesome:YES size:Size_SMALL];
SimpleObject* obj2 = [[SimpleObject alloc]initWithName:@"AnotherObject" isAwesome:NO size:Size_MEDIUM];

SimpleObjectList* list = [[SimpleObjectList alloc]initWithSomeIdentifier:@"ItsAnIdentifier" objects:@[obj1,obj2]];
NSLog(@"...done");

//    Convert the surroundiung object to bytes...
NSLog(@"Serialize it...");
NSData* data = [MSThriftSerializer serialize:list];
NSLog(@"...done");

//    ...and vice versa
NSLog(@"Deserialize it...");
SimpleObjectList* restoredThriftObject = [MSThriftSerializer deserialize:data toClass:SimpleObjectList.class];
NSLog(@"...done");

//    And here are some printouts.
NSLog(@"And this is inSide: %@",restoredThriftObject.description);

```



```ruby
pod "MSThriftSerializer"
```

## Author

Maximilian Schenk, decks@ok.de

## License

MSThriftSerializer is available under the MIT license. See the LICENSE file for more info.
