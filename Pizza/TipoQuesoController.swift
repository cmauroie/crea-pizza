//
//  TipoQuesoController.swift
//  Pizza
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/5/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import UIKit

class TipoQuesoController: UIViewController {
    
    var tamaStr:String="";
    var tipoMasaStr:String="";
   // var tipoQuesoStr:String="";
    
    @IBOutlet weak var switchMozarela: UISwitch!
    @IBOutlet weak var switchCheddar: UISwitch!
    @IBOutlet weak var switchParmesano: UISwitch!
    @IBOutlet weak var switchSinQ: UISwitch!
    
    @IBAction func btnContinuar(sender: AnyObject) {
         NSLog("\nTamaño de pizza: \(tamaStr).\nTipo de Masa: \(tipoMasaStr)")
    }

    
    //Ejecuta el codigo antes de que se ejecute una transición
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado=tipoQueso();
        let sigVista=segue.destinationViewController as!IngredientesController
        sigVista.tamaStr = tamaStr
        sigVista.tipoMasaStr = tipoMasaStr
        sigVista.tipoQuesoStr = resultado
    }

   

    override func viewWillAppear(animated: Bool) {
        //  tipoMasa.text=String(tipoMasa)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDefaultSwitch()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tipoQueso()->String{
        
        var tipo:String = ""
        
        if(switchMozarela.on){
            tipo = "Mozarela"
        }else if(switchCheddar.on){
            tipo = "Cheddar"
        }else if(switchParmesano.on){
            tipo = "Parmesano"
        }else if(switchSinQ.on){
            tipo = "Sin queso"
        }
        return tipo
    }
    
    func configureDefaultSwitch() {
        switchMozarela.setOn(false, animated: false)
        switchCheddar.setOn(false, animated: false)
        switchParmesano.setOn(false, animated: false)
        
        
        switchMozarela.addTarget(self, action: "switchValueDidChangeMozarela:", forControlEvents: .ValueChanged)
        switchCheddar.addTarget(self, action: "switchValueDidChangeCheddar:", forControlEvents: .ValueChanged)
        switchParmesano.addTarget(self, action: "switchValueDidChangeParmesano:", forControlEvents: .ValueChanged)
        switchSinQ.addTarget(self, action: "switchValueDidChangeSinQ:", forControlEvents: .ValueChanged)
    }
    
    func switchValueDidChangeMozarela(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchMozarela.on){
            switchCheddar.setOn(false, animated: false)
            switchParmesano.setOn(false, animated: false)
            switchSinQ.setOn(false, animated: false)
        }
    }
    
    func switchValueDidChangeCheddar(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchCheddar.on){
            switchMozarela.setOn(false, animated: false)
            switchParmesano.setOn(false, animated: false)
            switchSinQ.setOn(false, animated: false)
        }
    }
    
    func switchValueDidChangeParmesano(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchParmesano.on){
            switchCheddar.setOn(false, animated: false)
            switchMozarela.setOn(false, animated: false)
            switchSinQ.setOn(false, animated: false)
        }
    }
    
    func switchValueDidChangeSinQ(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchSinQ.on){
            switchCheddar.setOn(false, animated: false)
            switchMozarela.setOn(false, animated: false)
            switchParmesano.setOn(false, animated: false)
        }
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
