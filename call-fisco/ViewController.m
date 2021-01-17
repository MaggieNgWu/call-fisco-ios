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
@property MobileBcosSDK* sdk1;
@property MobileBcosSDK* sdk2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *path = [NSBundle mainBundle].bundlePath;
    NSString *endpoint = @"localhost:8170";
    NSString *keyFile = [NSString stringWithFormat:@"%@/%@", path, @"key.pem" ];
    _sdk1 = [[MobileBcosSDK alloc]init];
    MobileBuildSDKResult *result = [_sdk1 buildSDKWithParam:path keyFile:keyFile groupId:1 ipPort:endpoint isHttp:false chainId:1 isSMCrypto:false];
    NSLog(@"Result:%@",result.information);
}

//RPC getClientVersion
- (IBAction)getversion:(id)sender {
    UIAlertController *alertController;
    MobileRPCResult* result =[_sdk1 getClientVersion];
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
    NSString *keyFile = [NSString stringWithFormat:@"%@/%@", path, @"key.pem" ];
    MobileBuildSDKResult *result = [_sdk1 buildSDKWithParam:path keyFile:keyFile groupId:1 ipPort:endpoint isHttp:false chainId:1 isSMCrypto:false];
    NSLog(@"Result:%@",result.information);
}

// 部署合约
- (IBAction)deploy:(id)sender {
    UIAlertController *alertController;
    
    
    DataTypeTest *contract = [[DataTypeTest alloc]init:_sdk1];
    NSLog(@"sdfsdf");
    MobileDeployContractResult *dr = [contract deploy];
    NSLog(@"%@ , %@",dr.address,dr.errorInfo);
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
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];
    double a = 10000000;
    int i = 9;

    MobileTransactResult *result = [contract storeInt:@"111" int8Arg:i int16Arg:i int32Arg:i int64Arg:a];
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
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];
    double a = 10000000;
    unsigned int i = 9;

    MobileTransactResult *result = [contract storeUint:@"111" uint8Arg:i uint16Arg:i uint32Arg:i uint64Arg:a];
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
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];

    MobileTransactResult *result = [contract storeBigInt:@"111111111"];
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
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];

    MobileTransactResult *result = [contract storeAddress:@"0xfbb18d54e9ee57529cda8c7c52242efe879f064f"];
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
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];

    MobileTransactResult *result = [contract storeFixedBytes:@"0x1" byte5Arg:@"0x123456"byte32Arg:@"0xfbb18d54e9ee57529cda8c7c52242efe879f064f"];
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
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];

    MobileTransactResult *result = [contract storeBytes:@"0xfbb18d54e9ee57529cda8c7c52242efe879f064f"];
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
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];
    
    NSArray *arr = @[
        @"0x21342",
        @"0x23898"
    ];

    MobileTransactResult *result = [contract storeByteArray:arr];
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
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];
    
    BOOL b = YES;

    MobileTransactResult *result = [contract storeBool:b];
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
- (IBAction)intArray:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];
    
    NSArray *a1 = @[
        @"1233",
        @"4231"
    ];
    
    double a = 10000;
    NSArray *a2 = @[
        @(a),
        @(a)
    ];

    NSArray *a3 = @[
        @"1233",
        @"4231"
    ];
    MobileTransactResult *result = [contract storeIntArray:a1 i64arArg:a2 i256arArg:a3];
    if (result.errorInfo.length != 0){
        NSLog(@"call retrival : %@", result.errorInfo);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.errorInfo preferredStyle:UIAlertControllerStyleAlert];
    }else{
        NSLog(@"send retrival : %@", result.receipt.blockNumber);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.receipt.blockNumber preferredStyle:UIAlertControllerStyleAlert];
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
- (IBAction)sendStruct:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];
    
    struct Class0 a;
    a.date = 122;
    a.value =333;

    MobileTransactResult *result = [contract storeStruct:a];
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
- (IBAction)getArray:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];

    MobileCallResult *result = [contract retrieveArray];
    if (result.errorInfo.length != 0){
        NSLog(@"send tx error : %@", result.errorInfo);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.errorInfo preferredStyle:UIAlertControllerStyleAlert];
    }else{
        NSLog(@"send tx success : %@", result.result);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.result preferredStyle:UIAlertControllerStyleAlert];
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (IBAction)call:(id)sender {
}


@end
