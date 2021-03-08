//
//  MyPostCalBack.m
//  call-fisco
//
//  Created by Maggie WU on 2021/1/21.
//

#import "MyPostCalBack.h"

@implementation MyPostCalBack

- (NSString* _Nonnull)sendRequest:(NSString* _Nullable)rpcRequest{
    
    NSURL *nsurl = [NSURL URLWithString:@"http://localhost:8170/Bcos-node-proxy/rpc/v1"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:nsurl];
    //如果想要设置网络超时的时间的话，可以使用下面的方法：
    //NSMutableURLRequest *mutableRequest=[NSMutableURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
    
    //设置请求类型
    request.HTTPMethod = @"POST";
    
    //将需要的信息放入请求头 随便定义了几个
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];//token
    
    //把参数放到请求体内
    request.HTTPBody = [rpcRequest dataUsingEncoding:NSUTF8StringEncoding];
    
    
    NSData *resultData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil] ;
    NSString * resultString = [[NSString alloc] initWithData:resultData encoding:NSUTF8StringEncoding];
    NSLog(@"Get response: %@",resultString);
    return resultString;
    
}
@end
