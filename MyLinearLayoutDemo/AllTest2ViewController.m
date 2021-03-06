//
//  Test11ViewController.m
//  MyLinearLayoutDemo
//
//  Created by apple on 15/6/21.
//  Copyright (c) 2015年 欧阳大哥. All rights reserved.
//

#import "AllTest2ViewController.h"
#import "MyLayout.h"

@interface AllTest2ViewController ()

@end

@implementation AllTest2ViewController

-(void)loadView
{
    //上下均分和左右均分
    
    
    //线性布局实现
   /* MyLinearLayout *rootLayout = [MyLinearLayout linearLayoutWithOrientation:LVORIENTATION_VERT];
    rootLayout.backgroundColor = [UIColor grayColor];
    
    rootLayout.padding = UIEdgeInsetsMake(20, 20, 20, 20);
    rootLayout.subviewMargin = 20;
    
    MyLinearLayout *topLayout = [MyLinearLayout linearLayoutWithOrientation:LVORIENTATION_HORZ];
    topLayout.weight = 0.5;
    topLayout.leftMargin = topLayout.rightMargin = 0;
    topLayout.subviewMargin = 20;
    [rootLayout addSubview:topLayout];
    
    UIView *topLeft = UIView.new;
    topLeft.backgroundColor = [UIColor redColor];
    
    topLeft.weight = 0.5;
    topLeft.topMargin = topLeft.bottomMargin = 0;
    [topLayout addSubview:topLeft];
    
    UIView *topRight = UIView.new;
    topRight.backgroundColor = [UIColor greenColor];
    topRight.weight = 0.5;
    topRight.topMargin = topRight.bottomMargin = 0;
    [topLayout addSubview:topRight];
    
    
    UIView *bottom = UIView.new;
    bottom.backgroundColor = [UIColor blueColor];
    bottom.weight = 0.5;
    bottom.widthDime.equalTo(rootLayout.widthDime);
    // bottom.leftMargin = bottom.rightMargin = 0; 这句和上面一句是等价的。
    [rootLayout addSubview:bottom];
    
    self.view = rootLayout; */
    
    
    //相对布局实现
   /*  MyRelativeLayout *rootLayout = [MyRelativeLayout new];
    rootLayout.backgroundColor = [UIColor grayColor];
    rootLayout.padding = UIEdgeInsetsMake(20, 20, 20, 20);
    
    UIView *topLeft = [UIView new];
    topLeft.backgroundColor = [UIColor redColor];
    
    UIView *topRight = [UIView new];
    topRight.backgroundColor = [UIColor greenColor];
    
    UIView *bottom = [UIView new];
    bottom.backgroundColor = [UIColor blueColor];
    
    [rootLayout addSubview:topLeft];
    [rootLayout addSubview:topRight];
    [rootLayout addSubview:bottom];
    
    //上下高度平分，高度等于 = 父视图高度 - 20 再平分
    topLeft.heightDime.equalTo(@[bottom.heightDime]).add(-20);
    topLeft.widthDime.equalTo(@[topRight.widthDime]).add(-20);
    topRight.leftPos.equalTo(topLeft.rightPos).offset(20);
    topRight.heightDime.equalTo(topLeft.heightDime);
    bottom.topPos.equalTo(topLeft.bottomPos).offset(20);
    bottom.leftPos.equalTo(rootLayout.leftPos);
    bottom.rightPos.equalTo(rootLayout.rightPos);
    
    self.view = rootLayout;
    */
    
    //表格布局实现
    MyTableLayout *rootLayout = [MyTableLayout tableLayoutWithOrientation:LVORIENTATION_VERT];
    rootLayout.backgroundColor = [UIColor grayColor];
    rootLayout.padding = UIEdgeInsetsMake(20, 20, 20, 20);
    rootLayout.subviewMargin = 20;

    [rootLayout addRow:MTLROWHEIGHT_AVERAGE colWidth:MTLCOLWIDTH_AVERAGE];
    UIView *topLeft = UIView.new;
    topLeft.backgroundColor = [UIColor redColor];
    topLeft.rightMargin = 10;
    [rootLayout addSubview:topLeft];
    
    UIView *topRight = UIView.new;
    topRight.backgroundColor = [UIColor greenColor];
    topRight.leftMargin = 10;
    [rootLayout addSubview:topRight];
    
    
    [rootLayout addRow:MTLROWHEIGHT_AVERAGE colWidth:MTLCOLWIDTH_AVERAGE];
    UIView *bottom = UIView.new;
    bottom.backgroundColor = [UIColor blueColor];
    [rootLayout addSubview:bottom];
    
    self.view = rootLayout;
    
    
    //框架布局实现
   /* MyFrameLayout *rootLayout = [MyFrameLayout new];
    rootLayout.backgroundColor = [UIColor grayColor];
    rootLayout.padding = UIEdgeInsetsMake(20, 20, 20, 20);

    UIView *topLeft = UIView.new;
    topLeft.backgroundColor = [UIColor redColor];
    topLeft.marginGravity = MGRAVITY_HORZ_LEFT | MGRAVITY_VERT_TOP;
    topLeft.widthDime.equalTo(rootLayout.widthDime).multiply(0.5).add(-10);
    topLeft.heightDime.equalTo(rootLayout.heightDime).multiply(0.5).add(-10);
    [rootLayout addSubview:topLeft];
    
    UIView *topRight = UIView.new;
    topRight.backgroundColor = [UIColor greenColor];
    topRight.marginGravity = MGRAVITY_HORZ_RIGHT | MGRAVITY_VERT_TOP;
    topRight.widthDime.equalTo(rootLayout.widthDime).multiply(0.5).add(-10);
    topRight.heightDime.equalTo(rootLayout.heightDime).multiply(0.5).add(-10);
    [rootLayout addSubview:topRight];
    
    UIView *bottom = UIView.new;
    bottom.backgroundColor = [UIColor blueColor];
    bottom.marginGravity = MGRAVITY_HORZ_FILL | MGRAVITY_VERT_BOTTOM;
    bottom.heightDime.equalTo(rootLayout.heightDime).multiply(0.5).add(-10);
    [rootLayout addSubview:bottom];
    
    self.view = rootLayout;
    */
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"屏幕完美适配";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
