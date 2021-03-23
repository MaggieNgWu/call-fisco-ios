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

    //设置请求类型
    request.HTTPMethod = @"POST";

    //将需要的信息放入请求头 
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];//token

    //把参数放到请求体内
    request.HTTPBody = [rpcRequest dataUsingEncoding:NSUTF8StringEncoding];


    NSData *resultData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil] ;
    NSString * resultString = [[NSString alloc] initWithData:resultData encoding:NSUTF8StringEncoding];
    NSLog(@"Get response: %@",resultString);
     return resultString;
//    sleep(1);
//    NSString *blockNum = @"{'code':0,'message':'success','data':{'id':263,'jsonrpc':'2.0','result':'0x53b6','error':null}}";
//    NSString *tx = @"{'code':0,'message':'success','data':{'id':264,'jsonrpc':'2.0','result':{'transactionHash':'0x435e91c2b4eb4e80319da24f10b4c7f0808ddb7da8cc66d5af130491d40feb1c','transactionIndex':'0x0','root':'0x7661287b01c45ccb6c958cb3ec4bdc1e7c58bd219036d7ca1faddb4a08022c58','blockNumber':'0x53b7','blockHash':'0xcea3c222d14b0687ce949a17acfd5452b0950b2f7f430cb355296c9f3449c78d','from':'0x83309d045a19c44dc3722d15a6abd472f95866ac','to':'0x766ea6454103198ccdfac0c4b3358b80735f1bea','gasUsed':'0xa12f','contractAddress':'0x0000000000000000000000000000000000000000','logs':[],'logsBloom':'0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','status':'0x0','statusMsg':'None','input':'0x7427ce66000000000000000000000000000000000000000000000000000000000000006f0000000000000000000000000000000000000000000000000000000000000082000000000000000000000000000000000000000000000000000000000000008200000000000000000000000000000000000000000000000000000000000000820000000000000000000000000000000000000000000000000000000000989680','output':'0x','txProof':null,'receiptProof':null,'message':null,'statusOK':true},'error':null}}";
//    if ([rpcRequest containsString:@"getBlockNumber"]){
//        return blockNum;
//    }else{
//        return tx;
//    }
//
    
}
@end
