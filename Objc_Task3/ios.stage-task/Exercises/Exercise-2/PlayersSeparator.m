#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
  NSMutableArray *ratesArray = [[NSMutableArray alloc] init];
   for (int i = 0, count = (int)rateArray.count; i < count - 2; ++i) {
      NSInteger iNumber = rateArray[i].integerValue;
       for (int j = i+1; j < count-1; ++j){
           for (int k = j+1; k < count; ++k) {
             NSInteger jNumber = rateArray[j].integerValue;
               NSInteger kNumber = rateArray[k].integerValue;
                if ((iNumber < jNumber && jNumber < kNumber) || (iNumber > jNumber && jNumber > kNumber)) {
                  [ratesArray addObject:@[rateArray[i], rateArray[j], rateArray[k]]];
             }
         }
     }
 }
    return ratesArray.count;
}
@end
