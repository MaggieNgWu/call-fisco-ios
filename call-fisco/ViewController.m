//
//  ViewController.m
//  call-fisco
//
//  Created by Maggie WU on 2020/11/17.
//

#import "ViewController.h"
#import "DataTypeTest.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *addr;
@property NSString * contractAddress;

@end

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

//RPC getClientVersion
- (IBAction)reconnect:(id)sender {
    NSString *path = [NSBundle mainBundle].bundlePath;
    NSString *endpoint = @"localhost:8170";
    NSString *result = FiscoBcosMobileBuildSDKWithParam(path, @"1", endpoint, @"key.pem" );
    NSLog(@"connect result:%@",result);
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
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:dr.address preferredStyle:UIAlertControllerStyleAlert];
        _contractAddress = dr.address;
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
- (IBAction)config:(id)sender {

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

- (IBAction)SendUint:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress];
    double a = 10000000;
    unsigned int i = 9;

    FiscoBcosMobileTransactResult *result = [contract storeUint:@"111" uint8Arg:i uint16Arg:i uint32Arg:i uint64Arg:a];
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
- (IBAction)sendInt256:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress];

    FiscoBcosMobileTransactResult *result = [contract storeBigInt:@"111111111"];
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
- (IBAction)SendAddress:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress];

    FiscoBcosMobileTransactResult *result = [contract storeAddress:@"0xfbb18d54e9ee57529cda8c7c52242efe879f064f"];
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

- (IBAction)SendFixedBytes:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress];

    FiscoBcosMobileTransactResult *result = [contract storeFixedBytes:@"0x1" byte5Arg:@"0x123456"byte32Arg:@"0xfbb18d54e9ee57529cda8c7c52242efe879f064f"];
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
- (IBAction)SendBytes:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress];

    FiscoBcosMobileTransactResult *result = [contract storeBytes:@"0xfbb18d54e9ee57529cda8c7c52242efe879f064f"];
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
- (IBAction)SendByteArray:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress];
    
    NSArray *arr = @[
        @"0x21342",
        @"0x23898"
    ];

    FiscoBcosMobileTransactResult *result = [contract storeByteArray:arr];
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

- (IBAction)SendBool:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress];
    
    BOOL b = YES;

    FiscoBcosMobileTransactResult *result = [contract storeBool:b];
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
}


@end
