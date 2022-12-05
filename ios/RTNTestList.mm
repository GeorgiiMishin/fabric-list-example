//
//  RTNTestList.m
//  ListsExamples
//
//  Created by Георгий Мишин on 03.12.2022.
//

#import "RTNTestList.h"
#import "BridgeHolder.h"
#import "RTNTestListViewCell.h"
#import "RTNTestListCell.h"

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
#import <React/RCTSurfacePresenter.h>
#import <React/RCTFollyConvert.h>
#import <React/RCTFabricSurface.h>

using namespace facebook::react;


@interface RTNTestList () <RCTRTNTestListViewProtocol, UITableViewDelegate, UITableViewDataSource>
@end

@implementation RTNTestList {
  UIView *_view;
  UITableView *_tableView;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
  return concreteComponentDescriptorProvider<RTNTestListComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const RTNTestListProps>();
    _props = defaultProps;
  

    _view = [[UIView alloc] init];
    _view.backgroundColor = [UIColor redColor];
    _tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];

    _tableView.translatesAutoresizingMaskIntoConstraints = false;
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_view addSubview:_tableView];
    
    _tableView.rowHeight = 50;
   
        [NSLayoutConstraint activateConstraints:@[
          [_tableView.leadingAnchor constraintEqualToAnchor:_view.leadingAnchor],
          [_tableView.topAnchor constraintEqualToAnchor:_view.topAnchor],
          [_tableView.trailingAnchor constraintEqualToAnchor:_view.trailingAnchor],
          [_tableView.bottomAnchor constraintEqualToAnchor:_view.bottomAnchor],
        ]];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
  [super updateProps:props oldProps:oldProps];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  const auto &props = *std::static_pointer_cast<RTNTestListProps const>(_props);
  
  return props.data.size();
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  const auto &props = *std::static_pointer_cast<RTNTestListProps const>(_props);
  
  NSString *item = [[NSString alloc] initWithCString:props.data.at(indexPath.row).c_str() encoding:NSASCIIStringEncoding];
  
  static NSString *cellIdentifier = @"cellIdentifier";
  
  RTNTestListViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  BridgeHolder *holder = [[BridgeHolder alloc] init];
    
  RCTSurfacePresenterBridgeAdapter *bridgeAdapter = [holder getBridgeAdapter];
  RCTBridge *bridge = bridgeAdapter.bridge;

  
  if(cell == nil) {
      cell = [[RTNTestListViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    
    cell.presenter = bridgeAdapter.surfacePresenter;
    RCTFabricSurfaceHostingProxyRootView *view = [[RCTFabricSurfaceHostingProxyRootView alloc] initWithBridge:bridge moduleName: @"test" initialProperties:@{
      @"item": item,
      @"index": @(indexPath.row)
    }];
        
    cell.reactView = view;
    
    [cell.contentView addSubview:view];
  } else {
    [cell updateIndex:(int)(size_t)indexPath.row];
  }
  
  return cell;
}

@end

Class<RCTComponentViewProtocol> RTNTestListCls(void)
{
  return RTNTestList.class;
}
