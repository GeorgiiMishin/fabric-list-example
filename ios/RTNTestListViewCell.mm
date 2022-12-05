//
//  RTNTestListViewCell.m
//  ListsExamples
//
//  Created by Георгий Мишин on 04.12.2022.
//

#import "RTNTestListViewCell.h"
#import "BridgeHolder.h"

#import <react/renderer/components/appcomponents/ComponentDescriptors.h>
#import <react/renderer/components/appcomponents/EventEmitters.h>
#import <react/renderer/components/appcomponents/Props.h>
#import <react/renderer/components/appcomponents/RCTComponentViewHelpers.h>
#import <React/RCTFabricComponentsPlugins.h>
#import <React/RCTBridge.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTFollyConvert.h>
#import <React/RCTSurface.h>
#import <React/RCTSurfaceView.h>

@implementation RTNTestListViewCell
- (void)updateWithProps:(NSDictionary *)props
{
}


- (void)updateIndex:(int)index
{
  auto view1 = _reactView;
  
  auto *subview = view1.subviews.firstObject;
  
  if (subview) {
    RCTSurfaceView *casted = static_cast<RCTSurfaceView*>(subview);
    
//    maybe null error
    RTNTestListCell *cell = casted.subviews.firstObject.subviews.firstObject;
    
    [cell updateIndex:index];
  }
}
@end
