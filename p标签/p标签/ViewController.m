//
//  ViewController.m
//  p标签
//
//  Created by qlp on 2021/12/2.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()
@property (nonatomic,strong) WKWebView * webView; //声明
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
    // Do any additional setup after loading the view.
}

-(void)createUI{
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0,360, 550)];
    _webView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_webView];
    _webView.navigationDelegate = self; //实现代理
//   1、url打开
//    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",_urlstring]]]];
// iOS 中如何显示带HTML<p>标签的富文本  https://www.jianshu.com/p/8e5dc2279f59?from=singlemessage
    [_webView loadHTMLString:@"<p><strong>权益说明</strong></p > <p>温馨提示由于虚拟产品的特殊性，充值前请您务必核对充值手机号的正确性，以免给您带来不便，感谢您的支持和理解。</p > <p><strong>充值说明 </strong></p > <p>1 .充值成功后，可在美团外卖一我的一红包中查看； 2.成功下单后优惠码即作废，申请退款后无法退还； 3.每个商品单个用户账号仅可购买 50 次，同一设备、 !Ip 、账号、银行卡或手机号均视为同一用户4.若优惠券无法使用，请致电美团网客服电话： 10107888 （周一至周日 10 : 00 一 18 : 00 ，节假日除外）</p > <p><strong>充值流程</strong></p > <p>输入充值账号后进行支付，到账成功即充值成功，若支付失败或到账失败，支付金额将按支付渠道原路返回。</p >" baseURL:nil]; //iOS 中如何显示带HTML标签的富文本

}
@end
