//
//  ViewController.m
//  call-fisco
//
//  Created by Maggie WU on 2020/11/17.
//

#import "ViewController.h"
#import "HelloWorld.h"
#import "Asset.h"
#import "OrderFactory.h"
#import "DataTypeTest.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *abiTextField;
@property (weak, nonatomic) IBOutlet UITextField *binTextField;
@property (weak, nonatomic) IBOutlet UITextField *ip;
@property (weak, nonatomic) IBOutlet UITextField *abi;
@property (weak, nonatomic) IBOutlet UITextField *addr;
@property (weak, nonatomic) IBOutlet UITextField *method;
@property (weak, nonatomic) IBOutlet UITextField *params;
@property (weak, nonatomic) IBOutlet UITextField *callABI;
@property (weak, nonatomic) IBOutlet UITextField *callAddr;
@property (weak, nonatomic) IBOutlet UITextField *callMethod;
@property (weak, nonatomic) IBOutlet UITextField *callParams;
@property (weak, nonatomic) IBOutlet UITextField *rpc;
@property NSString * contractAddress;

@end

//typedef void(^WBCallback)(BOOL success,id resp,NSError *err);

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *path = [NSBundle mainBundle].bundlePath;
    NSString *endpoint = @"localhost:8170";
    NSString *result = FiscoBcosMobileBuildSDKWithParam(path, @"1", endpoint, @"key.pem" );
    NSLog(@"connect result:%@",result);
}
//RPC getClientVersion
- (IBAction)getversion:(id)sender {
    UIAlertController *alertController;
    FiscoBcosMobileRPCResult* result = FiscoBcosMobileGetClientVersion();
    if (result.errorInfo.length != 0){
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.errorInfo preferredStyle:UIAlertControllerStyleAlert];
    }else{
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.queryResult preferredStyle:UIAlertControllerStyleAlert];
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
// 部署合约
- (IBAction)deploy:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract = [DataTypeTest new];
    FiscoBcosMobileDeployContractResult *dr = [contract deploy];
   
    if (dr.errorInfo.length != 0){
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:dr.errorInfo preferredStyle:UIAlertControllerStyleAlert];
    }else{
        self.addr.text = dr.address;
        self.callAddr.text = dr.address;
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:dr.address preferredStyle:UIAlertControllerStyleAlert];
        _contractAddress = dr.address;
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
- (IBAction)config:(id)sender {
//    NSString *path = [NSBundle mainBundle].bundlePath;
//    NSString *endpoint = self.ip.text;
//    char* result =setConfig((char *)[path cStringUsingEncoding:NSUTF8StringEncoding],(char *)[@"1" cStringUsingEncoding:NSUTF8StringEncoding],(char *)[endpoint cStringUsingEncoding:NSUTF8StringEncoding],(char *)[@"key.pem" cStringUsingEncoding:NSUTF8StringEncoding] );
//    NSLog(@"\n\n%@ : %@",@"Config",[NSString stringWithUTF8String:result]);
//    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Result" message:[NSString stringWithUTF8String:result] preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
//    [alertController addAction:cancelAction];
//    [self presentViewController:alertController animated:YES completion:nil];
}
- (IBAction)sendTx:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress];
    double a = 10000000;
    int i = 9;

    FiscoBcosMobileTransactResult *result = [contract storeInt:@"111" int8Arg:i int16Arg:i int32Arg:i int64Arg:a];
    if (result.errorInfo.length != 0){
        NSLog(@"send tx error : %@", result.errorInfo);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.errorInfo preferredStyle:UIAlertControllerStyleAlert];
    }else{
        NSLog(@"send tx success : %@", result.receipt.blockNumber);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.receipt.blockNumber preferredStyle:UIAlertControllerStyleAlert];
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (IBAction)call:(id)sender {
    UIAlertController *alertController;
    Asset *hw;
    hw = [Asset alloc];
    hw = [hw initWithAddress:_contractAddress];
    
    FiscoBcosMobileCallResult * result = [hw select:@"AAAlice"];
    if (result.errorInfo.length != 0){
        NSLog(@"call contract error : %@", result.errorInfo);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.errorInfo preferredStyle:UIAlertControllerStyleAlert];
    }else{
        NSLog(@"call contract success : %@", result.result);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.result preferredStyle:UIAlertControllerStyleAlert];
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
@end
