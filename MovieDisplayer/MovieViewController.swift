//
//  ViewController.swift
//  MovieDisplayer
//
//  Created by Morales, Angel (MX - Mexico) on 14/09/18.
//  Copyright © 2018 TheKairuz. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    lazy var tableView : UITableView = {
        let table = UITableView()
        table.dataSource = self
        table.delegate = self

        let nib = UINib(nibName: "MovieCell", bundle: nil)
        table.register(nib, forCellReuseIdentifier: "MovieCell")

        return table
        
    }()
    
    let movies = MovieDTO.makeMovies()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        
        tableView.reloadData()
    }
    
}

extension MovieViewController : UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieTableViewCell
        cell.configure()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

}

