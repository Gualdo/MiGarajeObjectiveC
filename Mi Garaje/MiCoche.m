//
//  MiChoche.m
//  Mi Garaje
//
//  Created by Eduardo de la Cruz on 29/11/17.
//  Copyright © 2017 Eduardo de la Cruz. All rights reserved.
//

#import "MiCoche.h"

@implementation MiCoche

// Global Varibales

int CV_TO_WATTS = 735;

- (void) acelerar
{
    NSLog(@"Brrrrrrrrrmmmmm");
}

- (void) acelerarUnDeterminadoNumeroDeVeces: (int) numeroDeVeces
{
    for (int i = 1; i <= numeroDeVeces; i++)
    {
        [self acelerar];
    }
}

- (void) acelerarUnDeterminadoNumeroDeVeces: (int) numeroDeVeces derrapando: (BOOL) estaDerrapando
{
    if (!estaDerrapando)
    {
        [self acelerarUnDeterminadoNumeroDeVeces: numeroDeVeces];
    }
    else
    {
        for (int i = 1; i <= numeroDeVeces; i++)
        {
            NSLog(@"Yiiiiiiihhhaaaaaahhhh");
        }
    }
}

- (void) nitroso
{
    self.cv = 2 * self.cv;
}

- (int) potenciaEnVatios
{
    int potencia = CV_TO_WATTS * self.cv;
    
    return potencia;
}

+ (int) velocidadMaximaPermitida // Metodo de clase no de instancia (+)
{
    return 120;
}

@end
