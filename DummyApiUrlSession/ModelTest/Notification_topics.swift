/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Notification_topics {
	public var topic : String?
	public var label : String?
	public var default : Bool?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let notification_topics_list = Notification_topics.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Notification_topics Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Notification_topics]
    {
        var models:[Notification_topics] = []
        for item in array
        {
            models.append(Notification_topics(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let notification_topics = Notification_topics(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Notification_topics Instance.
*/
	required public init?(dictionary: NSDictionary) {

		topic = dictionary["topic"] as? String
		label = dictionary["label"] as? String
		default = dictionary["default"] as? Bool
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.topic, forKey: "topic")
		dictionary.setValue(self.label, forKey: "label")
		dictionary.setValue(self.default, forKey: "default")

		return dictionary
	}

}