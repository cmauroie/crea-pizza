//
//  TipoMasaController.swift
//  Pizza
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/5/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import UIKit

class TipoMasaController: UIViewController {
    
    var tamaStr:String="";
    @IBOutlet weak var switchDelgada: UISwitch!
    @IBOutlet weak var switchCrujiente: UISwitch!
    @IBOutlet weak var switchGruesa: UISwitch!
    
    
    @IBAction func btnContinuar(sender: AnyObject) {
        NSLog("Tamaño de pizza: \(tamaStr).")
    //   tipoMasa()
    }
    
    //Ejecuta el codigo antes de que se ejecute una transición
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado=tipoMasa();
        let sigVista=segue.destinationViewController as!TipoQuesoController
        sigVista.tamaStr = tamaStr
        sigVista.tipoMasaStr = resultado
//        sigVista.tipoQuesoStr = resultado
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
    
    
    func tipoMasa()->String{
        
        var tipo:String = ""
        if(switchDelgada.on){
            tipo = "Delgada"
        }else if(switchCrujiente.on){
            tipo = "Crujiente"
        }else if(switchGruesa.on){
            tipo = "Gruesa"
        }
        return tipo
    }
    
    func configureDefaultSwitch() {
        switchDelgada.setOn(false, animated: false)
        switchCrujiente.setOn(false, animated: false)
        switchGruesa.setOn(false, animated: false)
        
        
        switchDelgada.addTarget(self, action: "switchValueDidChangeDelgada:", forControlEvents: .ValueChanged)
        switchCrujiente.addTarget(self, action: "switchValueDidChangeCrujiente:", forControlEvents: .ValueChanged)
        switchGruesa.addTarget(self, action: "switchValueDidChangeGruesa:", forControlEvents: .ValueChanged)
    }
    
    func switchValueDidChangeDelgada(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchDelgada.on){
            switchCrujiente.setOn(false, animated: false)
            switchGruesa.setOn(false, animated: false)
        }
    }
    
    func switchValueDidChangeCrujiente(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchCrujiente.on){
            switchDelgada.setOn(false, animated: false)
            switchGruesa.setOn(false, animated: false)
        }
    }
    
    func switchValueDidChangeGruesa(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchGruesa.on){
            switchCrujiente.setOn(false, animated: false)
            switchDelgada.setOn(false, animated: false)
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
