//
//  ApiManager.swift
//  DummyApiUrlSession
//
//  Created by Akash Gupta on 20/05/21.
//

import Foundation
import SwiftyJSON

typealias ServiceResponse = (JSON, NSError?) -> Void
typealias CompleteHandlerBlock = () -> ()

class ApiManager {
    
   static let sharedInstance = ApiManager()
       
    private init(){}
    
    
    func makeHTTPGetRequest(path: String, onCompletion: @escaping (Data?, NSError?) -> Void) -> URLSessionDataTask {
       
        let request = NSMutableURLRequest(url: NSURL(string: path)! as URL)
        
        let session = URLSession.shared
    
        
        let task = session.dataTask(with: request as URLRequest, completionHandler: {data, response ,error -> Void in
                    
            if let jsonData = data {
                DispatchQueue.main.async {
                    onCompletion(jsonData, nil)
                }
            }
//            else {
//
//                _ = error! as NSError
//                if error.unsafelyUnwrapped.localizedDescription.lowercased() != "cancelled"{
//
//                }
//                onCompletion(nil, error as NSError?)
//            }
        })
        task.resume()
        return task
        
    }

}
