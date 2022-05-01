//
//  ListController.swift
//  Apollo360
//
//  Created by Bhushan Rana on 12/04/22.
//

import UIKit
import LoremSwiftum

class ListController: UIViewController {
    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var desciptionLabel: UILabel!
    var listArray = ["Learn more about Apollo 360 Health", "Schedule my Apollo 360 orientation", "View my Apollo 360 dashboard", "View my patient portal", Lorem.title, Lorem.title, Lorem.title]
    @IBOutlet var listTableView: UITableView! {
        didSet {
            listTableView.dataSource = self
            listTableView.separatorStyle = .none
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        initializeViewController()
        // Do any additional setup after loading the view.
    }

    func initializeViewController() {
        titleLabel.text = "Apollo 360"
        desciptionLabel.text = Lorem.shortTweet
        
        registerCell()
    }
    
    func registerCell() {
        listTableView.register(UINib(nibName: "ListCell", bundle: nil), forCellReuseIdentifier: "ListCell")
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

extension ListController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as? ListCell else { return UITableViewCell() }
        
        cell.nameLabel.text = listArray[indexPath.row]
     
        return cell
    }
}

class TitleLabel: UILabel {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInit()

    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    func commonInit(){
        self.font = UIFont(name: "Avenir-Heavy", size: 30)
        self.textColor = UIColor.darkGray
    }
}

class DescriptionLabel: UILabel {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInit()

    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    func commonInit(){
        self.font = UIFont(name: "Avenir-Medium", size: 20)
        self.textColor = UIColor.darkGray
    }
}
