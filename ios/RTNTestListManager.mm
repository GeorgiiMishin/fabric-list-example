//
//  RTNTestListManager.m
//  ListsExamples
//
//  Created by Георгий Мишин on 03.12.2022.
//

#import <React/RCTLog.h>
#import <React/RCTUIManager.h>
#import <React/RCTViewManager.h>

#import "RTNTestList.h"

@interface RTNTestListManager : RCTViewManager
@end

@implementation RTNTestListManager

RCT_EXPORT_MODULE(RTNTestList)
RCT_EXPORT_VIEW_PROPERTY(data, NSArray)

@end
