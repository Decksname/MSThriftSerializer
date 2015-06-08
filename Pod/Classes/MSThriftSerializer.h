//
//  MSThriftSerializer.h
//  Pods
//
//  Created by Maximilian Schenk on 08.06.15.
//
//

#import <Foundation/Foundation.h>



@interface MSThriftSerializer : NSObject


+(NSData*) serialize:(id)object;
+(id) deserialize:(NSData*)data toClass:(Class)class;

@end
