//
//  NMMVCController.m
//  DesignPatternDemo
//
//  Created by Songyu on 2018/11/13.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "NMMVCController.h"
#import "NMMVCModel.h"

@interface NMMVCController ()

@property (nonatomic, strong) UILabel *dataLabel;
@property (nonatomic, strong) NSArray<NMMVCModel *> *dataSource;

@end

@implementation NMMVCController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 初始化view
    [self initView];
    
    // 模拟网络请求
    [self loadData];
}

- (void)initView {
    self.title = @"MVC";
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.dataLabel];
}

- (void)loadData {
    [NMMVCModel getMokeDataWithHandlerBlock:^(NSArray<NMMVCModel *> *data, NSError *error) {
        // 报error就打印，并终止流程
        if (error) {
            NSLog(@"%@", error);
            return;
        }
        
        // 初始化数据源
        self.dataSource = [NSArray arrayWithArray:data];
        
        // 组装成需要的数据
        NSMutableString *labelText = [NSMutableString stringWithString:@"数据获取成功!\n"];
        for (NMMVCModel *model in self.dataSource) {
            [labelText appendString:model.modelName];
            [labelText appendString:@(model.modelNumber).stringValue];
            [labelText appendString:@"\n"];
        }
        
        // 主线程刷新UI
        dispatch_async(dispatch_get_main_queue(), ^{
            self.dataLabel.text = labelText;
        });
    }];
}

#pragma mark - Getter
- (UILabel *)dataLabel {
    if (!_dataLabel) {
        _dataLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 30)];
        _dataLabel.text = @"正在获取数据...";
        _dataLabel.font = [UIFont systemFontOfSize:14];
        _dataLabel.textColor = [UIColor grayColor];
        _dataLabel.numberOfLines = 0;
        _dataLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _dataLabel;
}

@end
