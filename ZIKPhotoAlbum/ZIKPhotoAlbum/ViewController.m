//
//  ViewController.m
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/27.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "ViewController.h"
#import "YYModel.h"
#import "YXPhotoAlbumModel.h"
#import "YXPhotoAlbumLayout.h"
#import "YXFriendCirclePhotoAlbumTableViewCell.h"
#import "YXFriendCirclePhotoAlbumTableViewCellFactory.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView    *tableView;
@property (nonatomic, strong) NSMutableArray *albumMArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
    [self requestPhotoAlbum];
}

- (void)requestPhotoAlbum {
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"photoAlbum" ofType:@"plist"];
    NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    NSLog(@"%@",dictionary);
    NSDictionary *info = dictionary[@"data"][@"info"];
    NSArray *list = info[@"list"];
    [list enumerateObjectsUsingBlock:^(NSDictionary *dic, NSUInteger idx, BOOL * _Nonnull stop) {
        YXPhotoAlbumModel  *model = [YXPhotoAlbumModel yy_modelWithDictionary:dic];
        YXPhotoAlbumLayout *info  = [[YXPhotoAlbumLayout alloc] initWithModel:model];
        [self.albumMArray addObject:info];
    }];
    [self.tableView reloadData];
}

#pragma mark - UITableView代理
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    YXPhotoAlbumLayout *cellInfo = _albumMArray[indexPath.row];
    return [YXFriendCirclePhotoAlbumTableViewCellFactory getCellHeight:cellInfo];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _albumMArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YXPhotoAlbumLayout *cellInfo = _albumMArray[indexPath.row];
    NSString *cellIndentifier = [YXFriendCirclePhotoAlbumTableViewCellFactory getCellIdentifier:cellInfo];
    YXFriendCirclePhotoAlbumTableViewCell *baseCell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (!baseCell) {
        baseCell = [YXFriendCirclePhotoAlbumTableViewCellFactory getCell:cellInfo withCellStyle:UITableViewCellStyleDefault withCellIdentifier:cellIndentifier];
    }
    baseCell.selectionStyle = UITableViewCellSelectionStyleNone;
    [baseCell setContentView:cellInfo];
    
    return baseCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


#pragma mark - 懒加载
-(UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate   = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

-(NSMutableArray *)albumMArray {
    if (_albumMArray == nil) {
        _albumMArray = [[NSMutableArray alloc] initWithCapacity:20];
    }
    return _albumMArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
