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

/// storeStruct
/// @param structArg (int32,int32) type argument
- (FiscobcosiosTransactResult *) storeStruct  :(struct Class0) structArg{
	
	NSArray * __resArr = @[
        @{
            @"type":@"(int32,int32)",
            @"value":@{@"Value":@(structArg.value),@"Date":@(structArg.date)}
        }
    ];
	NSString *__params = [self __stringFromArr:__resArr];
	return FiscobcosiosSendTransaction(_abi,_address,@"storeStruct",__params);
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
	_abi = @"[{\"constant\":false,\"inputs\":[{\"components\":[{\"name\":\"value\",\"type\":\"int32\"},{\"name\":\"date\",\"type\":\"int32\"}],\"name\":\"structArg\",\"type\":\"tuple\"}],\"name\":\"storeStruct\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"retrieveArray\",\"outputs\":[{\"name\":\"\",\"type\":\"bytes32[]\"},{\"name\":\"\",\"type\":\"int64[]\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"bytesArg\",\"type\":\"bytes\"}],\"name\":\"storeBytes\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"byte1Arg\",\"type\":\"bytes1\"},{\"name\":\"byte5Arg\",\"type\":\"bytes5\"},{\"name\":\"byte32Arg\",\"type\":\"bytes32\"}],\"name\":\"storeFixedBytes\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"retrieve\",\"outputs\":[{\"name\":\"\",\"type\":\"uint256\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"iarArg\",\"type\":\"int256[]\"},{\"name\":\"i64arArg\",\"type\":\"int64[]\"},{\"name\":\"i256arArg\",\"type\":\"int256[]\"}],\"name\":\"storeIntArray\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"int256Arg\",\"type\":\"int256\"}],\"name\":\"storeBigInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"adArg\",\"type\":\"address\"}],\"name\":\"storeAddress\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uintArg\",\"type\":\"uint256\"},{\"name\":\"uint8Arg\",\"type\":\"uint8\"},{\"name\":\"uint16Arg\",\"type\":\"uint16\"},{\"name\":\"uint32Arg\",\"type\":\"uint32\"},{\"name\":\"uint64Arg\",\"type\":\"uint64\"}],\"name\":\"storeUint\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"intArg\",\"type\":\"int256\"},{\"name\":\"int8Arg\",\"type\":\"int8\"},{\"name\":\"int16Arg\",\"type\":\"int16\"},{\"name\":\"int32Arg\",\"type\":\"int32\"},{\"name\":\"int64Arg\",\"type\":\"int64\"}],\"name\":\"storeInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"boolArg\",\"type\":\"bool\"}],\"name\":\"storeBool\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"teArg\",\"type\":\"uint8\"}],\"name\":\"storeEmum\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"uint256Arg\",\"type\":\"uint256\"}],\"name\":\"storeUBigInt\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"strArg\",\"type\":\"string\"}],\"name\":\"storeStr\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":false,\"inputs\":[{\"name\":\"b32arArg\",\"type\":\"bytes32[]\"}],\"name\":\"storeByteArray\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]";
	_bin = @"0x608060405234801561001057600080fd5b506115e1806100206000396000f3006080604052600436106100db576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff1680630d9ee172146100e05780631145a69114610109578063159c13ad146101355780632685e64d1461015e5780632e64cec114610187578063366534c1146101b257806357bfa95e146101db5780637128666b146102045780637427ce661461022d57806378269bcb1461025657806384c53c361461027f578063a96cbad4146102a8578063b58102fd146102d1578063ca4a3eb5146102fa578063f58339b214610323575b600080fd5b3480156100ec57600080fd5b5061010760048036036101029190810190611104565b61034c565b005b34801561011557600080fd5b5061011e6103a9565b60405161012c9291906112b0565b60405180910390f35b34801561014157600080fd5b5061015c60048036036101579190810190610fb9565b610486565b005b34801561016a57600080fd5b5061018560048036036101809190810190610f6a565b6104a0565b005b34801561019357600080fd5b5061019c610526565b6040516101a991906112e7565b60405180910390f35b3480156101be57600080fd5b506101d960048036036101d49190810190610eaa565b610530565b005b3480156101e757600080fd5b5061020260048036036101fd9190810190611023565b61057a565b005b34801561021057600080fd5b5061022b60048036036102269190810190610e40565b610584565b005b34801561023957600080fd5b50610254600480360361024f9190810190611156565b6105c8565b005b34801561026257600080fd5b5061027d6004803603610278919081019061104c565b610658565b005b34801561028b57600080fd5b506102a660048036036102a19190810190610f41565b6106f4565b005b3480156102b457600080fd5b506102cf60048036036102ca9190810190610ffa565b610710565b005b3480156102dd57600080fd5b506102f860048036036102f3919081019061112d565b610736565b005b34801561030657600080fd5b50610321600480360361031c91908101906110c3565b610740565b005b34801561032f57600080fd5b5061034a60048036036103459190810190610e69565b61075a565b005b80601060008201518160000160006101000a81548163ffffffff021916908360030b63ffffffff16021790555060208201518160000160046101000a81548163ffffffff021916908360030b63ffffffff16021790555090505050565b606080600f600d818054806020026020016040519081016040528092919081815260200182805480156103ff57602002820191906000526020600020905b815460001916815260200190600101908083116103e7575b505050505091508080548060200260200160405190810160405280929190818152602001828054801561047757602002820191906000526020600020906000905b82829054906101000a900460070b60070b815260200190600801906020826007010492830192600103820291508084116104405790505b50505050509050915091509091565b80600a908051906020019061049c929190610774565b5050565b82600860006101000a81548160ff02191690837f01000000000000000000000000000000000000000000000000000000000000009004021790555081600860016101000a81548164ffffffffff02191690837b01000000000000000000000000000000000000000000000000000000900402179055508060098160001916905550505050565b6000600654905090565b82600c90805190602001906105469291906107f4565b5081600d908051906020019061055d929190610841565b5080600e90805190602001906105749291906107f4565b50505050565b8060038190555050565b80600b60016101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b8460048190555083600560006101000a81548160ff021916908360ff16021790555082600560016101000a81548161ffff021916908361ffff16021790555081600560036101000a81548163ffffffff021916908363ffffffff16021790555080600560076101000a81548167ffffffffffffffff021916908367ffffffffffffffff1602179055505050505050565b8460018190555083600260006101000a81548160ff021916908360000b60ff16021790555082600260016101000a81548161ffff021916908360010b61ffff16021790555081600260036101000a81548163ffffffff021916908360030b63ffffffff16021790555080600260076101000a81548167ffffffffffffffff021916908360070b67ffffffffffffffff1602179055505050505050565b806000806101000a81548160ff02191690831515021790555050565b80600b60006101000a81548160ff0219169083600281111561072e57fe5b021790555050565b8060068190555050565b8060079080519060200190610756929190610900565b5050565b80600f9080519060200190610770929190610980565b5050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f106107b557805160ff19168380011785556107e3565b828001600101855582156107e3579182015b828111156107e25782518255916020019190600101906107c7565b5b5090506107f091906109d3565b5090565b828054828255906000526020600020908101928215610830579160200282015b8281111561082f578251825591602001919060010190610814565b5b50905061083d91906109f8565b5090565b828054828255906000526020600020906003016004900481019282156108ef5791602002820160005b838211156108b957835183826101000a81548167ffffffffffffffff021916908360070b67ffffffffffffffff160217905550926020019260080160208160070104928301926001030261086a565b80156108ed5782816101000a81549067ffffffffffffffff02191690556008016020816007010492830192600103026108b9565b505b5090506108fc9190610a1d565b5090565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061094157805160ff191683800117855561096f565b8280016001018555821561096f579182015b8281111561096e578251825591602001919060010190610953565b5b50905061097c91906109d3565b5090565b8280548282559060005260206000209081019282156109c2579160200282015b828111156109c15782518290600019169055916020019190600101906109a0565b5b5090506109cf9190610a54565b5090565b6109f591905b808211156109f15760008160009055506001016109d9565b5090565b90565b610a1a91905b80821115610a165760008160009055506001016109fe565b5090565b90565b610a5191905b80821115610a4d57600081816101000a81549067ffffffffffffffff021916905550600101610a23565b5090565b90565b610a7691905b80821115610a72576000816000905550600101610a5a565b5090565b90565b6000610a85823561146a565b905092915050565b600082601f8301121515610aa057600080fd5b8135610ab3610aae8261132f565b611302565b91508181835260208401935060208101905083856020840282011115610ad857600080fd5b60005b83811015610b085781610aee8882610c44565b845260208401935060208301925050600181019050610adb565b5050505092915050565b600082601f8301121515610b2557600080fd5b8135610b38610b3382611357565b611302565b91508181835260208401935060208101905083856020840282011115610b5d57600080fd5b60005b83811015610b8d5781610b738882610cea565b845260208401935060208301925050600181019050610b60565b5050505092915050565b600082601f8301121515610baa57600080fd5b8135610bbd610bb88261137f565b611302565b91508181835260208401935060208101905083856020840282011115610be257600080fd5b60005b83811015610c125781610bf88882610d12565b845260208401935060208301925050600181019050610be5565b5050505092915050565b6000610c28823561148a565b905092915050565b6000610c3c8235611496565b905092915050565b6000610c5082356114c2565b905092915050565b6000610c6482356114cc565b905092915050565b600082601f8301121515610c7f57600080fd5b8135610c92610c8d826113a7565b611302565b91508082526020830160208301858383011115610cae57600080fd5b610cb9838284611598565b50505092915050565b6000610cce82356114f8565b905092915050565b6000610ce28235611511565b905092915050565b6000610cf6823561151e565b905092915050565b6000610d0a8235611528565b905092915050565b6000610d1e8235611535565b905092915050565b6000610d328235611542565b905092915050565b600082601f8301121515610d4d57600080fd5b8135610d60610d5b826113d3565b611302565b91508082526020830160208301858383011115610d7c57600080fd5b610d87838284611598565b50505092915050565b600060408284031215610da257600080fd5b610dac6040611302565b90506000610dbc84828501610cfe565b6000830152506020610dd084828501610cfe565b60208301525092915050565b6000610de8823561154f565b905092915050565b6000610dfc823561155d565b905092915050565b6000610e108235611567565b905092915050565b6000610e248235611577565b905092915050565b6000610e38823561158b565b905092915050565b600060208284031215610e5257600080fd5b6000610e6084828501610a79565b91505092915050565b600060208284031215610e7b57600080fd5b600082013567ffffffffffffffff811115610e9557600080fd5b610ea184828501610a8d565b91505092915050565b600080600060608486031215610ebf57600080fd5b600084013567ffffffffffffffff811115610ed957600080fd5b610ee586828701610b12565b935050602084013567ffffffffffffffff811115610f0257600080fd5b610f0e86828701610b97565b925050604084013567ffffffffffffffff811115610f2b57600080fd5b610f3786828701610b12565b9150509250925092565b600060208284031215610f5357600080fd5b6000610f6184828501610c1c565b91505092915050565b600080600060608486031215610f7f57600080fd5b6000610f8d86828701610c30565b9350506020610f9e86828701610c58565b9250506040610faf86828701610c44565b9150509250925092565b600060208284031215610fcb57600080fd5b600082013567ffffffffffffffff811115610fe557600080fd5b610ff184828501610c6c565b91505092915050565b60006020828403121561100c57600080fd5b600061101a84828501610cc2565b91505092915050565b60006020828403121561103557600080fd5b600061104384828501610cea565b91505092915050565b600080600080600060a0868803121561106457600080fd5b600061107288828901610cea565b955050602061108388828901610d26565b945050604061109488828901610cd6565b93505060606110a588828901610cfe565b92505060806110b688828901610d12565b9150509295509295909350565b6000602082840312156110d557600080fd5b600082013567ffffffffffffffff8111156110ef57600080fd5b6110fb84828501610d3a565b91505092915050565b60006040828403121561111657600080fd5b600061112484828501610d90565b91505092915050565b60006020828403121561113f57600080fd5b600061114d84828501610df0565b91505092915050565b600080600080600060a0868803121561116e57600080fd5b600061117c88828901610df0565b955050602061118d88828901610e2c565b945050604061119e88828901610ddc565b93505060606111af88828901610e04565b92505060806111c088828901610e18565b9150509295509295909350565b60006111d882611419565b8084526020840193506111ea836113ff565b60005b8281101561121c57611200868351611283565b6112098261142f565b91506020860195506001810190506111ed565b50849250505092915050565b600061123382611424565b8084526020840193506112458361140c565b60005b828110156112775761125b868351611292565b6112648261143c565b9150602086019550600181019050611248565b50849250505092915050565b61128c81611449565b82525050565b61129b81611453565b82525050565b6112aa81611460565b82525050565b600060408201905081810360008301526112ca81856111cd565b905081810360208301526112de8184611228565b90509392505050565b60006020820190506112fc60008301846112a1565b92915050565b6000604051905081810181811067ffffffffffffffff8211171561132557600080fd5b8060405250919050565b600067ffffffffffffffff82111561134657600080fd5b602082029050602081019050919050565b600067ffffffffffffffff82111561136e57600080fd5b602082029050602081019050919050565b600067ffffffffffffffff82111561139657600080fd5b602082029050602081019050919050565b600067ffffffffffffffff8211156113be57600080fd5b601f19601f8301169050602081019050919050565b600067ffffffffffffffff8211156113ea57600080fd5b601f19601f8301169050602081019050919050565b6000602082019050919050565b6000602082019050919050565b600081519050919050565b600081519050919050565b6000602082019050919050565b6000602082019050919050565b6000819050919050565b60008160070b9050919050565b6000819050919050565b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b60008115159050919050565b60007fff0000000000000000000000000000000000000000000000000000000000000082169050919050565b6000819050919050565b60007fffffffffff00000000000000000000000000000000000000000000000000000082169050919050565b600060038210151561150957600080fd5b819050919050565b60008160010b9050919050565b6000819050919050565b60008160030b9050919050565b60008160070b9050919050565b60008160000b9050919050565b600061ffff82169050919050565b6000819050919050565b600063ffffffff82169050919050565b600067ffffffffffffffff82169050919050565b600060ff82169050919050565b828183376000838301525050505600a265627a7a723058200116dd0243e8ad3eb0ac53c51267090e5adcbe47eae6f7359a02bd60113432426c6578706572696d656e74616cf50037";
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

