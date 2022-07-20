#import "Student.h"

@implementation Student

-(void)study:(float)Time {
    NSLog(@"学习%f小时",Time);
}

@end

int main() {
    Student *student1 = [Student new];
    [student1 study:8.00];
}
