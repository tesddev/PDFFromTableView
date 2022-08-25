//
//  ViewController.swift
//  PDFFromTableView
//
//  Created by GIGL iOS on 25/08/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var detailsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        detailsTableView.delegate = self
        detailsTableView.dataSource = self
        detailsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    @IBAction func didTapDownload(_ sender: Any) {
        print("button tapped")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        cell.textLabel?.text = "TESLEEM"
        return cell
    }
}

