//
//  DevicesController.swift
//  Apollo360
//
//  Created by Bhushan Rana on 12/04/22.
//

import UIKit
import LoremSwiftum

class DevicesController: UIViewController {
    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var desciptionLabel: UILabel!
    @IBOutlet var devicesTableView: UITableView!{
        didSet{
            devicesTableView.dataSource = self
            devicesTableView.delegate = self
            devicesTableView.separatorStyle = .none
        }
    }
    var devicesArray = ["Balance Blood Pressure Cuff", "OMROn HEM-172C Blood Pressure Cuff", "Withings Smart Scale", "Withings SYS 118 Blood Pressure Cuff"]
    var termsArray = ["Permission legal language:", "I agree to the term & conditions"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initializeViewController()
        // Do any additional setup after loading the view.
    }
    
    
    func initializeViewController() {
        titleLabel.text = "Apollo 360"
        desciptionLabel.text = Lorem.shortTweet
        
        registerCell()
    }
    
    func registerCell() {
        devicesTableView.register(UINib(nibName: "DevicesCell", bundle: nil), forCellReuseIdentifier: "DevicesCell")
    }
    
    @IBAction func nextAction(_ sender: SelectionButton) {
        let controller = ListController(nibName: "ListController", bundle: nil)
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

extension DevicesController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (section == 0) ? devicesArray.count : termsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DevicesCell", for: indexPath) as? DevicesCell else { return UITableViewCell() }
        
        cell.nameLabel.text = devicesArray[indexPath.row]
        
        if indexPath.section == 0{
            cell.nameLabel.text = devicesArray[indexPath.row]
        }else {
            cell.nameLabel.text = termsArray[indexPath.row] + " " + Lorem.shortTweet
        }
        
        return cell
    }
}

extension DevicesController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 60))

        let label = UILabel(frame: CGRect(x: 0, y: 5, width: tableView.frame.size.width, height: 50))
        label.text = "Don't see your devices?"
        view.addSubview(label)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return (section == 1) ? 60 : 0
    }
}
