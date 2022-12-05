//
//  BridgeHolder.h
//  ListsExamples
//
//  Created by Георгий Мишин on 04.12.2022.
//

#import <React/RCTBridge.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>

#ifndef BridgeHolder_h
#define BridgeHolder_h

@interface BridgeHolder : NSObject
- (instancetype) initWithBridgeAdapter: (RCTSurfacePresenterBridgeAdapter*) bridgeAdapter;
- (instancetype) init;
- (RCTSurfacePresenterBridgeAdapter* ) getBridgeAdapter;
@end


#endif /* BridgeHolder_h */
