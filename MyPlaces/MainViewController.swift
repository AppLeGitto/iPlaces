//
//  MainTableViewController.swift
//  MyPlaces
//
//  Created by Марк Кобяков on 05.04.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
            "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
            "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
            "Speak Easy", "Morris Pub", "Вкусные истории",
            "Классик", "Love&Life", "Шок", "Бочка"
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel.text = restaurantNames[indexPath.row]
        
        cell.imageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height/3
        cell.imageOfPlace.clipsToBounds = true
//        configure(cell: &cell, for: indexPath)

        return cell
    }
    
    // MARK: - TableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MainViewController {
    func configure(cell: inout UITableViewCell, for index: IndexPath) {
        var configuration = cell.defaultContentConfiguration()
        configuration.image = UIImage(named: restaurantNames[index.row])
        configuration.text = restaurantNames[index.row]
        
        cell.contentConfiguration = configuration
    }
}
