//
//  Singleton.h
//  校内购
//
//  Created by 赵志刚 on 15/10/27.
//  Copyright © 2015年 赵志刚. All rights reserved.
//

// .h
#define single_interface(class)  + (class *)shared##class;

// .m
// \ 代表下一行也属于宏
// ## 是分隔符
#define single_implementation(class) \
static class *_instance; \
\
+ (class *)shared##class \
{ \
if (_instance == nil) { \
_instance = [[self alloc] init]; \
} \
return _instance; \
} \
\
+ (id)allocWithZone:(NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
}