#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
  NSMutableArray *ratesArray = [[NSMutableArray alloc] init];
   for (int i = 0, count = (int)rateArray.count; i < count - 2; ++i) {
      NSInteger iRates = rateArray[i].integerValue;
       for (int j = i + 1; j < count - 1; ++j){
         NSInteger jRates = rateArray[j].integerValue;
         for (int k = j+1; k < count; ++k) {
               NSInteger kRates = rateArray[k].integerValue;
                if ((iRates < jRates && jRates < kRates) || (iRates > jRates && jRates > kRates)) {
                  [ratesArray addObject:@[rateArray[i], rateArray[j], rateArray[k]]];
             }
         }
     }
 }
    return ratesArray.count;
}
@end
