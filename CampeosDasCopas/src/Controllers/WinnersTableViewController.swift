//
//  WinnersTableViewController.swift
//  CampeosDasCopas
//
//  Created by Thiago Antonio Ramalho on 25/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

class WinnersTableViewController: UITableViewController {

    private var worldcups: [WorldCup] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWorldCups()
    }

    func loadWorldCups() {
        do {
            if let fileUrl = Bundle.main.url(forResource: "winners", withExtension: "json") {
                let jsonData = try Data(contentsOf: fileUrl)
                worldcups = try JSONDecoder().decode([WorldCup].self, from: jsonData)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return worldcups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let worldcup = worldcups[indexPath.row]
        
        cell.textLabel?.text = "Copa \(worldcup.year) - \(worldcup.country)"
        cell.detailTextLabel?.text = "\(worldcup.winner) vs \(worldcup.vice)"
        cell.imageView?.image = UIImage(named: "\(worldcup.winner).png")
        
        return cell
    }
 

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
