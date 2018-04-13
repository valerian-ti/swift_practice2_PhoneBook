//
//  ViewController.swift
//  PhoneBook app
//
//  Created by mac on 12/04/2018.
//  Copyright © 2018 intern. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{

    
   
    var elements = [Call]()
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var edittn: UIButton!
    override func viewDidLoad() {
        
   
        super.viewDidLoad()
        
        let AlexandraSerova = Call(name: "Alexandra Serova 555")
        elements.append(AlexandraSerova)
        
      let JessicaAlba = Call(name: "Jessica Alba 666")
        elements.append(JessicaAlba)
        let JessicaSimpson = Call(name: "Jessica Simpson 777")
    elements.append(JessicaSimpson)
        
        tableView.delegate = self
        tableView.dataSource = self
        

    }

  
    @IBOutlet weak var edit: UIButton!
    
  
    @IBAction func editPressed(_ sender: UIButton) {
       tableView.isEditing = !tableView.isEditing
        if tableView.isEditing {
           edit.setTitle("Done", for: .normal)
            
        } else {
         edit.setTitle("Edit", for: .normal)
            
        }
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return elements.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell") as! ContactTableViewCell
       
        
        cell.contactLabel.text = elements[indexPath.row].name
    //    cell.contactImage.image = UIImage.init(named: elements[indexPath.row])
     //   cell.contactImage.layer.cornerRadius = cell.contactImage.frame.height / 2
        return cell
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    let selectedItem = elements[sourceIndexPath.row]
        elements.remove(at: sourceIndexPath.row)
        elements.insert(selectedItem, at: sourceIndexPath.row)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
           elements.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
}

