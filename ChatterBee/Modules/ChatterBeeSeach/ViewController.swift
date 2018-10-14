//
//  ViewController.swift
//  ChatterBee
//
//  Created by Vivek Aggarwal on 10/10/18.
//  Copyright © 2018 vivek. All rights reserved.
//

import UIKit
import Alamofire

class ViewController : UIViewController,UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource  {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var presenter = PresenterSearch()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
}
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
       self.presenter.askInteractorForJsonData(searchBar.text)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}

