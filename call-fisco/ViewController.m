//
//  ViewController.m
//  call-fisco
//
//  Created by Maggie WU on 2020/11/17.
//

#import "ViewController.h"
#import "DataTypeTest.h"
#import "MyPostCalBack.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *addr;
@property NSString * contractAddress;
@property (nonatomic,strong)MobileBcosSDK* sdk1;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSString *path = [NSBundle mainBundle].bundlePath;
    NSString *keyFile = [NSString stringWithFormat:@"%@/%@", path, @"key.pem" ];
    
    [super viewDidLoad];
    MyPostCalBack *cb = [[MyPostCalBack alloc] init];
    self.sdk1 = [[MobileBcosSDK alloc]init];
    MobileBuildSDKResult* result = [self.sdk1 buildSDKWithParam:keyFile callback:cb groupID:1 chainID:1 isSMCrypto:false];
    NSLog(@"is success: %s",result.isSuccess? "true" : "false");
}

//RPC getClientVersion
- (IBAction)getversion:(id)sender {
    UIAlertController *alertController;
    MobileRPCResult* result =[self.sdk1 getClientVersion];
    long zero = 0;
    if (result.code != zero){
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
    }else{
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.result preferredStyle:UIAlertControllerStyleAlert];
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

//RPC getClientVersion
- (IBAction)reconnect:(id)sender {
    
}

// 部署合约
- (IBAction)deploy:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract = [[DataTypeTest alloc]init:self.sdk1];
    MobileReceiptResult *dr = [contract deploy];
    long zero = 0;
    if (dr.code != zero){
        NSLog(@"send tx error : %@", dr.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:dr.message preferredStyle:UIAlertControllerStyleAlert];
    }else{
        NSLog(@"send tx success : %@", dr.receipt.contractAddress);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:dr.receipt.contractAddress preferredStyle:UIAlertControllerStyleAlert];
        self.contractAddress = dr.receipt.contractAddress;
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
    long zero = 0;
    MobileReceiptResult *result = [contract storeInt:@"111" int8Arg:i int16Arg:i int32Arg:i int64Arg:a];
    
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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
    //__weak typeof(self) weakSelf;
    contract = [contract initWithAddress:self.contractAddress sdk:self.sdk1];
    double a = 10000000;
    unsigned int i = 9;
    long zero = 0;

    for(int i= 0 ; i<2000; i++){
        @autoreleasepool {
            MobileReceiptResult *result = [contract storeUint:@"111" uint8Arg:i uint16Arg:i uint32Arg:i uint64Arg:a];
            NSLog(@"Send tx %ld:",result.code);
        }

    }
    MobileReceiptResult *result = [contract storeUint:@"111" uint8Arg:i uint16Arg:i uint32Arg:i uint64Arg:a];
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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
    
    MobileReceiptResult *result = [contract storeBigInt:@"12345678901234567890123456789012123456789012345678901234567890121234567890123456789012345678901212345678901234567890123456789012"];
    long zero = 0;
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
    }else{
        NSLog(@"send tx success : %@", result.receipt.blockNumber);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.receipt.blockNumber preferredStyle:UIAlertControllerStyleAlert];
    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
- (IBAction)SendStoreInt40:(id)sender {
    UIAlertController *alertController;
    DataTypeTest *contract;
    contract = [DataTypeTest alloc];
    contract = [contract initWithAddress:_contractAddress sdk:_sdk1];
    double a = 10000000;
    NSString *b = @"-2837948734";
    
    MobileReceiptResult *result = [contract storeUintUnder64:a uint48Arg:a uint56Arg:a];
    long zero = 0;
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
    }else{
        NSLog(@"send tx success : %@, message :%@", result.receipt.blockNumber, result.message);
        MobileCallResult *result2 = [contract getUintUnder64];
        NSLog(@"get result int128: %@",result2.result);
       alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result2.result preferredStyle:UIAlertControllerStyleAlert];
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

    long zero = 0;
    MobileReceiptResult *result = [contract storeAddress:@"0xfbb18d54e9ee57529cda8c7c52242efe879f064f"];
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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

    MobileReceiptResult *result = [contract storeFixedBytes:@"0x1" byte5Arg:@"0x000f888012"byte32Arg:@"616c736a646b6662637363646564736364656264736b6473646b766567656565"];
    long zero = 0;
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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

    MobileReceiptResult *result = [contract storeBytes:@"0xfbb18d54e9ee57529cda8c7c52242efe879f064f"];
    long zero = 0;
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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

    MobileReceiptResult *result = [contract storeByteArray:arr];
    long zero = 0;
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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

    MobileReceiptResult *result = [contract storeBool:b];
    long zero = 0;
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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
    MobileReceiptResult *result = [contract storeIntArray:a1 i64arArg:a2 i256arArg:a3];
    long zero = 0;
    if (result.code != zero){
        NSLog(@"call retrival : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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

    DataTypeTest_Class0 *a = [[DataTypeTest_Class0 alloc]init];
    a.date = 222;
    a.value = 333;

    MobileReceiptResult *result = [contract storeStruct:a];
    long zero = 0;
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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
    long zero = 0;
    if (result.code != zero){
        NSLog(@"send tx error : %@", result.message);
        alertController = [UIAlertController alertControllerWithTitle:@"Result" message:result.message preferredStyle:UIAlertControllerStyleAlert];
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
