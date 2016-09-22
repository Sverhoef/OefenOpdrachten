//
//  TableViewController.swift
//  project-drie
//
//  Created by Sjors Verhoef on 20-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pirates.count
    }

    var pirates = [Pirate]()
    
    
    func loadJsonData()
    {
        let url = URL(string: "https://i889241.iris.fhict.nl/samples/pirates.json")
        let dataTask = URLSession.shared.dataTask(with: url!)
        {
            (data, response, error)
            in
            if error != nil {
                print(error)
            }   else{
                do {
                    let jsonObject = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    self.parseJsonData(_jsonObject: jsonObject as! Array<AnyObject>)
            }
            catch let error as NSError {print("Error parsing JSON: \(error)")}
            }
            
        }
        dataTask.resume()
    }
    
    
    func parseJsonData(_jsonObject: Array<AnyObject>) {
        for item in _jsonObject {
            let pirate =
                Pirate(name: item["name"] as! String
                    ,  life: item["life"] as! String
                    ,  yearsActive: item["years_active"] as! String
                    ,  countryOfOrigin: item["country_of_origin"] as! String
                    ,  comments: item["comments"] as! String)
                pirates.append(pirate)
        }
        self.tableView.reloadData()
    }
 
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let currentRow = indexPath.row
        let currentPirate = self.pirates[currentRow]
        cell.textLabel?.text = currentPirate.name
        return cell
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var selectedRow = self.tableView.indexPathForSelectedRow
        let selectedPirate = self.pirates[selectedRow!.row]
        let controller = segue.destination as! DetailsViewController
        controller.selectedPirate = selectedPirate
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


