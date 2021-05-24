#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    if (0 < monthNumber && monthNumber <= 12){

    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    
    NSString *monthName = [[ dateFormatter monthSymbols] objectAtIndex:monthNumber - 1];
        return monthName;
}
        return nil;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
   NSDateFormatter *format = [[NSDateFormatter alloc] init];
    format.dateFormat = @"YYYY-MM-DD'T'HH:mm:ss'Z'";
    return [[NSCalendar currentCalendar] component:NSCalendarUnitDay fromDate:[format dateFromString:date]];
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
        dateFormatter.dateFormat = @"EE";
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
        NSLog(@"%@", [dateFormatter stringFromDate:date]);
        NSString *day = [dateFormatter stringFromDate:date];
        return day;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger currentWeeks = [calendar component:NSCalendarUnitWeekOfMonth fromDate:[NSDate now]];
    NSInteger dateWeeks = [calendar component:NSCalendarUnitWeekOfMonth fromDate: date];
    return currentWeeks == dateWeeks ? YES: NO;
}

@end
