//
//  ViewController.swift
//  Pizza
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/5/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchChica: UISwitch!
    @IBOutlet weak var switchMediana: UISwitch!
    @IBOutlet weak var switchGrande: UISwitch!
    @IBOutlet weak var labelChica: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDefaultSwitch()
        // Do any additional setup after loading the view, typically from a nib.
        //configureDefaultSwitch()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnContinuar(sender: AnyObject) {
        
        tamanoPizza()
    }
    
    //Ejecuta el codigo antes de que se ejecute una transición
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado=tamanoPizza();
        let sigVista=segue.destinationViewController as!TipoMasaController
        sigVista.tamaStr = resultado
    }
    
    func tamanoPizza()->String{
    
        var tamano:String = ""
        if(switchChica.on){
            tamano = "Chica"
        }else if(switchMediana.on){
            tamano = "Mediana"
        }else if(switchGrande.on){
            tamano = "Grande"
        }
        return tamano
    }
    
    
    
    
    func configureDefaultSwitch() {
        switchChica.setOn(false, animated: false)
        switchMediana.setOn(false, animated: false)
        switchGrande.setOn(false, animated: false)
        
        
        switchChica.addTarget(self, action: "switchValueDidChangeChica:", forControlEvents: .ValueChanged)
        switchMediana.addTarget(self, action: "switchValueDidChangeMediana:", forControlEvents: .ValueChanged)
        switchGrande.addTarget(self, action: "switchValueDidChangeGrande:", forControlEvents: .ValueChanged)
    }
    
    func switchValueDidChangeChica(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchChica.on){
            switchMediana.setOn(false, animated: false)
            switchGrande.setOn(false, animated: false)
        }
    }
    
    func switchValueDidChangeMediana(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchMediana.on){
            switchChica.setOn(false, animated: false)
            switchGrande.setOn(false, animated: false)
        }
    }
    
    func switchValueDidChangeGrande(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        if(switchGrande.on){
            switchMediana.setOn(false, animated: false)
            switchChica.setOn(false, animated: false)
        }
    }
    
    
}

