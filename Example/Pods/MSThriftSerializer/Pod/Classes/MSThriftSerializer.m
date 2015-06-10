//
//  MSThriftSerializer.m
//  Pods
//
//  Created by Maximilian Schenk on 08.06.15.
//
//

#import "MSThriftSerializer.h"

#import "TMemoryBuffer.h"
#import "TBinaryProtocol.h"
#import "TBase.h"



@implementation MSThriftSerializer


+(NSData*) serialize:(id)object{
    
    TMemoryBuffer *tBuffer = [[TMemoryBuffer alloc] init];
    TBinaryProtocol *tProtocol = [[TBinaryProtocol alloc] initWithTransport:tBuffer];
    [object write:tProtocol];
    NSData *data = [tBuffer getBuffer];
    return data;
}

+(id) deserialize:(NSData*)data toClass:(Class)class{
    id object  = nil;
    if(data){
        @try {
            object = [[class alloc]init];
            TMemoryBuffer *tBuffer = [[TMemoryBuffer alloc] initWithData:data];
            TBinaryProtocol *tProtocol = [[TBinaryProtocol alloc] initWithTransport:tBuffer];
            [object read:tProtocol];
            
        }
        @catch (NSException *exception) {
            
            NSLog(@"Can't deserialize object (Data is: %@(%lu)). Should be class: <%@>", [data description],(unsigned long)data.length, [class description]);
        }
    }
    return object;
}
@end


