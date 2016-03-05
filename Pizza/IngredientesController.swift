//
//  IngredientesController.swift
//  Pizza
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/5/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import UIKit

class IngredientesController: UIViewController {
    
    
    
        var tamaStr:String="";
        var tipoMasaStr:String="";
        var tipoQuesoStr:String="";
    
        var ingre_Jamon:String="";
        var ingre_Aceituna:String="";
        var ingre_Pepperoni:String="";
        var ingre_Cebolla:String="";
        var ingre_Pavo:String="";
        var ingre_Pimiento:String="";
        var ingre_Salchicha:String="";
        var ingre_Pina:String="";
        var num:Int = 0
    
        var ingre:String="";
    
    


    @IBOutlet weak var switchJamo: UISwitch!
    @IBOutlet weak var switchAceituna: UISwitch!
    @IBOutlet weak var switchPepperoni: UISwitch!
    @IBOutlet weak var switchCebolla: UISwitch!
    @IBOutlet weak var switchPavo: UISwitch!
    @IBOutlet weak var switchPimiento: UISwitch!
    @IBOutlet weak var switchSalchicha: UISwitch!
    @IBOutlet weak var switchPina: UISwitch!
    @IBOutlet weak var LabelMax: UILabel!
    
    
    @IBAction func btnContinuar(sender: AnyObject) {
        NSLog("\nTamaño de pizza: \(tamaStr).\nTipo de Masa: \(tipoMasaStr)\nTipo de Queso: \(tipoQuesoStr)")
    }
    
    //Ejecuta el codigo antes de que se ejecute una transición
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado = ingredientes();
        let sigVista=segue.destinationViewController as!DetallesPizzaController
        sigVista.tamaStr = tamaStr
        sigVista.tipoMasaStr = tipoMasaStr
        sigVista.tipoQuesoStr = tipoQuesoStr
        
        sigVista.ingredientes = resultado
        
        
       /* sigVista.ingre_Aceituna = ingre_Aceituna
        sigVista.ingre_Pepperoni = ingre_Pepperoni
        sigVista.ingre_Cebolla = ingre_Cebolla
        sigVista.ingre_Pavo = ingre_Pavo
        sigVista.ingre_Pimiento = ingre_Pimiento
        sigVista.ingre_Salchicha = ingre_Salchicha
        sigVista.ingre_Pina = ingre_Pina*/
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
    
    func ingredientes()->String{
        
        var addIngre:String = ""
        
        if(switchJamo.on){
            ingre_Jamon = "Jamon"
            addIngre = addIngre+"\(ingre_Jamon) "
        }
        if(switchAceituna.on){
            ingre_Aceituna = "Aceituna"
            addIngre = addIngre+"\(ingre_Aceituna) "
        }
        if(switchPepperoni.on){
            ingre_Pepperoni = "Pepperoni"
            addIngre = addIngre+"\(ingre_Pepperoni) "
        }
        if(switchCebolla.on){
            ingre_Cebolla = "Cebolla"
            addIngre = addIngre+"\(ingre_Cebolla) "
        }
        if(switchPavo.on){
            ingre_Pavo = "Pavo"
            addIngre = addIngre+"\(ingre_Pavo) "
        }
        if(switchPimiento.on){
            ingre_Pimiento = "Pimiento"
            addIngre = addIngre+"\(ingre_Pimiento) "
        }
        if(switchSalchicha.on){
           ingre_Salchicha = "Salchicha"
            addIngre = addIngre+"\(ingre_Salchicha) "
        }
        if(switchPina.on){
            ingre_Pina = "Piña"
            addIngre = addIngre+"\(ingre_Pina) "
        }
        return addIngre
}
    
    func Ingre_Dispo()->Int{
        
        num = num + 1;
        
        if(num <= 5){
        return num
        }else{
        return num
        }
    }

    
    func configureDefaultSwitch() {
        switchJamo.setOn(false, animated: false)
        switchAceituna.setOn(false, animated: false)
        switchPepperoni.setOn(false, animated: false)
        switchCebolla.setOn(false, animated: false)
        switchPavo.setOn(false, animated: false)
        switchPimiento.setOn(false, animated: false)
        switchSalchicha.setOn(false, animated: false)
        switchPina.setOn(false, animated: false)
        
        
        switchJamo.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged)
        switchAceituna.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged)
        switchPepperoni.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged)
        switchCebolla.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged)
        switchPavo.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged)
        switchPimiento.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged)
        switchSalchicha.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged)
        switchPina.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged)
        
    }
    
    func switchValueDidChange(aSwitch: UISwitch) {
        NSLog("A switch changed its value: \(aSwitch).")
        var num2:Int = 0
        
        num2 = Ingre_Dispo()
        
        if (num2 > 5){
            LabelMax.text = "No puedes seleccionar más de 5 ingredientes"
            switchJamo.setOn(false, animated: false)
            switchAceituna.setOn(false, animated: false)
            switchPepperoni.setOn(false, animated: false)
            switchCebolla.setOn(false, animated: false)
            switchPavo.setOn(false, animated: false)
            switchPimiento.setOn(false, animated: false)
            switchSalchicha.setOn(false, animated: false)
            switchPina.setOn(false, animated: false)
            num = 0;
            
        }else{
            LabelMax.text = "Número de ingredientes \(num2)"
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
