//
//  ViewController.swift
//  DummyApiUrlSession
//
//  Created by Akash Gupta on 20/05/21.
//

import UIKit
import SwiftyJSON
import Foundation
import SDWebImage


struct TitleName {
    var title:String?
}

struct Thumbnail {
    var thumbnail_url:String?
}


class TableView: UITableViewCell {
    @IBOutlet weak var imageview: UIImageView!
    
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var table_view: UITableView!
    var titleArr = [TitleName]()
    var thumbnail_urlArr = [Thumbnail]()
    var itemArr  = [[Thumbnail]]()

    let section = ["pizza", "deep dish pizza", "calzone"]

    var items = [["Margarita", "BBQ Chicken", "Pepperoni"], ["sausage", "meat lovers", "veggie lovers"], ["sausage", "chicken pesto", "prawns", "mushrooms"]]
//
    override func viewDidLoad() {
        super.viewDidLoad()
        table_view.dataSource = self
        table_view.delegate = self
        
        self.table_view.allowsSelection = false
        self.table_view.tableFooterView = UIView()
    
        let nib = UINib(nibName: "CustomSectionHeader", bundle: nil)
        table_view.register(nib, forHeaderFooterViewReuseIdentifier: "customSectionHeader")

        
        ApiManager.sharedInstance.makeHTTPGetRequest(path: Constants.baseurl, onCompletion: {  (data, err) in



            let jsonData = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
            let block = jsonData["asset_feed"] as? [String : Any]
            let blockData = block!["blocks"] as? [[String : Any]]
            
            for i in 0...blockData!.count - 1 {
                if let title = blockData![i]["title"] as? String {
                    self.titleArr.append(TitleName(title: title))
                    if  let assestData = blockData![i]["assets"] as? [[String : Any]]{
                         for i in 0...assestData.count - 1 {
                            self.thumbnail_urlArr.append(Thumbnail(thumbnail_url: assestData[i]["thumbnail"] as? String))
                        }
                    }
                }
                self.itemArr.append(self.thumbnail_urlArr)
                self.thumbnail_urlArr.removeAll()
            }
           
                DispatchQueue.main.async {
                    print(self.titleArr.count)
                    print(self.thumbnail_urlArr.count)
                    self.table_view.reloadData()
                }
        })
    }
}


extension ViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
        let header = self.table_view.dequeueReusableHeaderFooterView(withIdentifier: "customSectionHeader") as! CustomSectionHeader
            header.titleLabel.text = titleArr[section].title
        return header
    }
    
    // Give a height to our table view cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    // We have only one section
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleArr.count
    }
    
    // One cell is enough
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 2
         return itemArr[section].count
    }
    
    // Cell creation
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table_view.dequeueReusableCell(withIdentifier: "TableView", for: indexPath) as! TableView
        if let imageUrl = self.itemArr[indexPath.section][indexPath.row].thumbnail_url{
            if let  urlString = imageUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed){
                DispatchQueue.global().async {
                    guard let imageURLStr = URL(string: urlString) else { return }
                   DispatchQueue.main.async {
                    cell.imageview.sd_setImage(with: imageURLStr,placeholderImage:UIImage(named:"logo"))
                 }
             }
          }
        }
        return cell
    }
    
}
