// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.



#import "DataTypeTest.h"
#import "FiscoBcosMobile.framework/Headers/FiscoBcosMobile.h"	

@implementation DataTypeTest
// DataTypeTestABI is the input ABI used to generate the binding from.

/// initWithAddress
- (instancetype) initWithAddress:(NSString *)addr{
	if (self = [super init]){
		self = [self init];
		_address = addr;
	}
	return self;
}

/// deploy 
- (FiscoBcosMobileDeployContractResult*) deploy {
	
	
	NSString *__params = @"[]";
	return FiscoBcosMobileDeployContract(_abi,_bin,__params);
}



/// retrieve
- (FiscoBcosMobileCallResult *) retrieve {
	
	
	NSString *__params = @"[]";
	return FiscoBcosMobileCall(_abi,_address,@"retrieve",__params);
}



/// storeAddress
/// @param adArg address type argument, please note this argument only accept hex encoded strings.
- (FiscoBcosMobileTransactResult *) storeAddress  :(NSString *) adArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"address",
            @"value":adArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeAddress",__params);
}

/// storeBigInt
/// @param int256Arg int256 type argument
- (FiscoBcosMobileTransactResult *) storeBigInt  :(NSString *) int256Arg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"int256",
            @"value":int256Arg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeBigInt",__params);
}

/// storeBool
/// @param boolArg bool type argument
- (FiscoBcosMobileTransactResult *) storeBool  :(BOOL) boolArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"bool",
            @"value":@(boolArg)
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeBool",__params);
}

/// storeByteArray
/// @param b32arArg bytes32[] type argument, please note this argument only accept hex encoded strings.
- (FiscoBcosMobileTransactResult *) storeByteArray  :(NSArray *) b32arArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"bytes32[]",
            @"value":b32arArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeByteArray",__params);
}

/// storeBytes
/// @param bytesArg bytes type argument, please note this argument only accept hex encoded strings.
- (FiscoBcosMobileTransactResult *) storeBytes  :(NSString *) bytesArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"bytes",
            @"value":bytesArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeBytes",__params);
}

/// storeEmum
/// @param teArg uint8 type argument
- (FiscoBcosMobileTransactResult *) storeEmum  :(unsigned int) teArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"uint8",
            @"value":[NSString stringWithFormat:@"%u", teArg]
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeEmum",__params);
}

/// storeFixedBytes
/// @param byte1Arg bytes1 type argument, please note this argument only accept hex encoded strings.
/// @param byte5Arg bytes5 type argument, please note this argument only accept hex encoded strings.
/// @param byte32Arg bytes32 type argument, please note this argument only accept hex encoded strings.
- (FiscoBcosMobileTransactResult *) storeFixedBytes  :(NSString *) byte1Arg 
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
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeFixedBytes",__params);
}

/// storeInt
/// @param intArg int256 type argument
/// @param int8Arg int8 type argument
/// @param int16Arg int16 type argument
/// @param int32Arg int32 type argument
/// @param int64Arg int64 type argument
- (FiscoBcosMobileTransactResult *) storeInt  :(NSString *) intArg 
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
            @"value":[NSString stringWithFormat:@"%d", int8Arg]
        },
		@{
            @"type":@"int16",
            @"value":[NSString stringWithFormat:@"%d", int16Arg]
        },
		@{
            @"type":@"int32",
            @"value":[NSString stringWithFormat:@"%d", int32Arg]
        },
		@{
            @"type":@"int64",
            @"value":[NSString stringWithFormat:@"%.0lf", int64Arg]
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeInt",__params);
}

/// storeIntArray
/// @param iarArg int256[] type argument
/// @param i64arArg int64[] type argument
/// @param i256arArg int256[] type argument
- (FiscoBcosMobileTransactResult *) storeIntArray  :(NSArray *) iarArg 
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
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeIntArray",__params);
}

/// storeStr
/// @param strArg string type argument
- (FiscoBcosMobileTransactResult *) storeStr  :(NSString *) strArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"string",
            @"value":strArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeStr",__params);
}

/// storeUBigInt
/// @param uint256Arg uint256 type argument
- (FiscoBcosMobileTransactResult *) storeUBigInt  :(NSString *) uint256Arg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"uint256",
            @"value":uint256Arg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeUBigInt",__params);
}

/// storeUint
/// @param uintArg uint256 type argument
/// @param uint8Arg uint8 type argument
/// @param uint16Arg uint16 type argument
/// @param uint32Arg uint32 type argument
/// @param uint64Arg uint64 type argument
- (FiscoBcosMobileTransactResult *) storeUint  :(NSString *) uintArg 
	uint8Arg:(unsigned int) uint8Arg 
	uint16Arg:(unsigned int) uint16Arg 
	uint32Arg:(unsigned int) uint32Arg 
	uint64Arg:(double) uint64Arg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"uint256",
            @"value":uintArg
        },
		@{
            @"type":@"uint8",
            @"value":[NSString stringWithFormat:@"%u", uint8Arg]
        },
		@{
            @"type":@"uint16",
            @"value":[NSString stringWithFormat:@"%u", uint16Arg]
        },
		@{
            @"type":@"uint32",
            @"value":[NSString stringWithFormat:@"%u", uint32Arg]
        },
		@{
            @"type":@"uint64",
            @"value":[NSString stringWithFormat:@"%.0lf", uint64Arg]
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscoBcosMobileSendTransaction(_abi,_address,@"storeUint",__params);
}

	
- (instancetype)init{
	_abi = @"[{\"constant\":false,\"inputs\":[{\"name\":\"bytesArg\",\"type\":\"bytes\"}],\"name\":\"storeBytes\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"byte1Arg\",\"type\":\"bytes1\"},{\"name\":\"byte5Arg\",\"type\":\"bytes5\"},{\"name\":\"byte32Arg\",\"type\":\"bytes32\"}],\"name\":\"storeFixedBytes\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"retrieve\",\"outputs\":[{\"name\":\"\",\"type\":\"uint256\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"iarArg\",\"type\":\"int256[]\"},{\"name\":\"i64arArg\",\"type\":\"int64[]\"},{\"name\":\"i256arArg\",\"type\":\"int256[]\"}],\"name\":\"storeIntArray\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"int256Arg\",\"type\":\"int256\"}],\"name\":\"storeBigInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"adArg\",\"type\":\"address\"}],\"name\":\"storeAddress\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uintArg\",\"type\":\"uint256\"},{\"name\":\"uint8Arg\",\"type\":\"uint8\"},{\"name\":\"uint16Arg\",\"type\":\"uint16\"},{\"name\":\"uint32Arg\",\"type\":\"uint32\"},{\"name\":\"uint64Arg\",\"type\":\"uint64\"}],\"name\":\"storeUint\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"intArg\",\"type\":\"int256\"},{\"name\":\"int8Arg\",\"type\":\"int8\"},{\"name\":\"int16Arg\",\"type\":\"int16\"},{\"name\":\"int32Arg\",\"type\":\"int32\"},{\"name\":\"int64Arg\",\"type\":\"int64\"}],\"name\":\"storeInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"boolArg\",\"type\":\"bool\"}],\"name\":\"storeBool\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"teArg\",\"type\":\"uint8\"}],\"name\":\"storeEmum\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uint256Arg\",\"type\":\"uint256\"}],\"name\":\"storeUBigInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"strArg\",\"type\":\"string\"}],\"name\":\"storeStr\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"b32arArg\",\"type\":\"bytes32[]\"}],\"name\":\"storeByteArray\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]";
	_bin = @"0x608060405234801561001057600080fd5b50610b86806100206000396000f3006080604052600436106100c5576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff168063159c13ad146100ca5780632685e64d146101335780632e64cec1146101b8578063366534c1146101e357806357bfa95e146102cf5780637128666b146102fc5780637427ce661461033f57806378269bcb146103ab57806384c53c361461040c578063a96cbad41461043b578063b58102fd1461046b578063ca4a3eb514610498578063f58339b214610501575b600080fd5b3480156100d657600080fd5b50610131600480360381019080803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284378201915050505050509192919290505050610567565b005b34801561013f57600080fd5b506101b660048036038101908080357effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916906020019092919080357affffffffffffffffffffffffffffffffffffffffffffffffffffff191690602001909291908035600019169060200190929190505050610581565b005b3480156101c457600080fd5b506101cd610607565b6040518082815260200191505060405180910390f35b3480156101ef57600080fd5b506102cd600480360381019080803590602001908201803590602001908080602002602001604051908101604052809392919081815260200183836020028082843782019150505050505091929192908035906020019082018035906020019080806020026020016040519081016040528093929190818152602001838360200280828437820191505050505050919291929080359060200190820180359060200190808060200260200160405190810160405280939291908181526020018383602002808284378201915050505050509192919290505050610611565b005b3480156102db57600080fd5b506102fa6004803603810190808035906020019092919050505061065b565b005b34801561030857600080fd5b5061033d600480360381019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190505050610665565b005b34801561034b57600080fd5b506103a960048036038101908080359060200190929190803560ff169060200190929190803561ffff169060200190929190803563ffffffff169060200190929190803567ffffffffffffffff1690602001909291905050506106a9565b005b3480156103b757600080fd5b5061040a60048036038101908080359060200190929190803560000b9060200190929190803560010b9060200190929190803560030b9060200190929190803560070b9060200190929190505050610739565b005b34801561041857600080fd5b506104396004803603810190808035151590602001909291905050506107d5565b005b34801561044757600080fd5b50610469600480360381019080803560ff1690602001909291905050506107f1565b005b34801561047757600080fd5b5061049660048036038101908080359060200190929190505050610817565b005b3480156104a457600080fd5b506104ff600480360381019080803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284378201915050505050509192919290505050610821565b005b34801561050d57600080fd5b506105656004803603810190808035906020019082018035906020019080806020026020016040519081016040528093929190818152602001838360200280828437820191505050505050919291929050505061083b565b005b80600a908051906020019061057d929190610855565b5050565b82600860006101000a81548160ff02191690837f01000000000000000000000000000000000000000000000000000000000000009004021790555081600860016101000a81548164ffffffffff02191690837b01000000000000000000000000000000000000000000000000000000900402179055508060098160001916905550505050565b6000600654905090565b82600c90805190602001906106279291906108d5565b5081600d908051906020019061063e929190610922565b5080600e90805190602001906106559291906108d5565b50505050565b8060038190555050565b80600b60016101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b8460048190555083600560006101000a81548160ff021916908360ff16021790555082600560016101000a81548161ffff021916908361ffff16021790555081600560036101000a81548163ffffffff021916908363ffffffff16021790555080600560076101000a81548167ffffffffffffffff021916908367ffffffffffffffff1602179055505050505050565b8460018190555083600260006101000a81548160ff021916908360000b60ff16021790555082600260016101000a81548161ffff021916908360010b61ffff16021790555081600260036101000a81548163ffffffff021916908360030b63ffffffff16021790555080600260076101000a81548167ffffffffffffffff021916908360070b67ffffffffffffffff1602179055505050505050565b806000806101000a81548160ff02191690831515021790555050565b80600b60006101000a81548160ff0219169083600281111561080f57fe5b021790555050565b8060068190555050565b80600790805190602001906108379291906109e1565b5050565b80600f9080519060200190610851929190610a61565b5050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061089657805160ff19168380011785556108c4565b828001600101855582156108c4579182015b828111156108c35782518255916020019190600101906108a8565b5b5090506108d19190610ab4565b5090565b828054828255906000526020600020908101928215610911579160200282015b828111156109105782518255916020019190600101906108f5565b5b50905061091e9190610ad9565b5090565b828054828255906000526020600020906003016004900481019282156109d05791602002820160005b8382111561099a57835183826101000a81548167ffffffffffffffff021916908360070b67ffffffffffffffff160217905550926020019260080160208160070104928301926001030261094b565b80156109ce5782816101000a81549067ffffffffffffffff021916905560080160208160070104928301926001030261099a565b505b5090506109dd9190610afe565b5090565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f10610a2257805160ff1916838001178555610a50565b82800160010185558215610a50579182015b82811115610a4f578251825591602001919060010190610a34565b5b509050610a5d9190610ab4565b5090565b828054828255906000526020600020908101928215610aa3579160200282015b82811115610aa2578251829060001916905591602001919060010190610a81565b5b509050610ab09190610b35565b5090565b610ad691905b80821115610ad2576000816000905550600101610aba565b5090565b90565b610afb91905b80821115610af7576000816000905550600101610adf565b5090565b90565b610b3291905b80821115610b2e57600081816101000a81549067ffffffffffffffff021916905550600101610b04565b5090565b90565b610b5791905b80821115610b53576000816000905550600101610b3b565b5090565b905600a165627a7a72305820e6c5df2d7f9c63410c2655fd6d428b2209d04874b884679295237ce46528f2900029";
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

