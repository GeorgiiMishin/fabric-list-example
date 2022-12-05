//
//  RTNCenteredTextManager.m
//  ListsExamples
//
//  Created by Георгий Мишин on 03.12.2022.
//

#import <React/RCTLog.h>
#import <React/RCTUIManager.h>
#import <React/RCTViewManager.h>

@interface RTNCenteredTextManager : RCTViewManager
@end

@implementation RTNCenteredTextManager

RCT_EXPORT_MODULE(RTNCenteredText)

RCT_EXPORT_VIEW_PROPERTY(text, NSString)

@end
