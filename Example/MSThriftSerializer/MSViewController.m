//
//  MSViewController.m
//  MSThriftSerializer
//
//  Created by Maximilian Schenk on 06/08/2015.
//  Copyright (c) 2014 Maximilian Schenk. All rights reserved.
//

#import "MSViewController.h"

#import "thrift-idl-sources/gen-cocoa/SimpleObject.h"
#import "thrift-idl-sources/gen-cocoa/SimpleObjectList.h"

#import <MSThriftSerializer/MSThriftSerializer.h>

@interface MSViewController ()

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
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
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
