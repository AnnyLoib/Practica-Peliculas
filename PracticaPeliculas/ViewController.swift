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
    @IBOutlet weak var txtPeliculas: UITextField!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblRated: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var Director: UILabel!
    @IBOutlet weak var aiCargar: UIActivityIndicatorView!
    
    var urlPeliculas = "http://www.omdbapi.com/?i=tt3896198&apikey=4da26f5f"
    var peliculas : String = ""
    var encontrada : String = ""
    
    @IBAction func doTapBuscar(_ sender: Any) {
        aiCargar.startAnimating()
        peliculas = txtPeliculas.text!
        
        urlPeliculas = "http://www.omdbapi.com/?i=tt3896198&apikey=4da26f5f"
        
        Alamofire.request(urlPeliculas).responseJSON { response in
            self.lblTitulo.text = ""
            self.lblAño.text = ""
            self.lblRated.text = ""
            self.lblDuracion.text = ""
            self.lblGenero.text = ""
            self.Director.text = ""
            
            if let dictResultado = response.result.value as? NSDictionary {
                if let resultado = dictResultado.value(forKey: "Response") as? String {
                    self.encontrada = resultado
                }
                if self.encontrada == "True" {
                    if let titulo = dictResultado.value(forKey: "Title") as? String {
                        self.lblTitulo.text = titulo
                    }
                    if let año = dictResultado.value(forKey: "Year") as? String {
                        self.lblAño.text = año
                    }
                    if let rated = dictResultado.value(forKey: "Rated") as? String {
                        self.lblRated.text = rated
                    }
                    if let tiempo = dictResultado.value(forKey: "Runtime") as? String {
                        self.lblDuracion.text = tiempo
                    }
                    if let genero = dictResultado.value(forKey: "Genre") as? String {
                        self.lblGenero.text = genero
                    }
                    if let nombredirector = dictResultado.value(forKey: "Director") as? String {
                        self.Director.text = nombredirector
                        self.peliculas = ""
                        self.aiCargar.stopAnimating()
                    }
                } else {
                    self.encontrada = "No se encontró"
                    self.aiCargar.stopAnimating()
                }
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

