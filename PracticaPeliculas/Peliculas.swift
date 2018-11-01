//
//  Peliculas.swift
//  PracticaPeliculas
//
//  Created by Alumno on 01/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation

class Peliculas {
    var titulo : String
    var año : String
    var rated : String
    var duracion : String
    var genero : String
    var director : String
    
    init(titulo : String, año : String, rated : String, duracion : String, genero : String, director : String)
    {
        self.titulo = titulo
        self.año = año
        self.rated = rated
        self.duracion = duracion
        self.genero = genero
        self.director = director
    }
}
