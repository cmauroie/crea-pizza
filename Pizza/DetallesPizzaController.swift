//
//  DetallesPizzaController.swift
//  Pizza
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/5/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import UIKit

class DetallesPizzaController: UIViewController {
    
    var tamaStr:String="";
    var tipoMasaStr:String="";
    var tipoQuesoStr:String="";
    var ingredientes:String="";
    
    @IBOutlet weak var labelTamano: UILabel!
    @IBOutlet weak var labelMasa: UILabel!
    @IBOutlet weak var labelQueso: UILabel!
    @IBOutlet weak var label_Ingredientes: UILabel!
    @IBOutlet weak var labelInfo: UILabel!
    
    @IBAction func veirificaPedido(sender: AnyObject) {
        
        if(tamaStr==""){
        labelInfo.text="Por favor selecciona el tamaño de la pizza"
        }
        if(tipoMasaStr==""){
        labelInfo.text="Por favor selecciona el tipo de masa"
        }
        if(tipoQuesoStr==""){
        labelInfo.text="Por favor selecciona el tipo de queso"
        }
        if(ingredientes==""){
        labelInfo.text="Por favor selecciona los ingredientes"
        }
        if(tamaStr != "" && tipoMasaStr != "" && tipoQuesoStr != "" && ingredientes != ""){
            labelInfo.text="Pedido enviado a cocina"
        }
    }

    override func viewWillAppear(animated: Bool) {
        labelTamano.text=tamaStr
        labelMasa.text=tipoMasaStr
        labelQueso.text=tipoQuesoStr
        label_Ingredientes.text=ingredientes.stringByReplacingOccurrencesOfString(" ", withString: ",")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
