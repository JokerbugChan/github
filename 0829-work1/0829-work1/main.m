//
//  main.m
//  0829-work1
//
//  Created by joker on 16/8/30.
//  Copyright © 2016年 joker. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Rectangle : NSObject
{
    int len;
}
- (int)getCircumference:(int)side;

- (int)getArea:(int)side;

@end

@implementation Rectangle

- (int)getCircumference:(int)side{
    return side * 4;
}

- (int)getArea:(int)side{
    return side * side;
}

@end

int main(int argc, const char * argv[]) {
    Rectangle * rect = [[Rectangle alloc]init];
    int len;
    int i;
    int resu;
    NSLog(@"输入数字\n 1 计算周长\n 2 计算面积\n");
    scanf("%d",&i);
    if (i == 1){
        NSLog(@"输入矩形的边长:");
        scanf("%d",&len);
       resu = [rect getCircumference:len];
        NSLog(@"矩形周长为:%d",resu);
    }else if (i == 2){
        NSLog(@"输入矩形的边长:");
        scanf("%d",&len);
        resu = [rect getArea:len];
        NSLog(@"矩形的面积为:%d",resu);
    }
    
    return 0;
}
