//
//  ViewController.swift
//  RandomColors
//
//  Created by Rohan on 9/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
    }
    
    
    func createRandomColors(){
        for _ in 0..<50{
            colors.append(addRandomColor())
        }
    }

    
    func addRandomColor() -> UIColor{
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1.0)
        
        return randomColor
    }
    
    
    

}
 

extension ViewController:  UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
}
