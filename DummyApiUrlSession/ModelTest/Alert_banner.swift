/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Alert_banner {
	public var feed : String?
	public var url : String?
	public var background : String?
	public var color : String?
	public var text : String?
	public var label_background : String?
	public var label_color : String?
	public var label_text : String?
	public var video_player : String?
	public var video_player_thumb : String?
	public var inactive_background : String?
	public var inactive_color : String?
	public var inactive_text : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let alert_banner_list = Alert_banner.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Alert_banner Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Alert_banner]
    {
        var models:[Alert_banner] = []
        for item in array
        {
            models.append(Alert_banner(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let alert_banner = Alert_banner(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Alert_banner Instance.
*/
	required public init?(dictionary: NSDictionary) {

		feed = dictionary["feed"] as? String
		url = dictionary["url"] as? String
		background = dictionary["background"] as? String
		color = dictionary["color"] as? String
		text = dictionary["text"] as? String
		label_background = dictionary["label_background"] as? String
		label_color = dictionary["label_color"] as? String
		label_text = dictionary["label_text"] as? String
		video_player = dictionary["video_player"] as? String
		video_player_thumb = dictionary["video_player_thumb"] as? String
		inactive_background = dictionary["inactive_background"] as? String
		inactive_color = dictionary["inactive_color"] as? String
		inactive_text = dictionary["inactive_text"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.feed, forKey: "feed")
		dictionary.setValue(self.url, forKey: "url")
		dictionary.setValue(self.background, forKey: "background")
		dictionary.setValue(self.color, forKey: "color")
		dictionary.setValue(self.text, forKey: "text")
		dictionary.setValue(self.label_background, forKey: "label_background")
		dictionary.setValue(self.label_color, forKey: "label_color")
		dictionary.setValue(self.label_text, forKey: "label_text")
		dictionary.setValue(self.video_player, forKey: "video_player")
		dictionary.setValue(self.video_player_thumb, forKey: "video_player_thumb")
		dictionary.setValue(self.inactive_background, forKey: "inactive_background")
		dictionary.setValue(self.inactive_color, forKey: "inactive_color")
		dictionary.setValue(self.inactive_text, forKey: "inactive_text")

		return dictionary
	}

}