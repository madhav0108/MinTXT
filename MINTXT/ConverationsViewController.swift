//
//  ConverationsSViewController.swift
//  MINTXT
//
//  Created by madhav sharma on 10/19/20.
//

import UIKit

class ConverationsViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self

        // Do any additional setup after loading the view.
    }

}

extension ConverationsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "trialCell") as? TrialCell
            else {
                return UITableViewCell()
        }
        cell.configureCell(title: "Thought Trial v1")
        return cell
    }
    
    
}
