//
//  RTNTestListViewCell.h
//  ListsExamples
//
//  Created by Георгий Мишин on 04.12.2022.
//

#import "RTNTestListCell.h"

#import <UIKit/UIKit.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>

@interface RTNTestListViewCell : UITableViewCell
@property (nonatomic, readwrite) RCTFabricSurfaceHostingProxyRootView* reactView;
@property (nonatomic, readwrite) RCTSurfacePresenter* presenter;
-(void) updateWithProps: (NSDictionary*) props;
-(void) updateIndex: (int) index;
@end
