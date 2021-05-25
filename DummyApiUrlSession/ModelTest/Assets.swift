/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Assets {
	public var title : String?
	public var uuid : String?
	public var asset_type : String?
	public var type : String?
	public var asset_icon : String?
	public var mime_type : String?
	public var source : String?
	public var pubDate : String?
	public var url : String?
	public var keywordswords : String?
	public var flags : String?
	public var thumbnail : String?
	public var thumb_orientation : String?
	public var resource_url : String?
	public var summary : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let assets_list = Assets.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Assets Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Assets]
    {
        var models:[Assets] = []
        for item in array
        {
            models.append(Assets(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let assets = Assets(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Assets Instance.
*/
	required public init?(dictionary: NSDictionary) {

		title = dictionary["title"] as? String
		uuid = dictionary["uuid"] as? String
		asset_type = dictionary["asset_type"] as? String
		type = dictionary["type"] as? String
		asset_icon = dictionary["asset_icon"] as? String
		mime_type = dictionary["mime_type"] as? String
		source = dictionary["source"] as? String
		pubDate = dictionary["pubDate"] as? String
		url = dictionary["url"] as? String
		keywords = dictionary["keywords"] as? String
		flags = dictionary["flags"] as? String
		thumbnail = dictionary["thumbnail"] as? String
		thumb_orientation = dictionary["thumb_orientation"] as? String
		resource_url = dictionary["resource_url"] as? String
		summary = dictionary["summary"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.uuid, forKey: "uuid")
		dictionary.setValue(self.asset_type, forKey: "asset_type")
		dictionary.setValue(self.type, forKey: "type")
		dictionary.setValue(self.asset_icon, forKey: "asset_icon")
		dictionary.setValue(self.mime_type, forKey: "mime_type")
		dictionary.setValue(self.source, forKey: "source")
		dictionary.setValue(self.pubDate, forKey: "pubDate")
		dictionary.setValue(self.url, forKey: "url")
		dictionary.setValue(self.keywords, forKey: "keywords")
		dictionary.setValue(self.flags, forKey: "flags")
		dictionary.setValue(self.thumbnail, forKey: "thumbnail")
		dictionary.setValue(self.thumb_orientation, forKey: "thumb_orientation")
		dictionary.setValue(self.resource_url, forKey: "resource_url")
		dictionary.setValue(self.summary, forKey: "summary")

		return dictionary
	}

}