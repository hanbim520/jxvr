//
//  ViewController.h
//  jxvr
//
//  Created by abc on 09/01/2017.
//  Copyright © 2017 abc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) NSString *_myService;
@property (strong, nonatomic) NSString *_myAccount;
@property (strong, nonatomic) NSString *_myAccountaccessGroup;
-(void)saveInfo:(NSString*)account:(NSString*)passwd;
@end



