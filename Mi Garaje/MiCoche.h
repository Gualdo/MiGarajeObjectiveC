//
//  MiChoche.h
//  Mi Garaje
//
//  Created by Eduardo de la Cruz on 29/11/17.
//  Copyright © 2017 Eduardo de la Cruz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MiCoche : NSObject

@property (nonatomic) int cv;
@property (nonatomic, strong) NSString * marca;
@property (strong, nonatomic) UIImage * imagen;

- (void) acelerar;
- (void) acelerarUnDeterminadoNumeroDeVeces: (int) numeroDeVeces;
- (void) nitroso;
- (void) acelerarUnDeterminadoNumeroDeVeces: (int) numeroDeVeces derrapando: (BOOL) estaDerrapando;
- (int) potenciaEnVatios; // Metodos de instancia, los llaman los objetos

+ (int) velocidadMaximaPermitida; // No puede devolver nada que tenga que ver con uno de los objetos de la clase

@end
