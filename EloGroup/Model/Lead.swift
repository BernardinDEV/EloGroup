//
//  Lead.swift
//  EloGroup
//
//  Created by bernardo frisso on 22/10/20.
//

import Foundation
import RealmSwift
class Lead : Object{
  @objc dynamic  var nome : String = ""
    @objc dynamic  var email : String = ""
    @objc dynamic  var numero : String = ""
    var  status = Status()
    @objc dynamic  var change = 0
    @objc dynamic  var data : String = ""
    var oportunidades = Oportunidade(rpa: false, produto: false, analitics: false, bmp: false)
    
    
    
}
class Oportunidade {
        var rpa : Bool
        var produto :Bool
        var analitics : Bool
        var bpm : Bool
 init(rpa : Bool , produto : Bool , analitics: Bool, bmp:Bool) {
        self.bpm = false
        self.analitics = false
        self.produto = false
        self.rpa = false
   
    }

}
class Status {
    
    var status : [String] = ["Cliente em Potencial" , "Dados Confirmados"," Reunião Agendada"]
    required init() {
        self.status[0] = status[0]
    }
    
}
