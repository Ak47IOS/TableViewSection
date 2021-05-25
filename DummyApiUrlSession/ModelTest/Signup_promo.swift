/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Signup_promo {
	public var headline : String?
	public var subhead : String?
	public var tp_one : String?
	public var tp_one_img : String?
	public var tp_two : String?
	public var tp_two_img : String?
	public var tp_three : String?
	public var tp_three_img : String?
	public var detail : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let signup_promo_list = Signup_promo.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Signup_promo Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Signup_promo]
    {
        var models:[Signup_promo] = []
        for item in array
        {
            models.append(Signup_promo(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let signup_promo = Signup_promo(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Signup_promo Instance.
*/
	required public init?(dictionary: NSDictionary) {

		headline = dictionary["headline"] as? String
		subhead = dictionary["subhead"] as? String
		tp_one = dictionary["tp_one"] as? String
		tp_one_img = dictionary["tp_one_img"] as? String
		tp_two = dictionary["tp_two"] as? String
		tp_two_img = dictionary["tp_two_img"] as? String
		tp_three = dictionary["tp_three"] as? String
		tp_three_img = dictionary["tp_three_img"] as? String
		detail = dictionary["detail"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.headline, forKey: "headline")
		dictionary.setValue(self.subhead, forKey: "subhead")
		dictionary.setValue(self.tp_one, forKey: "tp_one")
		dictionary.setValue(self.tp_one_img, forKey: "tp_one_img")
		dictionary.setValue(self.tp_two, forKey: "tp_two")
		dictionary.setValue(self.tp_two_img, forKey: "tp_two_img")
		dictionary.setValue(self.tp_three, forKey: "tp_three")
		dictionary.setValue(self.tp_three_img, forKey: "tp_three_img")
		dictionary.setValue(self.detail, forKey: "detail")

		return dictionary
	}

}