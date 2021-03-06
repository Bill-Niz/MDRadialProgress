//
// ViewController.m
// MDRadialProgress
//
//
// Copyright (c) 2013 Marco Dinacci
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#import "ViewController.h"
#import "MDRadialProgressView.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect frame = CGRectMake(30, 30, 50, 50);
    MDRadialProgressView *radialView = [[MDRadialProgressView alloc] initWithFrame:frame];
    
    radialView.progressTotal = 4;
    radialView.progressCounter = 2;
    radialView.thickness = 10;
    radialView.sliceDividerHidden = YES;
    
    [self.view addSubview:radialView];
	
	frame = CGRectMake(180, 10, 100, 100);
    MDRadialProgressView *radialView2 = [[MDRadialProgressView alloc] initWithFrame:frame];
	
	radialView2.progressTotal = 10;
    radialView2.progressCounter = 3;
	radialView2.completedColor = [UIColor blueColor];
	radialView2.incompletedColor = [UIColor redColor];
    radialView2.thickness = 30;
    radialView2.sliceDividerHidden = NO;
    radialView2.sliceDividerColor = [UIColor whiteColor];
    radialView2.sliceDividerThickness = 2;

	[self.view addSubview:radialView2];
	
	frame = CGRectMake(10, 180, 300, 25);
	UILabel *label = [[UILabel alloc] initWithFrame:frame];
	label.text = @"Lorem ipsum dolor sit amet ...";
	[self.view addSubview:label];
	
	frame = CGRectMake(30, 150, 120, 120);
    MDRadialProgressView *radialView3 = [[MDRadialProgressView alloc] initWithFrame:frame];
	
	radialView3.progressTotal = 5;
    radialView3.progressCounter = 4;
	radialView3.completedColor = [UIColor redColor];
	radialView3.incompletedColor = [UIColor blackColor];
    radialView3.thickness = 10;
    radialView3.sliceDividerHidden = YES;
	radialView3.centerColor = [UIColor colorWithRed:95/255.0 green:192/255.0 blue:206/255.0 alpha:1.0];
	
	[self.view addSubview:radialView3];
	
	
	frame = CGRectMake(180, 170, 70, 70);
    MDRadialProgressView *radialView4 = [[MDRadialProgressView alloc] initWithFrame:frame];
    
    radialView4.progressTotal = 5;
    radialView4.progressCounter = 3;
    radialView4.thickness = 15;
	radialView4.incompletedColor = [UIColor orangeColor];
	radialView4.completedColor = [UIColor purpleColor];
    radialView4.sliceDividerHidden = NO;
	radialView4.sliceDividerThickness = 5;
    
    [self.view addSubview:radialView4];
    
    
    frame = CGRectMake(40, 300, 100, 100);
    MDRadialProgressView *radialView5 = [[MDRadialProgressView alloc] initWithFrame:frame];
	
	radialView5.progressTotal = 10;
    radialView5.progressCounter = 3;
    radialView5.thickness = 10;
    radialView5.sliceDividerHidden = NO;
    radialView5.sliceDividerThickness = 1;
    radialView5.startingSlice = 1;
    radialView5.clockwise = NO;
    
	[self.view addSubview:radialView5];
	
    frame = CGRectMake(180, 300, 100, 100);
    MDRadialProgressView *radialView6 = [[MDRadialProgressView alloc] initWithFrame:frame];
	
	radialView6.startingSlice = 5;
	radialView6.progressTotal = 20;
    radialView6.progressCounter = 9;
	radialView6.startingSlice = 3;
    radialView6.thickness = 80;
	radialView6.completedColor = [UIColor brownColor];
	radialView6.sliceDividerThickness = 0;
    radialView6.clockwise = YES;
    
	[self.view addSubview:radialView6];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
