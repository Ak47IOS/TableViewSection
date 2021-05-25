/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Weather {
	public var zipcode : String?
	public var config_display : Bool?
	public var current_temp_f : Int?
	public var current_temp_c : Int?
	public var image_text : String?
	public var image_uri : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let weather_list = Weather.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Weather Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Weather]
    {
        var models:[Weather] = []
        for item in array
        {
            models.append(Weather(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let weather = Weather(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Weather Instance.
*/
	required public init?(dictionary: NSDictionary) {

		zipcode = dictionary["zipcode"] as? String
		config_display = dictionary["config_display"] as? Bool
		current_temp_f = dictionary["current_temp_f"] as? Int
		current_temp_c = dictionary["current_temp_c"] as? Int
		image_text = dictionary["image_text"] as? String
		image_uri = dictionary["image_uri"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.zipcode, forKey: "zipcode")
		dictionary.setValue(self.config_display, forKey: "config_display")
		dictionary.setValue(self.current_temp_f, forKey: "current_temp_f")
		dictionary.setValue(self.current_temp_c, forKey: "current_temp_c")
		dictionary.setValue(self.image_text, forKey: "image_text")
		dictionary.setValue(self.image_uri, forKey: "image_uri")

		return dictionary
	}

}