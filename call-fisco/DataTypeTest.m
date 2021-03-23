// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.

#import "DataTypeTest.h"
#import <FiscoBcosIosSdk/FiscoBcosIosSdk.h>



// Class0 is an auto generated low-level Go binding around an user-defined struct.
@implementation DataTypeTest_Class0
@end


@implementation DataTypeTest

/// init
- (instancetype) init:(MobileBcosSDK *)sdk{
    if (self = [super init]){
		self = [self init];
        self.sdk = sdk;
    }
    return self;
}
/// initWithAddress
- (instancetype) initWithAddress:(NSString *)addr
                             sdk:(MobileBcosSDK *)sdk{
	if (self = [super init]){
        self = [self init:sdk];
		self.address = addr;
	}
	return self;
}


/// deploy 
- (MobileReceiptResult*) deploy {
	
	NSString *__params = @"[]";
	return [self.sdk deployContract:self.abi contractBin:_bin params:__params];
}



/// getIntUnder128
/// @return  int128 type argument
- (MobileCallResult *) getIntUnder128 {
	
	NSString *__params = @"[]";
	return [self.sdk call:self.abi address:self.address method:@"getIntUnder128" params:__params outputNum:1];
}

/// getIntUnder64
/// @return  int40 type argument
- (MobileCallResult *) getIntUnder64 {
	
	NSString *__params = @"[]";
	return [self.sdk call:self.abi address:self.address method:@"getIntUnder64" params:__params outputNum:1];
}

/// getUintUnder128
/// @return  uint128 type argument
- (MobileCallResult *) getUintUnder128 {
	
	NSString *__params = @"[]";
	return [self.sdk call:self.abi address:self.address method:@"getUintUnder128" params:__params outputNum:1];
}

/// getUintUnder64
/// @return  uint40 type argument
- (MobileCallResult *) getUintUnder64 {
	
	NSString *__params = @"[]";
	return [self.sdk call:self.abi address:self.address method:@"getUintUnder64" params:__params outputNum:1];
}

/// retrieve
/// @return  uint256 type argument
- (MobileCallResult *) retrieve {
	
	NSString *__params = @"[]";
	return [self.sdk call:self.abi address:self.address method:@"retrieve" params:__params outputNum:1];
}

/// retrieveArray
/// @return  bytes32[] type argument
/// @return  int64[] type argument
- (MobileCallResult *) retrieveArray {
	
	NSString *__params = @"[]";
	return [self.sdk call:self.abi address:self.address method:@"retrieveArray" params:__params outputNum:2];
}



/// storeAddress
/// @param adArg address type argument, please note this argument only accept hex encoded strings.
- (MobileReceiptResult *) storeAddress  :(NSString *) adArg{
	NSArray * __resArr = @[
        @{
            @"type":@"address",
            @"value":adArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeAddress" params:__params];
}

/// storeBigInt
/// @param int256Arg int256 type argument
- (MobileReceiptResult *) storeBigInt  :(NSString *) int256Arg{
	NSArray * __resArr = @[
        @{
            @"type":@"int256",
            @"value":int256Arg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeBigInt" params:__params];
}

/// storeBool
/// @param boolArg bool type argument
- (MobileReceiptResult *) storeBool  :(BOOL) boolArg{
	NSArray * __resArr = @[
        @{
            @"type":@"bool",
            @"value":@(boolArg)
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeBool" params:__params];
}

/// storeByteArray
/// @param b32arArg bytes32[] type argument, please note this argument only accept hex encoded strings.
- (MobileReceiptResult *) storeByteArray  :(NSArray *) b32arArg{
	NSArray * __resArr = @[
        @{
            @"type":@"bytes32[]",
            @"value":b32arArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeByteArray" params:__params];
}

/// storeBytes
/// @param bytesArg bytes type argument, please note this argument only accept hex encoded strings.
- (MobileReceiptResult *) storeBytes  :(NSString *) bytesArg{
	NSArray * __resArr = @[
        @{
            @"type":@"bytes",
            @"value":bytesArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeBytes" params:__params];
}

/// storeEmum
/// @param teArg uint8 type argument
- (MobileReceiptResult *) storeEmum  :(int) teArg{
	NSArray * __resArr = @[
        @{
            @"type":@"uint8",
            @"value":@(teArg)
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeEmum" params:__params];
}

/// storeFixedBytes
/// @param byte1Arg bytes1 type argument, please note this argument only accept hex encoded strings.
/// @param byte5Arg bytes5 type argument, please note this argument only accept hex encoded strings.
/// @param byte32Arg bytes32 type argument, please note this argument only accept hex encoded strings.
- (MobileReceiptResult *) storeFixedBytes  :(NSString *) byte1Arg 
	byte5Arg:(NSString *) byte5Arg 
	byte32Arg:(NSString *) byte32Arg{
	NSArray * __resArr = @[
        @{
            @"type":@"bytes1",
            @"value":byte1Arg
        },
		@{
            @"type":@"bytes5",
            @"value":byte5Arg
        },
		@{
            @"type":@"bytes32",
            @"value":byte32Arg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeFixedBytes" params:__params];
}

/// storeInt
/// @param intArg int256 type argument
/// @param int8Arg int8 type argument
/// @param int16Arg int16 type argument
/// @param int32Arg int32 type argument
/// @param int64Arg int64 type argument
- (MobileReceiptResult *) storeInt  :(NSString *) intArg 
	int8Arg:(int) int8Arg 
	int16Arg:(int) int16Arg 
	int32Arg:(int) int32Arg 
	int64Arg:(double) int64Arg{
	NSArray * __resArr = @[
        @{
            @"type":@"int256",
            @"value":intArg
        },
		@{
            @"type":@"int8",
            @"value":@(int8Arg)
        },
		@{
            @"type":@"int16",
            @"value":@(int16Arg)
        },
		@{
            @"type":@"int32",
            @"value":@(int32Arg)
        },
		@{
            @"type":@"int64",
            @"value":@(int64Arg)
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeInt" params:__params];
}

/// storeIntArray
/// @param iarArg int256[] type argument
/// @param i64arArg int64[] type argument
/// @param i256arArg int256[] type argument
- (MobileReceiptResult *) storeIntArray  :(NSArray *) iarArg 
	i64arArg:(NSArray *) i64arArg 
	i256arArg:(NSArray *) i256arArg{
	NSArray * __resArr = @[
        @{
            @"type":@"int256[]",
            @"value":iarArg
        },
		@{
            @"type":@"int64[]",
            @"value":i64arArg
        },
		@{
            @"type":@"int256[]",
            @"value":i256arArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeIntArray" params:__params];
}

/// storeIntUnder128
/// @param int72Arg int72 type argument
/// @param int80Arg int80 type argument
/// @param int88Arg int88 type argument
/// @param int96Arg int96 type argument
/// @param int104Arg int104 type argument
/// @param int112Arg int112 type argument
/// @param int120Arg int120 type argument
/// @param int128Arg int128 type argument
- (MobileReceiptResult *) storeIntUnder128  :(NSString *) int72Arg 
	int80Arg:(NSString *) int80Arg 
	int88Arg:(NSString *) int88Arg 
	int96Arg:(NSString *) int96Arg 
	int104Arg:(NSString *) int104Arg 
	int112Arg:(NSString *) int112Arg 
	int120Arg:(NSString *) int120Arg 
	int128Arg:(NSString *) int128Arg{
	NSArray * __resArr = @[
        @{
            @"type":@"int72",
            @"value":int72Arg
        },
		@{
            @"type":@"int80",
            @"value":int80Arg
        },
		@{
            @"type":@"int88",
            @"value":int88Arg
        },
		@{
            @"type":@"int96",
            @"value":int96Arg
        },
		@{
            @"type":@"int104",
            @"value":int104Arg
        },
		@{
            @"type":@"int112",
            @"value":int112Arg
        },
		@{
            @"type":@"int120",
            @"value":int120Arg
        },
		@{
            @"type":@"int128",
            @"value":int128Arg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeIntUnder128" params:__params];
}

/// storeIntUnder64
/// @param int40Arg int40 type argument
/// @param int48Arg int48 type argument
/// @param int56Arg int56 type argument
- (MobileReceiptResult *) storeIntUnder64  :(double) int40Arg 
	int48Arg:(double) int48Arg 
	int56Arg:(double) int56Arg{
	NSArray * __resArr = @[
        @{
            @"type":@"int40",
            @"value":@(int40Arg)
        },
		@{
            @"type":@"int48",
            @"value":@(int48Arg)
        },
		@{
            @"type":@"int56",
            @"value":@(int56Arg)
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeIntUnder64" params:__params];
}

/// storeStr
/// @param strArg string type argument
- (MobileReceiptResult *) storeStr  :(NSString *) strArg{
	NSArray * __resArr = @[
        @{
            @"type":@"string",
            @"value":strArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeStr" params:__params];
}

/// storeStruct
/// @param structArg (int32,int32) type argument
- (MobileReceiptResult *) storeStruct  :(DataTypeTest_Class0 *) structArg{
	NSArray * __resArr = @[
        @{
            @"type":@"(int32,int32)",
            @"value":@{@"Value":@(structArg.value),@"Date":@(structArg.date)}
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeStruct" params:__params];
}

/// storeUBigInt
/// @param uint256Arg uint256 type argument
- (MobileReceiptResult *) storeUBigInt  :(NSString *) uint256Arg{
	NSArray * __resArr = @[
        @{
            @"type":@"uint256",
            @"value":uint256Arg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeUBigInt" params:__params];
}

/// storeUint
/// @param uintArg uint256 type argument
/// @param uint8Arg uint8 type argument
/// @param uint16Arg uint16 type argument
/// @param uint32Arg uint32 type argument
/// @param uint64Arg uint64 type argument
- (MobileReceiptResult *) storeUint  :(NSString *) uintArg 
	uint8Arg:(int) uint8Arg 
	uint16Arg:(int) uint16Arg 
	uint32Arg:(int) uint32Arg 
	uint64Arg:(double) uint64Arg{
	NSArray * __resArr = @[
        @{
            @"type":@"uint256",
            @"value":uintArg
        },
		@{
            @"type":@"uint8",
            @"value":@(uint8Arg)
        },
		@{
            @"type":@"uint16",
            @"value":@(uint16Arg)
        },
		@{
            @"type":@"uint32",
            @"value":@(uint32Arg)
        },
		@{
            @"type":@"uint64",
            @"value":@(uint64Arg)
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeUint" params:__params];
}

/// storeUintUnder64
/// @param uint40Arg uint40 type argument
/// @param uint48Arg uint48 type argument
/// @param uint56Arg uint56 type argument
- (MobileReceiptResult *) storeUintUnder64  :(double) uint40Arg 
	uint48Arg:(double) uint48Arg 
	uint56Arg:(double) uint56Arg{
	NSArray * __resArr = @[
        @{
            @"type":@"uint40",
            @"value":@(uint40Arg)
        },
		@{
            @"type":@"uint48",
            @"value":@(uint48Arg)
        },
		@{
            @"type":@"uint56",
            @"value":@(uint56Arg)
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeUintUnder64" params:__params];
}

/// storeuintUnder128
/// @param uint72Arg uint72 type argument
/// @param uint80Arg uint80 type argument
/// @param uint88Arg uint88 type argument
/// @param uint96Arg uint96 type argument
/// @param uint104Arg uint104 type argument
/// @param uint112Arg uint112 type argument
/// @param uint120Arg uint120 type argument
/// @param uint128Arg uint128 type argument
- (MobileReceiptResult *) storeuintUnder128  :(NSString *) uint72Arg 
	uint80Arg:(NSString *) uint80Arg 
	uint88Arg:(NSString *) uint88Arg 
	uint96Arg:(NSString *) uint96Arg 
	uint104Arg:(NSString *) uint104Arg 
	uint112Arg:(NSString *) uint112Arg 
	uint120Arg:(NSString *) uint120Arg 
	uint128Arg:(NSString *) uint128Arg{
	NSArray * __resArr = @[
        @{
            @"type":@"uint72",
            @"value":uint72Arg
        },
		@{
            @"type":@"uint80",
            @"value":uint80Arg
        },
		@{
            @"type":@"uint88",
            @"value":uint88Arg
        },
		@{
            @"type":@"uint96",
            @"value":uint96Arg
        },
		@{
            @"type":@"uint104",
            @"value":uint104Arg
        },
		@{
            @"type":@"uint112",
            @"value":uint112Arg
        },
		@{
            @"type":@"uint120",
            @"value":uint120Arg
        },
		@{
            @"type":@"uint128",
            @"value":uint128Arg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return [self.sdk sendTransaction:self.abi address:self.address method:@"storeuintUnder128" params:__params];
}

	
- (instancetype)init{
	self.abi = @"[{\"constant\":true,\"inputs\":[],\"name\":\"getIntUnder128\",\"outputs\":[{\"name\":\"\",\"type\":\"int128\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"components\":[{\"name\":\"value\",\"type\":\"int32\"},{\"name\":\"date\",\"type\":\"int32\"}],\"name\":\"structArg\",\"type\":\"tuple\"}],\"name\":\"storeStruct\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"retrieveArray\",\"outputs\":[{\"name\":\"\",\"type\":\"bytes32[]\"},{\"name\":\"\",\"type\":\"int64[]\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"bytesArg\",\"type\":\"bytes\"}],\"name\":\"storeBytes\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"byte1Arg\",\"type\":\"bytes1\"},{\"name\":\"byte5Arg\",\"type\":\"bytes5\"},{\"name\":\"byte32Arg\",\"type\":\"bytes32\"}],\"name\":\"storeFixedBytes\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"retrieve\",\"outputs\":[{\"name\":\"\",\"type\":\"uint256\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"iarArg\",\"type\":\"int256[]\"},{\"name\":\"i64arArg\",\"type\":\"int64[]\"},{\"name\":\"i256arArg\",\"type\":\"int256[]\"}],\"name\":\"storeIntArray\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"int256Arg\",\"type\":\"int256\"}],\"name\":\"storeBigInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"getUintUnder64\",\"outputs\":[{\"name\":\"\",\"type\":\"uint40\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"adArg\",\"type\":\"address\"}],\"name\":\"storeAddress\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uintArg\",\"type\":\"uint256\"},{\"name\":\"uint8Arg\",\"type\":\"uint8\"},{\"name\":\"uint16Arg\",\"type\":\"uint16\"},{\"name\":\"uint32Arg\",\"type\":\"uint32\"},{\"name\":\"uint64Arg\",\"type\":\"uint64\"}],\"name\":\"storeUint\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"intArg\",\"type\":\"int256\"},{\"name\":\"int8Arg\",\"type\":\"int8\"},{\"name\":\"int16Arg\",\"type\":\"int16\"},{\"name\":\"int32Arg\",\"type\":\"int32\"},{\"name\":\"int64Arg\",\"type\":\"int64\"}],\"name\":\"storeInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"boolArg\",\"type\":\"bool\"}],\"name\":\"storeBool\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uint72Arg\",\"type\":\"uint72\"},{\"name\":\"uint80Arg\",\"type\":\"uint80\"},{\"name\":\"uint88Arg\",\"type\":\"uint88\"},{\"name\":\"uint96Arg\",\"type\":\"uint96\"},{\"name\":\"uint104Arg\",\"type\":\"uint104\"},{\"name\":\"uint112Arg\",\"type\":\"uint112\"},{\"name\":\"uint120Arg\",\"type\":\"uint120\"},{\"name\":\"uint128Arg\",\"type\":\"uint128\"}],\"name\":\"storeuintUnder128\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"getIntUnder64\",\"outputs\":[{\"name\":\"\",\"type\":\"int40\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"getUintUnder128\",\"outputs\":[{\"name\":\"\",\"type\":\"uint128\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"teArg\",\"type\":\"uint8\"}],\"name\":\"storeEmum\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uint256Arg\",\"type\":\"uint256\"}],\"name\":\"storeUBigInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"strArg\",\"type\":\"string\"}],\"name\":\"storeStr\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uint40Arg\",\"type\":\"uint40\"},{\"name\":\"uint48Arg\",\"type\":\"uint48\"},{\"name\":\"uint56Arg\",\"type\":\"uint56\"}],\"name\":\"storeUintUnder64\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"int72Arg\",\"type\":\"int72\"},{\"name\":\"int80Arg\",\"type\":\"int80\"},{\"name\":\"int88Arg\",\"type\":\"int88\"},{\"name\":\"int96Arg\",\"type\":\"int96\"},{\"name\":\"int104Arg\",\"type\":\"int104\"},{\"name\":\"int112Arg\",\"type\":\"int112\"},{\"name\":\"int120Arg\",\"type\":\"int120\"},{\"name\":\"int128Arg\",\"type\":\"int128\"}],\"name\":\"storeIntUnder128\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"b32arArg\",\"type\":\"bytes32[]\"}],\"name\":\"storeByteArray\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"int40Arg\",\"type\":\"int40\"},{\"name\":\"int48Arg\",\"type\":\"int48\"},{\"name\":\"int56Arg\",\"type\":\"int56\"}],\"name\":\"storeIntUnder64\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]";
	self.bin = @"0x608060405234801561001057600080fd5b50611f03806100206000396000f300608060405260043610610132576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff168062a976a9146101375780630d9ee172146101625780631145a6911461018b578063159c13ad146101b75780632685e64d146101e05780632e64cec114610209578063366534c11461023457806357bfa95e1461025d57806357f84498146102865780637128666b146102b15780637427ce66146102da57806378269bcb1461030357806384c53c361461032c57806390ab02af14610355578063a1c476931461037e578063a555943f146103a9578063a96cbad4146103d4578063b58102fd146103fd578063ca4a3eb514610426578063ef60a0181461044f578063f02a803d14610478578063f58339b2146104a1578063fe500dec146104ca575b600080fd5b34801561014357600080fd5b5061014c6104f3565b60405161015991906119cd565b60405180910390f35b34801561016e57600080fd5b50610189600480360361018491908101906116ad565b61050a565b005b34801561019757600080fd5b506101a0610567565b6040516101ae929190611996565b60405180910390f35b3480156101c357600080fd5b506101de60048036036101d99190810190611461565b610644565b005b3480156101ec57600080fd5b5061020760048036036102029190810190611412565b61065e565b005b34801561021557600080fd5b5061021e6106e4565b60405161022b9190611a1e565b60405180910390f35b34801561024057600080fd5b5061025b60048036036102569190810190611352565b6106ee565b005b34801561026957600080fd5b50610284600480360361027f91908101906114cb565b610738565b005b34801561029257600080fd5b5061029b610742565b6040516102a89190611a39565b60405180910390f35b3480156102bd57600080fd5b506102d860048036036102d391908101906112e8565b61075c565b005b3480156102e657600080fd5b5061030160048036036102fc91908101906116ff565b6107a0565b005b34801561030f57600080fd5b5061032a600480360361032591908101906114f4565b610830565b005b34801561033857600080fd5b50610353600480360361034e91908101906113e9565b6108cc565b005b34801561036157600080fd5b5061037c600480360361037791908101906117c5565b6108e8565b005b34801561038a57600080fd5b5061039361092b565b6040516103a091906119e8565b60405180910390f35b3480156103b557600080fd5b506103be610942565b6040516103cb9190611a03565b60405180910390f35b3480156103e057600080fd5b506103fb60048036036103f691908101906114a2565b610968565b005b34801561040957600080fd5b50610424600480360361041f91908101906116d6565b61098e565b005b34801561043257600080fd5b5061044d6004803603610448919081019061166c565b610998565b005b34801561045b57600080fd5b5061047660048036036104719190810190611776565b6109b2565b005b34801561048457600080fd5b5061049f600480360361049a91908101906115ba565b6109d9565b005b3480156104ad57600080fd5b506104c860048036036104c39190810190611311565b610a1f565b005b3480156104d657600080fd5b506104f160048036036104ec919081019061156b565b610a39565b005b6000600360009054906101000a9004600f0b905090565b80601360008201518160000160006101000a81548163ffffffff021916908360030b63ffffffff16021790555060208201518160000160046101000a81548163ffffffff021916908360030b63ffffffff16021790555090505050565b60608060126010818054806020026020016040519081016040528092919081815260200182805480156105bd57602002820191906000526020600020905b815460001916815260200190600101908083116105a5575b505050505091508080548060200260200160405190810160405280929190818152602001828054801561063557602002820191906000526020600020906000905b82829054906101000a900460070b60070b815260200190600801906020826007010492830192600103820291508084116105fe5790505b50505050509050915091509091565b80600d908051906020019061065a929190610a64565b5050565b82600b60006101000a81548160ff02191690837f01000000000000000000000000000000000000000000000000000000000000009004021790555081600b60016101000a81548164ffffffffff02191690837b010000000000000000000000000000000000000000000000000000009004021790555080600c8160001916905550505050565b6000600954905090565b82600f9080519060200190610704929190610ae4565b50816010908051906020019061071b929190610b31565b508060119080519060200190610732929190610ae4565b50505050565b8060058190555050565b60006007809054906101000a900464ffffffffff16905090565b80600e60016101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b8460068190555083600760006101000a81548160ff021916908360ff16021790555082600760016101000a81548161ffff021916908361ffff16021790555081600760036101000a81548163ffffffff021916908363ffffffff160217905550806007600c6101000a81548167ffffffffffffffff021916908367ffffffffffffffff1602179055505050505050565b8460018190555083600260006101000a81548160ff021916908360000b60ff16021790555082600260016101000a81548161ffff021916908360010b61ffff16021790555081600260036101000a81548163ffffffff021916908360030b63ffffffff160217905550806002600c6101000a81548167ffffffffffffffff021916908360070b67ffffffffffffffff1602179055505050505050565b806000806101000a81548160ff02191690831515021790555050565b80600860006101000a8154816fffffffffffffffffffffffffffffffff02191690836fffffffffffffffffffffffffffffffff1602179055505050505050505050565b6000600260079054906101000a900460040b905090565b6000600860009054906101000a90046fffffffffffffffffffffffffffffffff16905090565b80600e60006101000a81548160ff0219169083600281111561098657fe5b021790555050565b8060098190555050565b80600a90805190602001906109ae929190610bf0565b5050565b826007806101000a81548164ffffffffff021916908364ffffffffff160217905550505050565b80600360006101000a8154816fffffffffffffffffffffffffffffffff0219169083600f0b6fffffffffffffffffffffffffffffffff1602179055505050505050505050565b8060129080519060200190610a35929190610c70565b5050565b82600260076101000a81548164ffffffffff021916908360040b64ffffffffff160217905550505050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f10610aa557805160ff1916838001178555610ad3565b82800160010185558215610ad3579182015b82811115610ad2578251825591602001919060010190610ab7565b5b509050610ae09190610cc3565b5090565b828054828255906000526020600020908101928215610b20579160200282015b82811115610b1f578251825591602001919060010190610b04565b5b509050610b2d9190610ce8565b5090565b82805482825590600052602060002090600301600490048101928215610bdf5791602002820160005b83821115610ba957835183826101000a81548167ffffffffffffffff021916908360070b67ffffffffffffffff1602179055509260200192600801602081600701049283019260010302610b5a565b8015610bdd5782816101000a81549067ffffffffffffffff0219169055600801602081600701049283019260010302610ba9565b505b509050610bec9190610d0d565b5090565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f10610c3157805160ff1916838001178555610c5f565b82800160010185558215610c5f579182015b82811115610c5e578251825591602001919060010190610c43565b5b509050610c6c9190610cc3565b5090565b828054828255906000526020600020908101928215610cb2579160200282015b82811115610cb1578251829060001916905591602001919060010190610c90565b5b509050610cbf9190610d44565b5090565b610ce591905b80821115610ce1576000816000905550600101610cc9565b5090565b90565b610d0a91905b80821115610d06576000816000905550600101610cee565b5090565b90565b610d4191905b80821115610d3d57600081816101000a81549067ffffffffffffffff021916905550600101610d13565b5090565b90565b610d6691905b80821115610d62576000816000905550600101610d4a565b5090565b90565b6000610d758235611c03565b905092915050565b600082601f8301121515610d9057600080fd5b8135610da3610d9e82611a81565b611a54565b91508181835260208401935060208101905083856020840282011115610dc857600080fd5b60005b83811015610df85781610dde8882610f34565b845260208401935060208301925050600181019050610dcb565b5050505092915050565b600082601f8301121515610e1557600080fd5b8135610e28610e2382611aa9565b611a54565b91508181835260208401935060208101905083856020840282011115610e4d57600080fd5b60005b83811015610e7d5781610e63888261102a565b845260208401935060208301925050600181019050610e50565b5050505092915050565b600082601f8301121515610e9a57600080fd5b8135610ead610ea882611ad1565b611a54565b91508181835260208401935060208101905083856020840282011115610ed257600080fd5b60005b83811015610f025781610ee8888261108e565b845260208401935060208301925050600181019050610ed5565b5050505092915050565b6000610f188235611c23565b905092915050565b6000610f2c8235611c2f565b905092915050565b6000610f408235611c5b565b905092915050565b6000610f548235611c65565b905092915050565b600082601f8301121515610f6f57600080fd5b8135610f82610f7d82611af9565b611a54565b91508082526020830160208301858383011115610f9e57600080fd5b610fa9838284611eba565b50505092915050565b6000610fbe8235611c91565b905092915050565b6000610fd28235611caa565b905092915050565b6000610fe68235611cb7565b905092915050565b6000610ffa8235611cc4565b905092915050565b600061100e8235611cd1565b905092915050565b60006110228235611cde565b905092915050565b60006110368235611ceb565b905092915050565b600061104a8235611cf5565b905092915050565b600061105e8235611d02565b905092915050565b60006110728235611d0f565b905092915050565b60006110868235611d1c565b905092915050565b600061109a8235611d29565b905092915050565b60006110ae8235611d36565b905092915050565b60006110c28235611d43565b905092915050565b60006110d68235611d50565b905092915050565b60006110ea8235611d5d565b905092915050565b60006110fe8235611d6a565b905092915050565b600082601f830112151561111957600080fd5b813561112c61112782611b25565b611a54565b9150808252602083016020830185838301111561114857600080fd5b611153838284611eba565b50505092915050565b60006040828403121561116e57600080fd5b6111786040611a54565b905060006111888482850161103e565b600083015250602061119c8482850161103e565b60208301525092915050565b60006111b48235611d77565b905092915050565b60006111c88235611d90565b905092915050565b60006111dc8235611daa565b905092915050565b60006111f08235611dc5565b905092915050565b60006112048235611de1565b905092915050565b60006112188235611def565b905092915050565b600061122c8235611df9565b905092915050565b60006112408235611e09565b905092915050565b60006112548235611e1a565b905092915050565b60006112688235611e2c565b905092915050565b600061127c8235611e3f565b905092915050565b60006112908235611e53565b905092915050565b60006112a48235611e68565b905092915050565b60006112b88235611e75565b905092915050565b60006112cc8235611e8b565b905092915050565b60006112e08235611ea2565b905092915050565b6000602082840312156112fa57600080fd5b600061130884828501610d69565b91505092915050565b60006020828403121561132357600080fd5b600082013567ffffffffffffffff81111561133d57600080fd5b61134984828501610d7d565b91505092915050565b60008060006060848603121561136757600080fd5b600084013567ffffffffffffffff81111561138157600080fd5b61138d86828701610e02565b935050602084013567ffffffffffffffff8111156113aa57600080fd5b6113b686828701610e87565b925050604084013567ffffffffffffffff8111156113d357600080fd5b6113df86828701610e02565b9150509250925092565b6000602082840312156113fb57600080fd5b600061140984828501610f0c565b91505092915050565b60008060006060848603121561142757600080fd5b600061143586828701610f20565b935050602061144686828701610f48565b925050604061145786828701610f34565b9150509250925092565b60006020828403121561147357600080fd5b600082013567ffffffffffffffff81111561148d57600080fd5b61149984828501610f5c565b91505092915050565b6000602082840312156114b457600080fd5b60006114c284828501610fb2565b91505092915050565b6000602082840312156114dd57600080fd5b60006114eb8482850161102a565b91505092915050565b600080600080600060a0868803121561150c57600080fd5b600061151a8882890161102a565b955050602061152b888289016110b6565b945050604061153c88828901611016565b935050606061154d8882890161103e565b925050608061155e8882890161108e565b9150509295509295909350565b60008060006060848603121561158057600080fd5b600061158e86828701611052565b935050602061159f86828701611066565b92505060406115b08682870161107a565b9150509250925092565b600080600080600080600080610100898b0312156115d757600080fd5b60006115e58b828c016110a2565b98505060206115f68b828c016110ca565b97505060406116078b828c016110de565b96505060606116188b828c016110f2565b95505060806116298b828c01610fc6565b94505060a061163a8b828c01610fda565b93505060c061164b8b828c01610fee565b92505060e061165c8b828c01611002565b9150509295985092959890939650565b60006020828403121561167e57600080fd5b600082013567ffffffffffffffff81111561169857600080fd5b6116a484828501611106565b91505092915050565b6000604082840312156116bf57600080fd5b60006116cd8482850161115c565b91505092915050565b6000602082840312156116e857600080fd5b60006116f68482850161120c565b91505092915050565b600080600080600060a0868803121561171757600080fd5b60006117258882890161120c565b955050602061173688828901611298565b9450506040611747888289016111f8565b935050606061175888828901611220565b925050608061176988828901611270565b9150509295509295909350565b60008060006060848603121561178b57600080fd5b600061179986828701611234565b93505060206117aa86828701611248565b92505060406117bb8682870161125c565b9150509250925092565b600080600080600080600080610100898b0312156117e257600080fd5b60006117f08b828c01611284565b98505060206118018b828c016112ac565b97505060406118128b828c016112c0565b96505060606118238b828c016112d4565b95505060806118348b828c016111a8565b94505060a06118458b828c016111bc565b93505060c06118568b828c016111d0565b92505060e06118678b828c016111e4565b9150509295985092959890939650565b600061188282611b6b565b80845260208401935061189483611b51565b60005b828110156118c6576118aa86835161192d565b6118b382611b81565b9150602086019550600181019050611897565b50849250505092915050565b60006118dd82611b76565b8084526020840193506118ef83611b5e565b60005b828110156119215761190586835161195a565b61190e82611b8e565b91506020860195506001810190506118f2565b50849250505092915050565b61193681611b9b565b82525050565b61194581611ba5565b82525050565b61195481611bb2565b82525050565b61196381611bbf565b82525050565b61197281611bcc565b82525050565b61198181611be8565b82525050565b61199081611bf2565b82525050565b600060408201905081810360008301526119b08185611877565b905081810360208301526119c481846118d2565b90509392505050565b60006020820190506119e2600083018461193c565b92915050565b60006020820190506119fd600083018461194b565b92915050565b6000602082019050611a186000830184611969565b92915050565b6000602082019050611a336000830184611978565b92915050565b6000602082019050611a4e6000830184611987565b92915050565b6000604051905081810181811067ffffffffffffffff82111715611a7757600080fd5b8060405250919050565b600067ffffffffffffffff821115611a9857600080fd5b602082029050602081019050919050565b600067ffffffffffffffff821115611ac057600080fd5b602082029050602081019050919050565b600067ffffffffffffffff821115611ae857600080fd5b602082029050602081019050919050565b600067ffffffffffffffff821115611b1057600080fd5b601f19601f8301169050602081019050919050565b600067ffffffffffffffff821115611b3c57600080fd5b601f19601f8301169050602081019050919050565b6000602082019050919050565b6000602082019050919050565b600081519050919050565b600081519050919050565b6000602082019050919050565b6000602082019050919050565b6000819050919050565b600081600f0b9050919050565b60008160040b9050919050565b60008160070b9050919050565b60006fffffffffffffffffffffffffffffffff82169050919050565b6000819050919050565b600064ffffffffff82169050919050565b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b60008115159050919050565b60007fff0000000000000000000000000000000000000000000000000000000000000082169050919050565b6000819050919050565b60007fffffffffff00000000000000000000000000000000000000000000000000000082169050919050565b6000600382101515611ca257600080fd5b819050919050565b600081600c0b9050919050565b600081600d0b9050919050565b600081600e0b9050919050565b600081600f0b9050919050565b60008160010b9050919050565b6000819050919050565b60008160030b9050919050565b60008160040b9050919050565b60008160050b9050919050565b60008160060b9050919050565b60008160070b9050919050565b60008160080b9050919050565b60008160000b9050919050565b60008160090b9050919050565b600081600a0b9050919050565b600081600b0b9050919050565b60006cffffffffffffffffffffffffff82169050919050565b60006dffffffffffffffffffffffffffff82169050919050565b60006effffffffffffffffffffffffffffff82169050919050565b60006fffffffffffffffffffffffffffffffff82169050919050565b600061ffff82169050919050565b6000819050919050565b600063ffffffff82169050919050565b600064ffffffffff82169050919050565b600065ffffffffffff82169050919050565b600066ffffffffffffff82169050919050565b600067ffffffffffffffff82169050919050565b600068ffffffffffffffffff82169050919050565b600060ff82169050919050565b600069ffffffffffffffffffff82169050919050565b60006affffffffffffffffffffff82169050919050565b60006bffffffffffffffffffffffff82169050919050565b828183376000838301525050505600a265627a7a723058202ec2ebfaa3c0a6416e8877a4432ce7b7737fbf341e9a4b4145fa449516e166616c6578706572696d656e74616cf50037";
	return self;
}

- (NSString *)__stringFromArr:(NSArray *)arr{
	NSString *jsonString = nil;
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:arr
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
        return @"[???]";
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        return jsonString;
    }
}


@end

