//
//  ViewController.m
//  jxvr
//
//  Created by abc on 09/01/2017.
//  Copyright © 2017 abc. All rights reserved.
//

#import "ViewController.h"
#import "jxvr-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initData];
}

-(void)initData{
    __myService =@"com.jxvr.jxvr";
    //__myAccount =@"com.jxvr.jxvr";
    __myAccountaccessGroup= nil;
    [self saveInfo:@"abc" :@"1234567"];
    @try {
        
         NSArray<KeychainPasswordItem *> *keychainPwdArr = [KeychainPasswordItem passwordItemsForService:__myService accessGroup:__myAccountaccessGroup error:nil];
        for(int i = 0; i < keychainPwdArr.count;++i)
        {
            KeychainPasswordItem * item = [keychainPwdArr objectAtIndex:i];
            NSLog(@"account: %@",item.account);
            NSLog(@"password: %@", [item readPasswordAndReturnError:nil]);

        }
        
    } @catch (NSException *exception) {
        NSLog(@"exception: %@",exception.reason);
    } @finally {
        //do something
    }
    
}

-(void)saveInfo:(NSString *)account :(NSString *)passwd{
    @try {
        KeychainPasswordItem *keychainPwd = [[KeychainPasswordItem alloc] initWithService:__myService account:account accessGroup:__myAccountaccessGroup];
         [keychainPwd savePassword:passwd error:nil];
        
    } @catch (NSException *exception) {
        NSLog(@"exception: %@",exception.reason);
    } @finally {
        //do something
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
