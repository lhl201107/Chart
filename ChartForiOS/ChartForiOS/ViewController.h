//
//  ViewController.h
//  ChartForiOS
//
//  Created by kangmei_teach03 on 14-3-14.
//  Copyright (c) 2014年 kangmei_teach03. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TGJSBridge.h"

@interface ViewController : UIViewController<UIWebViewDelegate,TGJSBridgeDelegate>



@property (retain, nonatomic) TGJSBridge *jsBridge;


@end
