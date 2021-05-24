#import "PlayersSeparator.h"
@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)rateArray {
NSMutableArray *ratesArray = [[NSMutableArray alloc] init];
for (int i = 0, count = (int)rateArray.count; i < count - 2; ++i) {
    NSInteger iTemp = rateArray[i].integerValue;
    for (int j = i + 1; j < count - 1; ++j){
        NSInteger jTemp = rateArray[j].integerValue;
        for (int k = j + 1; k < count; ++k) {
            NSInteger kTemp = rateArray[k].integerValue;
            if ((iTemp < jTemp && jTemp < kTemp) || (iTemp > jTemp && jTemp > kTemp)) {
                [ratesArray addObject:@[rateArray[i], rateArray[j], rateArray[k]]];
            }
        }
    }
}
return ratesArray.count;
}
@end
