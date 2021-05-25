/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Paywall {
	public var paywall_native : String?
	public var paywall_title : String?
	public var paywall_subhead : String?
	public var paywall_description : String?
	public var paywall_text_color : String?
	public var paywall_bg : String?
	public var paywall_btn_color : String?
	public var paywall_btn_text : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let paywall_list = Paywall.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Paywall Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Paywall]
    {
        var models:[Paywall] = []
        for item in array
        {
            models.append(Paywall(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let paywall = Paywall(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Paywall Instance.
*/
	required public init?(dictionary: NSDictionary) {

		paywall_native = dictionary["paywall_native"] as? String
		paywall_title = dictionary["paywall_title"] as? String
		paywall_subhead = dictionary["paywall_subhead"] as? String
		paywall_description = dictionary["paywall_description"] as? String
		paywall_text_color = dictionary["paywall_text_color"] as? String
		paywall_bg = dictionary["paywall_bg"] as? String
		paywall_btn_color = dictionary["paywall_btn_color"] as? String
		paywall_btn_text = dictionary["paywall_btn_text"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.paywall_native, forKey: "paywall_native")
		dictionary.setValue(self.paywall_title, forKey: "paywall_title")
		dictionary.setValue(self.paywall_subhead, forKey: "paywall_subhead")
		dictionary.setValue(self.paywall_description, forKey: "paywall_description")
		dictionary.setValue(self.paywall_text_color, forKey: "paywall_text_color")
		dictionary.setValue(self.paywall_bg, forKey: "paywall_bg")
		dictionary.setValue(self.paywall_btn_color, forKey: "paywall_btn_color")
		dictionary.setValue(self.paywall_btn_text, forKey: "paywall_btn_text")

		return dictionary
	}

}