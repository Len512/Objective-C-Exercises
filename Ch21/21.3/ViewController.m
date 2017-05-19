#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController
{
    char op;
    int currentNumber;
    BOOL firstOperand, isNumerator, isNegative;
    Calculator *myCalculator;
    NSMutableString *displayString;
    double converted;
}
@synthesize display;

- (void)viewDidLoad {
    // Override point for customisation after application launch
    firstOperand = YES;
    isNumerator = YES;
    isNegative = NO;
    displayString = [NSMutableString stringWithCapacity:40];
    myCalculator = [[Calculator alloc] init];
}

- (void) processDigit: (int) digit {
    if (!isNumerator && currentNumber == 0 && digit == 0){
        display.text = @"Error: Division by zero!";
    } else {
        currentNumber = currentNumber * 10 + digit;
        [displayString appendString:[NSString stringWithFormat:@"%i", digit]];
        display.text = displayString;
    }
}
- (void) processOp: (char) theOp {
    NSString *opStr;
    op = theOp;
    switch (theOp) {
        case '+':
            opStr = @" + ";
            break;
        case '-':
            opStr = @" - ";
            break;
        case '*':
            opStr = @" * ";
            break;
        case '/':
            opStr = @" / ";
            break;
    }
    [self storeFracPart];
    firstOperand = NO;
    isNumerator = YES;
    isNegative = NO;
    [displayString appendString:opStr];
    display.text = displayString;
}
- (void) storeFracPart {
    if (firstOperand) {
        if (isNumerator){
            if (isNegative){
                myCalculator.operand1.numerator = -currentNumber;
                myCalculator.operand1.denominator = 1; // eg -3 * 4/5 =
            } else {
                myCalculator.operand1.numerator = currentNumber;
                myCalculator.operand1.denominator = 1; // eg 3 * 4/5 =
            }
        } else {
            myCalculator.operand1.denominator = currentNumber;
        }
    } else if (isNumerator){
        if (isNegative) {
            myCalculator.operand2.numerator = -currentNumber;
            myCalculator.operand2.denominator = 1; // eg 3/2 * -4 =
        } else {
            myCalculator.operand2.numerator = currentNumber;
            myCalculator.operand2.denominator = 1; // eg 3/2 * 4 =
        }
    } else {
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }
    currentNumber = 0;
}
- (IBAction) clickDigit: (UIButton *) sender {
    long int digit = sender.tag;
    [self processDigit:digit];
}
- (IBAction) clickPlus {
    [self processOp:'+'];
}
- (IBAction) clickMinus {
    if (isNumerator){
        isNegative = YES;
        [displayString appendString:@"-"];
        display.text = displayString;
    } else {
        [self processOp:'-'];
    }
}
- (IBAction) clickMultiply {
    [self processOp:'*'];
}
- (IBAction) clickDivide {
    [self processOp:'/'];
}
- (IBAction) clickOver {
    [self storeFracPart];
    isNumerator = NO;
    [displayString appendString:@"/"];
    display.text = displayString;
}
- (IBAction) clickEquals {
    if (firstOperand == NO){
        [self storeFracPart];
        [myCalculator performOperation:op];
        [displayString appendString: @" = "];
        [displayString appendString: [myCalculator.accumulator convertToString]];
        display.text = displayString;
        
        currentNumber = 0;
        isNumerator = YES;
        firstOperand = YES;
        isNegative = NO;
        [displayString setString:@""];
    }
}
- (IBAction) clickClear {
    isNumerator = YES;
    firstOperand = YES;
    isNegative = NO;
    currentNumber = 0;
    [myCalculator clear];
    [displayString setString:@""];
    display.text = displayString;
}
- (IBAction) clickConvert {
    converted = [myCalculator.accumulator convertToNum];
    NSString *convertString = [NSString stringWithFormat:@"%f", converted];
    display.text = convertString;
}

@end
