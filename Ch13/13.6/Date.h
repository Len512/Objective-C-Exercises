#ifndef Date_h
#define Date_h

@interface Date : NSObject
{
    int day;
    int month;
    int year;
}
@property int day, month, year;

- (void) setDateWithDay: (int) d andMonth: (int) m andYear: (int) y;
- (void) print;
- (Date *) dateUpdate: (Date *) date;

@end

#endif /* Date_h */
