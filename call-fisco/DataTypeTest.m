// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.



#import "DataTypeTest.h"
#import "Fiscobcosios.framework/Headers/Fiscobcosios.h"	

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
- (FiscobcosiosDeployContractResult*) deploy {
	
	
	NSString *__params = @"[]";
	return FiscobcosiosDeployContract(_abi,_bin,__params);
}



/// retrieve
- (FiscobcosiosCallResult *) retrieve {
	
	
	NSString *__params = @"[]";
	return FiscobcosiosCall(_abi,_address,@"retrieve",__params);
}

/// retrieveArray
- (FiscobcosiosCallResult *) retrieveArray {
	
	
	NSString *__params = @"[]";
	return FiscobcosiosCall(_abi,_address,@"retrieveArray",__params);
}



/// storeAddress
/// @param adArg address type argument, please note this argument only accept hex encoded strings.
- (FiscobcosiosTransactResult *) storeAddress  :(NSString *) adArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"address",
            @"value":adArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscobcosiosSendTransaction(_abi,_address,@"storeAddress",__params);
}

/// storeBigInt
/// @param int256Arg int256 type argument
- (FiscobcosiosTransactResult *) storeBigInt  :(NSString *) int256Arg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"int256",
            @"value":int256Arg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscobcosiosSendTransaction(_abi,_address,@"storeBigInt",__params);
}

/// storeBool
/// @param boolArg bool type argument
- (FiscobcosiosTransactResult *) storeBool  :(BOOL) boolArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"bool",
            @"value":@(boolArg)
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscobcosiosSendTransaction(_abi,_address,@"storeBool",__params);
}

/// storeByteArray
/// @param b32arArg bytes32[] type argument, please note this argument only accept hex encoded strings.
- (FiscobcosiosTransactResult *) storeByteArray  :(NSArray *) b32arArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"bytes32[]",
            @"value":b32arArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscobcosiosSendTransaction(_abi,_address,@"storeByteArray",__params);
}

/// storeBytes
/// @param bytesArg bytes type argument, please note this argument only accept hex encoded strings.
- (FiscobcosiosTransactResult *) storeBytes  :(NSString *) bytesArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"bytes",
            @"value":bytesArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscobcosiosSendTransaction(_abi,_address,@"storeBytes",__params);
}

/// storeEmum
/// @param teArg uint8 type argument
- (FiscobcosiosTransactResult *) storeEmum  :(unsigned int) teArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"uint8",
            @"value":@(teArg)
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscobcosiosSendTransaction(_abi,_address,@"storeEmum",__params);
}

/// storeFixedBytes
/// @param byte1Arg bytes1 type argument, please note this argument only accept hex encoded strings.
/// @param byte5Arg bytes5 type argument, please note this argument only accept hex encoded strings.
/// @param byte32Arg bytes32 type argument, please note this argument only accept hex encoded strings.
- (FiscobcosiosTransactResult *) storeFixedBytes  :(NSString *) byte1Arg 
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
	return FiscobcosiosSendTransaction(_abi,_address,@"storeFixedBytes",__params);
}

/// storeInt
/// @param intArg int256 type argument
/// @param int8Arg int8 type argument
/// @param int16Arg int16 type argument
/// @param int32Arg int32 type argument
/// @param int64Arg int64 type argument
- (FiscobcosiosTransactResult *) storeInt  :(NSString *) intArg 
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
	return FiscobcosiosSendTransaction(_abi,_address,@"storeInt",__params);
}

/// storeIntArray
/// @param iarArg int256[] type argument
/// @param i64arArg int64[] type argument
/// @param i256arArg int256[] type argument
- (FiscobcosiosTransactResult *) storeIntArray  :(NSArray *) iarArg 
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
	return FiscobcosiosSendTransaction(_abi,_address,@"storeIntArray",__params);
}

/// storeStr
/// @param strArg string type argument
- (FiscobcosiosTransactResult *) storeStr  :(NSString *) strArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"string",
            @"value":strArg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscobcosiosSendTransaction(_abi,_address,@"storeStr",__params);
}

/// storeUBigInt
/// @param uint256Arg uint256 type argument
- (FiscobcosiosTransactResult *) storeUBigInt  :(NSString *) uint256Arg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"uint256",
            @"value":uint256Arg
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscobcosiosSendTransaction(_abi,_address,@"storeUBigInt",__params);
}

/// storeUint
/// @param uintArg uint256 type argument
/// @param uint8Arg uint8 type argument
/// @param uint16Arg uint16 type argument
/// @param uint32Arg uint32 type argument
/// @param uint64Arg uint64 type argument
- (FiscobcosiosTransactResult *) storeUint  :(NSString *) uintArg 
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
	return FiscobcosiosSendTransaction(_abi,_address,@"storeUint",__params);
}

	
- (instancetype)init{
	_abi = @"[{\"constant\":true,\"inputs\":[],\"name\":\"retrieveArray\",\"outputs\":[{\"name\":\"\",\"type\":\"bytes32[]\"},{\"name\":\"\",\"type\":\"int64[]\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"bytesArg\",\"type\":\"bytes\"}],\"name\":\"storeBytes\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"byte1Arg\",\"type\":\"bytes1\"},{\"name\":\"byte5Arg\",\"type\":\"bytes5\"},{\"name\":\"byte32Arg\",\"type\":\"bytes32\"}],\"name\":\"storeFixedBytes\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"retrieve\",\"outputs\":[{\"name\":\"\",\"type\":\"uint256\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"iarArg\",\"type\":\"int256[]\"},{\"name\":\"i64arArg\",\"type\":\"int64[]\"},{\"name\":\"i256arArg\",\"type\":\"int256[]\"}],\"name\":\"storeIntArray\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"int256Arg\",\"type\":\"int256\"}],\"name\":\"storeBigInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"adArg\",\"type\":\"address\"}],\"name\":\"storeAddress\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uintArg\",\"type\":\"uint256\"},{\"name\":\"uint8Arg\",\"type\":\"uint8\"},{\"name\":\"uint16Arg\",\"type\":\"uint16\"},{\"name\":\"uint32Arg\",\"type\":\"uint32\"},{\"name\":\"uint64Arg\",\"type\":\"uint64\"}],\"name\":\"storeUint\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"intArg\",\"type\":\"int256\"},{\"name\":\"int8Arg\",\"type\":\"int8\"},{\"name\":\"int16Arg\",\"type\":\"int16\"},{\"name\":\"int32Arg\",\"type\":\"int32\"},{\"name\":\"int64Arg\",\"type\":\"int64\"}],\"name\":\"storeInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"boolArg\",\"type\":\"bool\"}],\"name\":\"storeBool\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"teArg\",\"type\":\"uint8\"}],\"name\":\"storeEmum\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uint256Arg\",\"type\":\"uint256\"}],\"name\":\"storeUBigInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"strArg\",\"type\":\"string\"}],\"name\":\"storeStr\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"b32arArg\",\"type\":\"bytes32[]\"}],\"name\":\"storeByteArray\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]";
	_bin = @"0x608060405234801561001057600080fd5b50610d22806100206000396000f3006080604052600436106100d0576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff1680631145a691146100d5578063159c13ad146101895780632685e64d146101f25780632e64cec114610277578063366534c1146102a257806357bfa95e1461038e5780637128666b146103bb5780637427ce66146103fe57806378269bcb1461046a57806384c53c36146104cb578063a96cbad4146104fa578063b58102fd1461052a578063ca4a3eb514610557578063f58339b2146105c0575b600080fd5b3480156100e157600080fd5b506100ea610626565b604051808060200180602001838103835285818151815260200191508051906020019060200280838360005b83811015610131578082015181840152602081019050610116565b50505050905001838103825284818151815260200191508051906020019060200280838360005b83811015610173578082015181840152602081019050610158565b5050505090500194505050505060405180910390f35b34801561019557600080fd5b506101f0600480360381019080803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284378201915050505050509192919290505050610703565b005b3480156101fe57600080fd5b5061027560048036038101908080357effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916906020019092919080357affffffffffffffffffffffffffffffffffffffffffffffffffffff19169060200190929190803560001916906020019092919050505061071d565b005b34801561028357600080fd5b5061028c6107a3565b6040518082815260200191505060405180910390f35b3480156102ae57600080fd5b5061038c6004803603810190808035906020019082018035906020019080806020026020016040519081016040528093929190818152602001838360200280828437820191505050505050919291929080359060200190820180359060200190808060200260200160405190810160405280939291908181526020018383602002808284378201915050505050509192919290803590602001908201803590602001908080602002602001604051908101604052809392919081815260200183836020028082843782019150505050505091929192905050506107ad565b005b34801561039a57600080fd5b506103b9600480360381019080803590602001909291905050506107f7565b005b3480156103c757600080fd5b506103fc600480360381019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190505050610801565b005b34801561040a57600080fd5b5061046860048036038101908080359060200190929190803560ff169060200190929190803561ffff169060200190929190803563ffffffff169060200190929190803567ffffffffffffffff169060200190929190505050610845565b005b34801561047657600080fd5b506104c960048036038101908080359060200190929190803560000b9060200190929190803560010b9060200190929190803560030b9060200190929190803560070b90602001909291905050506108d5565b005b3480156104d757600080fd5b506104f8600480360381019080803515159060200190929190505050610971565b005b34801561050657600080fd5b50610528600480360381019080803560ff16906020019092919050505061098d565b005b34801561053657600080fd5b50610555600480360381019080803590602001909291905050506109b3565b005b34801561056357600080fd5b506105be600480360381019080803590602001908201803590602001908080601f01602080910402602001604051908101604052809392919081815260200183838082843782019150505050505091929192905050506109bd565b005b3480156105cc57600080fd5b50610624600480360381019080803590602001908201803590602001908080602002602001604051908101604052809392919081815260200183836020028082843782019150505050505091929192905050506109d7565b005b606080600f600d8180548060200260200160405190810160405280929190818152602001828054801561067c57602002820191906000526020600020905b81546000191681526020019060010190808311610664575b50505050509150808054806020026020016040519081016040528092919081815260200182805480156106f457602002820191906000526020600020906000905b82829054906101000a900460070b60070b815260200190600801906020826007010492830192600103820291508084116106bd5790505b50505050509050915091509091565b80600a90805190602001906107199291906109f1565b5050565b82600860006101000a81548160ff02191690837f01000000000000000000000000000000000000000000000000000000000000009004021790555081600860016101000a81548164ffffffffff02191690837b01000000000000000000000000000000000000000000000000000000900402179055508060098160001916905550505050565b6000600654905090565b82600c90805190602001906107c3929190610a71565b5081600d90805190602001906107da929190610abe565b5080600e90805190602001906107f1929190610a71565b50505050565b8060038190555050565b80600b60016101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b8460048190555083600560006101000a81548160ff021916908360ff16021790555082600560016101000a81548161ffff021916908361ffff16021790555081600560036101000a81548163ffffffff021916908363ffffffff16021790555080600560076101000a81548167ffffffffffffffff021916908367ffffffffffffffff1602179055505050505050565b8460018190555083600260006101000a81548160ff021916908360000b60ff16021790555082600260016101000a81548161ffff021916908360010b61ffff16021790555081600260036101000a81548163ffffffff021916908360030b63ffffffff16021790555080600260076101000a81548167ffffffffffffffff021916908360070b67ffffffffffffffff1602179055505050505050565b806000806101000a81548160ff02191690831515021790555050565b80600b60006101000a81548160ff021916908360028111156109ab57fe5b021790555050565b8060068190555050565b80600790805190602001906109d3929190610b7d565b5050565b80600f90805190602001906109ed929190610bfd565b5050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f10610a3257805160ff1916838001178555610a60565b82800160010185558215610a60579182015b82811115610a5f578251825591602001919060010190610a44565b5b509050610a6d9190610c50565b5090565b828054828255906000526020600020908101928215610aad579160200282015b82811115610aac578251825591602001919060010190610a91565b5b509050610aba9190610c75565b5090565b82805482825590600052602060002090600301600490048101928215610b6c5791602002820160005b83821115610b3657835183826101000a81548167ffffffffffffffff021916908360070b67ffffffffffffffff1602179055509260200192600801602081600701049283019260010302610ae7565b8015610b6a5782816101000a81549067ffffffffffffffff0219169055600801602081600701049283019260010302610b36565b505b509050610b799190610c9a565b5090565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f10610bbe57805160ff1916838001178555610bec565b82800160010185558215610bec579182015b82811115610beb578251825591602001919060010190610bd0565b5b509050610bf99190610c50565b5090565b828054828255906000526020600020908101928215610c3f579160200282015b82811115610c3e578251829060001916905591602001919060010190610c1d565b5b509050610c4c9190610cd1565b5090565b610c7291905b80821115610c6e576000816000905550600101610c56565b5090565b90565b610c9791905b80821115610c93576000816000905550600101610c7b565b5090565b90565b610cce91905b80821115610cca57600081816101000a81549067ffffffffffffffff021916905550600101610ca0565b5090565b90565b610cf391905b80821115610cef576000816000905550600101610cd7565b5090565b905600a165627a7a72305820b7fec256b651ad667b5d2dec8b45e1bcfac397d0ba6ecbd27119b5eaabab98480029";
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

