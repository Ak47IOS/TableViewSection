/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Blocks {
	public var id : String?
	public var title : String?
	public var style : String?
	public var background_color : String?
	public var text_color : String?
	public var accent_bar : String?
	public var accent_color : String?
	public var accent_color_text : String?
	public var asset_icon : String?
	public var assets : Array<Assets>?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let blocks_list = Blocks.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Blocks Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Blocks]
    {
        var models:[Blocks] = []
        for item in array
        {
            models.append(Blocks(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let blocks = Blocks(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Blocks Instance.
*/
	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? String
		title = dictionary["title"] as? String
		style = dictionary["style"] as? String
		background_color = dictionary["background_color"] as? String
		text_color = dictionary["text_color"] as? String
		accent_bar = dictionary["accent_bar"] as? String
		accent_color = dictionary["accent_color"] as? String
		accent_color_text = dictionary["accent_color_text"] as? String
		asset_icon = dictionary["asset_icon"] as? String
		if (dictionary["assets"] != nil) { assets = Assets.modelsFromDictionaryArray(dictionary["assets"] as! NSArray) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.style, forKey: "style")
		dictionary.setValue(self.background_color, forKey: "background_color")
		dictionary.setValue(self.text_color, forKey: "text_color")
		dictionary.setValue(self.accent_bar, forKey: "accent_bar")
		dictionary.setValue(self.accent_color, forKey: "accent_color")
		dictionary.setValue(self.accent_color_text, forKey: "accent_color_text")
		dictionary.setValue(self.asset_icon, forKey: "asset_icon")

		return dictionary
	}

}