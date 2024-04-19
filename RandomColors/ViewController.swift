//
//  ViewController.swift
//  RandomColors
//
//  Created by Rohan on 9/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    var colors: [UIColor] = []
    
    enum Cells{
        static let colorCell = "ColorCell"
    }
    
    enum Segues{
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
    }
    
    
    func createRandomColors(){
        for _ in 0..<50{
            colors.append(.randomColor())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ViewController:  UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedColor = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: selectedColor)
    }
    
}
