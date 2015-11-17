//
//  HttpTool.m
//  校内购
//
//  Created by 赵志刚 on 15/10/27.
//  Copyright © 2015年 赵志刚. All rights reserved.
//

#import "HttpTool.h"
#import "AFNetworking.h"
#import "UIImageView+WebCache.h"
#import "XNGcfg.h"
#import "AccountTool.h"

@implementation HttpTool
//+ (void)requestWithPath:(NSString *)path params:(NSDictionary *)params success:(HttpSuccessBlock)success failure:(HttpFailureBlock)failure method:(NSString *)method
//{
//    // 1.创建post请求
//    AFHTTPClient *client = [AFHTTPClient clientWithBaseURL:[NSURL URLWithString:kBaseURL]];
//    
//    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
//    // 拼接传进来的参数
//    if (params) {
//        [allParams setDictionary:params];
//    }
//    
//    // 拼接token参数
//    NSString *token = [AccountTool sharedAccountTool].account.accessToken;
//    if (token) {
//        [allParams setObject:token forKey:@"access_token"];
//    }
//    
//    NSURLRequest *post = [client requestWithMethod:method path:path parameters:allParams];
//    
//    // 2.创建AFJSONRequestOperation对象
//    NSOperation *op = [AFJSONRequestOperation JSONRequestOperationWithRequest:post
//                                                                      success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
//                                                                          if (success == nil) return;
//                                                                          success(JSON);
//                                                                      }
//                                                                     failure : ^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
//                                                                         if (failure == nil) return;
//                                                                         
//#warning 错误信息
//                                                                         failure(error);
//                                                                     }];
//    
//    // 3.发送请求
//    [op start];
//}

+ (void)postWithPath:(NSString *)path params:(NSDictionary *)params success:(HttpSuccessBlock)success failure:(HttpFailureBlock)failure
{
//    [self requestWithPath:path params:params success:success failure:failure method:@"POST"];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    //拼接Token
    [manager.requestSerializer setValue:[AccountTool sharedAccountTool].account.accessToken forHTTPHeaderField:@"Authorization"];
    NSString *str = [NSString stringWithFormat:@"%@%@", kBaseURL, path];

    [manager POST:str parameters:params
     
      success:^(AFHTTPRequestOperation *operation, id responseObject) {
          if (responseObject == nil) {
              return;
          }
          success(responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        if (error == nil) {
            return;
        }
        failure(error);
    }];
    
}

+ (void)getWithPath:(NSString *)path params:(NSDictionary *)params success:(HttpSuccessBlock)success failure:(HttpFailureBlock)failure
{
//    [self requestWithPath:path params:params success:success failure:failure method:@"GET"];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSString *str = [NSString stringWithFormat:@"%@%@", kBaseURL, path];
    
    [manager GET:str parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        if (responseObject == nil) {
            return;
        }
        success(responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        if (error == nil) {
            return;
        }
        failure(error);
    }];
    
    
}

+ (void)downloadImage:(NSString *)url place:(UIImage *)place imageView:(UIImageView *)imageView
{
    [imageView sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:place options:SDWebImageLowPriority | SDWebImageRetryFailed];
}


@end
/*
GET
[HttpTool getWithPath:@"2/friendships/followers.json" params:@{
                                                               @"uid" : @(ID)
                                                               } success:^(id JSON) {
                                                                   if (success == nil) return;
                                                                   
                                                                   NSArray *array = JSON[@"users"];
                                                                   
                                                                   NSMutableArray *followers = [NSMutableArray array];
                                                                   
                                                                   for (NSDictionary *dict in array) {
                                                                       User *u = [[User alloc] initWithDict:dict];
                                                                       [followers addObject:u];
                                                                   }
                                                                   
                                                                   success(followers);
                                                               } failure:^(NSError *error) {
                                                                   if (failure == nil) return;
                                                                   
                                                                   failure(error);
                                                               }];


POST


IMAGE
// 头像
[HttpTool downloadImage:u.profileImageUrl place:[UIImage imageNamed:@"Icon.png"] imageView:cell.imageView];

 */


