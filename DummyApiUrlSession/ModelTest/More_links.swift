/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class More_links {
	public var title : String?
	public var url : String?
	public var webkit_view : Bool?
	public var webkit_view_display : String?
	public var icon : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let more_links_list = More_links.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of More_links Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [More_links]
    {
        var models:[More_links] = []
        for item in array
        {
            models.append(More_links(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let more_links = More_links(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: More_links Instance.
*/
	required public init?(dictionary: NSDictionary) {

		title = dictionary["title"] as? String
		url = dictionary["url"] as? String
		webkit_view = dictionary["webkit_view"] as? Bool
		webkit_view_display = dictionary["webkit_view_display"] as? String
		icon = dictionary["icon"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.url, forKey: "url")
		dictionary.setValue(self.webkit_view, forKey: "webkit_view")
		dictionary.setValue(self.webkit_view_display, forKey: "webkit_view_display")
		dictionary.setValue(self.icon, forKey: "icon")

		return dictionary
	}

}