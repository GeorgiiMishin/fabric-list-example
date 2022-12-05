//
//  RTNCenteredText.m
//  ListsExamples
//
//  Created by Георгий Мишин on 03.12.2022.
//

#import "RTNTestListCell.h"

#import <react/renderer/components/appcomponents/ComponentDescriptors.h>
#import <react/renderer/components/appcomponents/EventEmitters.h>
#import <react/renderer/components/appcomponents/Props.h>
#import <react/renderer/components/appcomponents/RCTComponentViewHelpers.h>
#import <React/RCTFabricComponentsPlugins.h>

using namespace facebook::react;

@implementation RTNTestListCell
NSString *_string = @":";

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
  return concreteComponentDescriptorProvider<RTNTestListCellComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const RTNTestListCellProps>();
    _props = defaultProps;
    
    
  }

  return self;
}


-(void) updateIndex: (int) index
{
  if (_eventEmitter) {
    RTNTestListCellEventEmitter::OnDirectEventHandler event = {
      .value = index
    };
    std::static_pointer_cast<RTNTestListCellEventEmitter const>(_eventEmitter)->onDirectEventHandler(event);
  }
}
@end

Class<RCTComponentViewProtocol> RTNTestListCellCls(void)
{
  return RTNTestListCell.class;
}
