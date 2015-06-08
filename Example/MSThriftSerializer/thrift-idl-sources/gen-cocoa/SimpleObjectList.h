/**
 * Autogenerated by Thrift Compiler (0.9.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#import <Foundation/Foundation.h>

#import "TProtocol.h"
#import "TApplicationException.h"
#import "TProtocolException.h"
#import "TProtocolUtil.h"
#import "TProcessor.h"
#import "TObjective-C.h"
#import "TBase.h"

#import "SimpleObject.h"

@interface SimpleObjectList : NSObject <TBase, NSCoding> {
  NSString * __someIdentifier;
  NSMutableArray * __objects;

  BOOL __someIdentifier_isset;
  BOOL __objects_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=someIdentifier, setter=setSomeIdentifier:) NSString * someIdentifier;
@property (nonatomic, retain, getter=objects, setter=setObjects:) NSMutableArray * objects;
#endif

- (id) init;
- (id) initWithSomeIdentifier: (NSString *) someIdentifier objects: (NSMutableArray *) objects;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NSString *) someIdentifier;
- (void) setSomeIdentifier: (NSString *) someIdentifier;
#endif
- (BOOL) someIdentifierIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) objects;
- (void) setObjects: (NSMutableArray *) objects;
#endif
- (BOOL) objectsIsSet;

@end

@interface SimpleObjectListConstants : NSObject {
}
@end