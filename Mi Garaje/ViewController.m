//
//  ViewController.m
//  Mi Garaje
//
//  Created by Eduardo de la Cruz on 28/11/17.
//  Copyright © 2017 Eduardo de la Cruz. All rights reserved.
//

#import "ViewController.h"
#import "MiCoche.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MiCoche * coche1 = [[MiCoche alloc] init]; // Para crear un objeto de tipo coche vacio
    
    coche1.marca = @"Ferrari";
    coche1.cv = 550;
    
    NSLog(@"Mi coche es un %@ y tiene una potencia de %d cv.", coche1.marca, coche1.cv);
    
    [coche1 acelerar];
    
    [coche1 acelerarUnDeterminadoNumeroDeVeces: 5];
    
    [coche1 nitroso];
    
    NSLog(@"Mi coche es un %@ y tiene una potencia de %d cv.", coche1.marca, coche1.cv);
    
    [coche1 acelerarUnDeterminadoNumeroDeVeces: 4 derrapando: YES];
    [coche1 acelerarUnDeterminadoNumeroDeVeces: 3 derrapando: NO];
    
    int potenciaDelCoche1 = [coche1 potenciaEnVatios];
    
    NSLog(@"La potencia de mi %@ es %d vatios.", coche1.marca, potenciaDelCoche1);
    
    int velocidadMaxima = [MiCoche velocidadMaximaPermitida];
    
    NSLog(@"La velocidad maxima permitida es de: %d Km/h", velocidadMaxima);
    
    /*coche1.marca = @"Seat";
    coche1.cv = 60;
    
    NSLog(@"Mi coche es un %@ y tiene una potencia de %d cv.", coche1.marca, coche1.cv);
    
    coche1 = nil;

    NSLog(@"Mi coche es un %@ y tiene una potencia de %d cv.", coche1.marca, coche1.cv);*/
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
