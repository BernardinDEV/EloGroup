//
//  LeadCellViewController.swift
//  EloGroup
//
//  Created by bernardo frisso on 22/10/20.
//
import UIKit
import RealmSwift
class LeadCellViewController : UITableViewController {
    
    
    let realm = try! Realm()
    var lead : Results<Lead>?
    var newlead = Lead()
    var client : Results<Client>?
    var info = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        load()
     
        // Do any additional setup after loading the view.
    }
    @IBAction func addbutton(_ sender: UIBarButtonItem) {
        var nome = UITextField()
        var numero = UITextField()
        var email = UITextField()
        let alert  = UIAlertController(title: "Add new Lead", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Lead", style: .default) { [self] (action) in
            let newlead = Lead()
            let alert1 = UIAlertController(title: "Add ", message: "RPA", preferredStyle: .alert)
            
                let action1 = UIAlertAction(title: "Add", style: .default) { [self] (action) in
                    newlead.oportunidades.rpa = true
                    let alert2  = UIAlertController(title: "Add ", message: "Produto digital", preferredStyle: .alert)
                    
                    let action2 = UIAlertAction(title: "Add ", style: .default) { [self] (action) in
                        newlead.oportunidades.produto = true
                        let alert3 = UIAlertController(title: "Add ", message: "Analitcs", preferredStyle: .alert)
                        
                        let action3 = UIAlertAction(title: "Add Analitcs", style: .default) { [self] (action) in
                            newlead.oportunidades.analitics = true
                            let alert4 = UIAlertController(title: "Add oportunity", message: "BPM", preferredStyle: .alert)
                            
                            let action4 = UIAlertAction(title: "Add ", style: .default) { [self] (action) in
                                newlead.oportunidades.bpm = true
                            }
                            let action14 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                                newlead.oportunidades.bpm = false
                            }
                            alert4.addAction(action14)
                            alert4.addAction(action4)
                            present(alert4 , animated: true, completion:  nil)
                        }
                        
                        let action13 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                           newlead.oportunidades.analitics = false
                            let alert4 = UIAlertController(title: "Add oportunity", message: "BPM", preferredStyle: .alert)
                            
                            let action4 = UIAlertAction(title: "Add ", style: .default) { [self] (action) in
                                newlead.oportunidades.bpm = true
                            }
                            let action14 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                                newlead.oportunidades.bpm = false
                            }
                            alert4.addAction(action14)
                            alert4.addAction(action4)
                            present(alert4 , animated: true, completion:  nil)
                            
                        }
                        alert3.addAction(action13)
                        alert3.addAction(action3)
                        present(alert3 , animated: true, completion:  nil)
                    }
                    let action12 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                        newlead.oportunidades.produto = false
                        let alert3 = UIAlertController(title: "Add oportunity", message: "Analitcs", preferredStyle: .alert)
                        
                        let action3 = UIAlertAction(title: "Add ", style: .default) { [self] (action) in
                            newlead.oportunidades.analitics = true
                            
                        }
                        let action13 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                            newlead.oportunidades.analitics = false
                            let alert4 = UIAlertController(title: "Add oportunity", message: "BPM", preferredStyle: .alert)
                            
                            let action4 = UIAlertAction(title: "Add ", style: .default) { [self] (action) in
                                newlead.oportunidades.bpm = true
                            }
                            let action14 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                                newlead.oportunidades.bpm = false
                            }
                            alert4.addAction(action14)
                            alert4.addAction(action4)
                            present(alert4 , animated: true, completion:  nil)
                            
                        }
                        alert3.addAction(action13)
                        alert3.addAction(action3)
                        present(alert3 , animated: true, completion:  nil)
                    }
                    alert2.addAction(action12)
                    alert2.addAction(action2)
                    present(alert2 , animated: true, completion:  nil)
            }
                let action11 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                    newlead.oportunidades.rpa = false
                    let alert2  = UIAlertController(title: "Add oportunity", message: "Produto digital", preferredStyle: .alert)
                    
                    let action2 = UIAlertAction(title: "Add Produto D", style: .default) { [self] (action) in
                        newlead.oportunidades.produto = true
                    }
                    let action12 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                        newlead.oportunidades.produto = false
                        let alert3 = UIAlertController(title: "Add oportunity", message: "Analitcs", preferredStyle: .alert)
                        
                        let action3 = UIAlertAction(title: "Add Analitcs", style: .default) { [self] (action) in
                            newlead.oportunidades.analitics = true
                            
                        }
                        let action13 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                            newlead.oportunidades.analitics = false
                            let alert4 = UIAlertController(title: "Add oportunity", message: "BPM", preferredStyle: .alert)
                            
                            let action4 = UIAlertAction(title: "Add BPM", style: .default) { [self] (action) in
                                newlead.oportunidades.bpm = true
                            }
                            let action14 = UIAlertAction(title: "next", style: .default) { [self] (action) in
                                newlead.oportunidades.bpm = false
                            }
                            alert4.addAction(action14)
                            alert4.addAction(action4)
                            present(alert4 , animated: true, completion:  nil)
                            
                        }
                        alert3.addAction(action13)
                        alert3.addAction(action3)
                        present(alert3 , animated: true, completion:  nil)
                    }
                    alert2.addAction(action12)
                    alert2.addAction(action2)
                    present(alert2 , animated: true, completion:  nil)
                   
                    
                    
            }
            
            alert1.addAction(action11)
            alert1.addAction(action1)
            present(alert1 , animated: true, completion:  nil)
            newlead.nome = nome.text!
            newlead.email = email.text!
            newlead.numero = numero.text!
            let hour = Calendar.current.component(.hour, from: Date())
            let minute = Calendar.current.component(.minute, from: Date())
            newlead.data = "\(hour):\(minute)"
            save(lead: newlead)
            
        }
       
            alert.addTextField { (alertTextField) in
                alertTextField.placeholder = "type the name"
                nome = alertTextField
            }
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "type the numero"
            numero = alertTextField
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "type the email"
            email = alertTextField
        }

            alert.addAction(action)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            present(alert , animated: true, completion:  nil)
}
            
    @IBAction func infobutton(_ sender: UIButton) {
        
        let alert : UIAlertController = UIAlertController(title: "Info ", message: info, preferredStyle: .actionSheet)
        self.present(alert, animated: true, completion:nil)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lead?.count ?? 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constans.cell, for: indexPath)
        let item = lead?[indexPath.row]
        cell.textLabel?.text = "\(item!.nome)    \(item!.status.status[item!.change])" ?? "No leads add yet"
        info = "\(item!.nome), \(item!.email), \(item!.numero), \(item!.status.status[item!.change])"
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (lead?[indexPath.row].change)!  < 2{
            lead?[indexPath.row].change =  lead![indexPath.row].change + 1
            reload()
        }
        if lead?[indexPath.row].change == 1{
            let inalert  = UIAlertController(title: "Clinte add", message: "", preferredStyle: .actionSheet)
            inalert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(inalert , animated: true, completion:  nil)
            client?[indexPath.row].name = (lead?[indexPath.row].nome)!
        }
        
        
        if lead![indexPath.row].change == 2{
            var data = UITextField()
            let alert  = UIAlertController(title: "type the day of the appointment", message: "DD/MM/AAAA Hour:minute", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default) { [self] (action) in
                let inalert  = UIAlertController(title: "the appointment is checked", message: data.text, preferredStyle: .actionSheet)
                inalert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                present(inalert , animated: true, completion:  nil)
            }
            alert.addTextField { (alertTextField) in
                alertTextField.placeholder = ""
                data = alertTextField
            }
            
            alert.addAction(action)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            present(alert , animated: true, completion:  nil)
           
            
        }
       
    }
    func save(lead : Lead){
        do {

            try realm.write{
                realm.add(lead)
                reload()
            }
        }catch{
            print("Error")
        }
    }
    
    func load(){
        lead = realm.objects(Lead.self)
    }
    func reload (){
        tableView.reloadData()
    }

}
