//
//  ViewController.swift
//  ChatterBee
//
//  Created by Vivek Aggarwal on 10/10/18.
//  Copyright © 2018 vivek. All rights reserved.
//

import UIKit

class ViewController : UIViewController  {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var presenter = PresenterSearch()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }}


//MARK:- UISEARCHBARDELEGATE
    extension  ViewController: UISearchBarDelegate  {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
       self.presenter.askInteractorForJsonData(searchBar.text)
    }
    }
    
    
    
//MARK :- UITABLEVIEWDATASOURCE
    extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        return cell
    }

}

//MARK:- UITABLEVIEWDELEGATE
    extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
