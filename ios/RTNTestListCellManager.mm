//
//  RTNTestListCellManager.m
//  ListsExamples
//
//  Created by Георгий Мишин on 05.12.2022.
//

#import <React/RCTLog.h>
#import <React/RCTUIManager.h>
#import <React/RCTViewManager.h>

#import "RTNTestListCell.h"

@interface RTNTestListCellManager : RCTViewManager
@end

@implementation RTNTestListCellManager

RCT_EXPORT_MODULE(RTNTestListCell)
RCT_EXPORT_VIEW_PROPERTY(onDirectEventHandler, RCTDirectEventBlock)

@end

