//
//  ViewController.swift
//  Signos
//
//  Created by Hebert Falcão on 22/04/2018.
//  Copyright © 2018 hebertfalcao. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var signos: [String] = []
    var significadosSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("AA 01")
        signos.append("AA 02")
        signos.append("BB 03")
        signos.append("CC 04")
        signos.append("DD 05")
        signos.append("DD 06")
        signos.append("EE 07")
        signos.append("EE 08")
        signos.append("FF 09")
        signos.append("GG 10")
        signos.append("HH 11")
        signos.append("II 12")
        
        significadosSignos.append("Significado 01")
        significadosSignos.append("Significado 02")
        significadosSignos.append("Significado 03")
        significadosSignos.append("Significado 04")
        significadosSignos.append("Significado 05")
        significadosSignos.append("Significado 06")
        significadosSignos.append("Significado 07")
        significadosSignos.append("Significado 08")
        significadosSignos.append("Significado 09")
        significadosSignos.append("Significado 10")
        significadosSignos.append("Significado 11")
        significadosSignos.append("Significado  12")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        
        celula.textLabel?.text = signos[indexPath.row]

        return celula
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // desmarcar
        tableView.deselectRow(at: indexPath, animated: true)

        let alertaController = UIAlertController(title: signos[indexPath.row], message: significadosSignos[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)

        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

