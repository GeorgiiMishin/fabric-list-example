//
//  BridgeHolder.m
//  ListsExamples
//
//  Created by Георгий Мишин on 04.12.2022.
//

#import "BridgeHolder.h"

#import <Foundation/Foundation.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>

static BridgeHolder* shared = nil;

@implementation BridgeHolder
RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;

- (RCTSurfacePresenterBridgeAdapter *)getBridgeAdapter
{
  return _bridgeAdapter;
}

- (instancetype) initWithBridgeAdapter:(RCTSurfacePresenterBridgeAdapter *)bridgeAdapter
{
  if (shared != nil) {
    return  shared;;
  }
  
  _bridgeAdapter = bridgeAdapter;
  
  shared = self;
  
  return self;
}

- (instancetype) init
{
  return shared;
}

@end

