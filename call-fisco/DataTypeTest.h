#import <Foundation/Foundation.h>
#import <FiscoBcosIosSdk/FiscoBcosIosSdk.h>

NS_ASSUME_NONNULL_BEGIN
 
// Class0 is an auto generated low-level Go binding around an user-defined struct.
@interface DataTypeTest_Class0 : NSObject
@property (nonatomic, assign) int value;
@property (nonatomic, assign) int date;

@end

@interface DataTypeTest : NSObject

@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *abi;
@property (nonatomic, copy) NSString *bin;
@property (nonatomic, strong) MobileBcosSDK *sdk;

/// init
- (instancetype)init:(MobileBcosSDK *)sdk;
/// initWithAddress
- (instancetype)initWithAddress:(NSString *)addr
	sdk:(MobileBcosSDK *) sdk;

/// deploy 
- (MobileReceiptResult*)  deploy ; 


/// getIntUnder128 
/// @return  int128 type argument
- (MobileCallResult *) getIntUnder128 ;

/// getIntUnder64 
/// @return  int40 type argument
- (MobileCallResult *) getIntUnder64 ;

/// getUintUnder128 
/// @return  uint128 type argument
- (MobileCallResult *) getUintUnder128 ;

/// getUintUnder64 
/// @return  uint40 type argument
- (MobileCallResult *) getUintUnder64 ;

/// retrieve 
/// @return  uint256 type argument
- (MobileCallResult *) retrieve ;

/// retrieveArray 
/// @return  bytes32[] type argument
/// @return  int64[] type argument
- (MobileCallResult *) retrieveArray ;



/// storeAddress
/// @param adArg address type argument, please note this argument only accept hex encoded strings.
- (MobileReceiptResult *) storeAddress  :(NSString *) adArg;

/// storeBigInt
/// @param int256Arg int256 type argument
- (MobileReceiptResult *) storeBigInt  :(NSString *) int256Arg;

/// storeBool
/// @param boolArg bool type argument
- (MobileReceiptResult *) storeBool  :(BOOL) boolArg;

/// storeByteArray
/// @param b32arArg bytes32[] type argument, please note this argument only accept hex encoded strings.
- (MobileReceiptResult *) storeByteArray  :(NSArray *) b32arArg;

/// storeBytes
/// @param bytesArg bytes type argument, please note this argument only accept hex encoded strings.
- (MobileReceiptResult *) storeBytes  :(NSString *) bytesArg;

/// storeEmum
/// @param teArg uint8 type argument
- (MobileReceiptResult *) storeEmum  :(int) teArg;

/// storeFixedBytes
/// @param byte1Arg bytes1 type argument, please note this argument only accept hex encoded strings.
/// @param byte5Arg bytes5 type argument, please note this argument only accept hex encoded strings.
/// @param byte32Arg bytes32 type argument, please note this argument only accept hex encoded strings.
- (MobileReceiptResult *) storeFixedBytes  :(NSString *) byte1Arg 
	byte5Arg:(NSString *) byte5Arg 
	byte32Arg:(NSString *) byte32Arg;

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
	int64Arg:(double) int64Arg;

/// storeIntArray
/// @param iarArg int256[] type argument
/// @param i64arArg int64[] type argument
/// @param i256arArg int256[] type argument
- (MobileReceiptResult *) storeIntArray  :(NSArray *) iarArg 
	i64arArg:(NSArray *) i64arArg 
	i256arArg:(NSArray *) i256arArg;

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
	int128Arg:(NSString *) int128Arg;

/// storeIntUnder64
/// @param int40Arg int40 type argument
/// @param int48Arg int48 type argument
/// @param int56Arg int56 type argument
- (MobileReceiptResult *) storeIntUnder64  :(double) int40Arg 
	int48Arg:(double) int48Arg 
	int56Arg:(double) int56Arg;

/// storeStr
/// @param strArg string type argument
- (MobileReceiptResult *) storeStr  :(NSString *) strArg;

/// storeStruct
/// @param structArg (int32,int32) type argument
- (MobileReceiptResult *) storeStruct  :(DataTypeTest_Class0 *) structArg;

/// storeUBigInt
/// @param uint256Arg uint256 type argument
- (MobileReceiptResult *) storeUBigInt  :(NSString *) uint256Arg;

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
	uint64Arg:(double) uint64Arg;

/// storeUintUnder64
/// @param uint40Arg uint40 type argument
/// @param uint48Arg uint48 type argument
/// @param uint56Arg uint56 type argument
- (MobileReceiptResult *) storeUintUnder64  :(double) uint40Arg 
	uint48Arg:(double) uint48Arg 
	uint56Arg:(double) uint56Arg;

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
	uint128Arg:(NSString *) uint128Arg;


@end

NS_ASSUME_NONNULL_END
