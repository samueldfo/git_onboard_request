//
//  DebugMacros.h
//  Onboard
//
//  Created by Taqtile on 9/8/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#ifndef DebugMacros_h
#define DebugMacros_h


#endif /* DebugMacros_h */


#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s" fmt), __PRETTY_FUNCTION__, ##__VA_ARGS__)
#else
#   define DLog(...)
#endif
// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s" fmt), __PRETTY_FUNCTION__, ##__VA_ARGS__)