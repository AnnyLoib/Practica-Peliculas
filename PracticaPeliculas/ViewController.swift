//
//  ViewController.swift
//  PracticaPeliculas
//
//  Created by Alumno on 24/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    let urlPeliculas = "http://www.omdbapi.com/?i=tt3896198&apikey=4da26f5f"
    
    @IBOutlet weak var txtPeliculas: UITextField!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblRated: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var Director: UILabel!
    
    @IBAction func doTapBuscar(_ sender: Any) {
        Alamofire.request("\(urlPeliculas)").responseJSON { response in
            //Diccionario Pelicula
            if let dictPelicula = response.result.value as? NSDictionary {
                
            }
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

