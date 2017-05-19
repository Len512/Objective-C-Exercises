#import "ViewController.h"

@interface ViewController ()
// Use this class extension to define Private methods and properties,
// ie methods and properties that are only to be used
// in the implementation section of the class
@end

@implementation ViewController
@synthesize display;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) click1 {
    display.text = @"1";
}

@end
