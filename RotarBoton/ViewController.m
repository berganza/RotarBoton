//
//  ViewController.m
//  RotarBoton
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)rotarBoton:(id)sender {
    
    // Importar QuartzCore
    
    CABasicAnimation *animacion = [CABasicAnimation animationWithKeyPath:@"transform"];
    animacion.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(3.1415, 1.0, 0, 0)];
    animacion.duration = 1;
    animacion.cumulative = YES;
    animacion.repeatCount = 6;
    [_boton.layer addAnimation:animacion forKey:@"transformAnimation"];
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
