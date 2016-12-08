//
//  Plate.swift
//  parrill Asados
//
//  Created by Jose Cordova on 3/12/16.
//  Copyright © 2016 SaTuR. All rights reserved.
//

//import Foundation
class Plate {
    var name : String
    var description : String
    var receta : String
    var ingredientes : String
    var photoName1 : String
    var photoName2 : String
    
    
    init (name: String, description : String, receta: String, ingredientes : String, photoName1 : String, photoName2 : String){
        self.name = name
        self.description = description;
        self.receta = receta;
        self.ingredientes = ingredientes;
        self.photoName1 = photoName1;
        self.photoName2 = photoName2;
        
    }


}
