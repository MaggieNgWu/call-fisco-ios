#import <Foundation/Foundation.h>
#import "FiscoBcosIosSdk.framework/Headers/FiscoBcosIosSdk.h"

NS_ASSUME_NONNULL_BEGIN


// Class0 is an auto generated low-level Go binding around an user-defined struct.
struct Class0{
int value ;
int date ;

};


@interface DataTypeTest : NSObject

@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *abi;
@property (nonatomic, copy) NSString *bin;

- (instancetype)initWithAddress:(NSString *)addr;

/// deploy 
- (MobileDeployContractResult*)  deploy ;


/// retrieve 
/// @return  uint256 type argument
- (MobileCallResult *) retrieve ;

/// retrieveArray 
/// @return  bytes32[] type argument
/// @return  int64[] type argument
- (MobileCallResult *) retrieveArray ;



/// storeAddress
/// @param adArg address type argument, please note this argument only accept hex encoded strings.
- (MobileTransactResult *) storeAddress  :(NSString *) adArg;

/// storeBigInt
/// @param int256Arg int256 type argument
- (MobileTransactResult *) storeBigInt  :(NSString *) int256Arg;

/// storeBool
/// @param boolArg bool type argument
- (MobileTransactResult *) storeBool  :(BOOL) boolArg;

/// storeByteArray
/// @param b32arArg bytes32[] type argument, please note this argument only accept hex encoded strings.
- (MobileTransactResult *) storeByteArray  :(NSArray *) b32arArg;

/// storeBytes
/// @param bytesArg bytes type argument, please note this argument only accept hex encoded strings.
- (MobileTransactResult *) storeBytes  :(NSString *) bytesArg;

/// storeEmum
/// @param teArg uint8 type argument
- (MobileTransactResult *) storeEmum  :(unsigned int) teArg;

/// storeFixedBytes
/// @param byte1Arg bytes1 type argument, please note this argument only accept hex encoded strings.
/// @param byte5Arg bytes5 type argument, please note this argument only accept hex encoded strings.
/// @param byte32Arg bytes32 type argument, please note this argument only accept hex encoded strings.
- (MobileTransactResult *) storeFixedBytes  :(NSString *) byte1Arg 
	byte5Arg:(NSString *) byte5Arg 
	byte32Arg:(NSString *) byte32Arg;

/// storeInt
/// @param intArg int256 type argument
/// @param int8Arg int8 type argument
/// @param int16Arg int16 type argument
/// @param int32Arg int32 type argument
/// @param int64Arg int64 type argument
- (MobileTransactResult *) storeInt  :(NSString *) intArg 
	int8Arg:(int) int8Arg 
	int16Arg:(int) int16Arg 
	int32Arg:(int) int32Arg 
	int64Arg:(double) int64Arg;

/// storeIntArray
/// @param iarArg int256[] type argument
/// @param i64arArg int64[] type argument
/// @param i256arArg int256[] type argument
- (MobileTransactResult *) storeIntArray  :(NSArray *) iarArg 
	i64arArg:(NSArray *) i64arArg 
	i256arArg:(NSArray *) i256arArg;

/// storeStr
/// @param strArg string type argument
- (MobileTransactResult *) storeStr  :(NSString *) strArg;

/// storeStruct
/// @param structArg (int32,int32) type argument
- (MobileTransactResult *) storeStruct  :(struct Class0) structArg;

/// storeUBigInt
/// @param uint256Arg uint256 type argument
- (MobileTransactResult *) storeUBigInt  :(NSString *) uint256Arg;

/// storeUint
/// @param uintArg uint256 type argument
/// @param uint8Arg uint8 type argument
/// @param uint16Arg uint16 type argument
/// @param uint32Arg uint32 type argument
/// @param uint64Arg uint64 type argument
- (MobileTransactResult *) storeUint  :(NSString *) uintArg 
	uint8Arg:(unsigned int) uint8Arg 
	uint16Arg:(unsigned int) uint16Arg 
	uint32Arg:(unsigned int) uint32Arg 
	uint64Arg:(double) uint64Arg;


@end

NS_ASSUME_NONNULL_END
