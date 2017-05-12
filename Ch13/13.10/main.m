// Rewrite the exchange function from Program 13.14 as a block and test it out.

#import <Foundation/Foundation.h>

void (^exchangeBlock) (int *, int *) = ^(int *pint1, int *pint2) {
    int temp;
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int i1 = -5, i2 = 66, *p1 = &i1, *p2 = &i2;
        NSLog (@"i1 = %i, i2 = %i", i1, i2);
        
        exchangeBlock (p1, p2);
        NSLog (@"i1 = %i, i2 = %i", i1, i2);
        
        exchangeBlock (&i1, &i2);
        NSLog (@"i1 = %i, i2 = %i", i1, i2);
        
    }
    return 0;
}
