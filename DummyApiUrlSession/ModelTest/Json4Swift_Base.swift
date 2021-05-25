/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Json4Swift_Base {
	public var setup : Setup?
	public var paywall : Paywall?
	public var weather : Weather?
	public var more_links : Array<More_links>?
	public var topics : Array<Topics>?
	public var notification_topics : Array<Notification_topics>?
	public var alert_banner : Alert_banner?
	public var breaking_news : Breaking_news?
	public var pinned_content : Pinned_content?
	public var asset_feed : Asset_feed?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let json4Swift_Base_list = Json4Swift_Base.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Json4Swift_Base Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Json4Swift_Base]
    {
        var models:[Json4Swift_Base] = []
        for item in array
        {
            models.append(Json4Swift_Base(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let json4Swift_Base = Json4Swift_Base(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Json4Swift_Base Instance.
*/
	required public init?(dictionary: NSDictionary) {

		if (dictionary["setup"] != nil) { setup = Setup(dictionary: dictionary["setup"] as! NSDictionary) }
		if (dictionary["paywall"] != nil) { paywall = Paywall(dictionary: dictionary["paywall"] as! NSDictionary) }
		if (dictionary["weather"] != nil) { weather = Weather(dictionary: dictionary["weather"] as! NSDictionary) }
		if (dictionary["more_links"] != nil) { more_links = More_links.modelsFromDictionaryArray(dictionary["more_links"] as! NSArray) }
		if (dictionary["topics"] != nil) { topics = Topics.modelsFromDictionaryArray(dictionary["topics"] as! NSArray) }
		if (dictionary["notification_topics"] != nil) { notification_topics = Notification_topics.modelsFromDictionaryArray(dictionary["notification_topics"] as! NSArray) }
		if (dictionary["alert_banner"] != nil) { alert_banner = Alert_banner(dictionary: dictionary["alert_banner"] as! NSDictionary) }
		if (dictionary["breaking_news"] != nil) { breaking_news = Breaking_news(dictionary: dictionary["breaking_news"] as! NSDictionary) }
		if (dictionary["pinned_content"] != nil) { pinned_content = Pinned_content(dictionary: dictionary["pinned_content"] as! NSDictionary) }
		if (dictionary["asset_feed"] != nil) { asset_feed = Asset_feed(dictionary: dictionary["asset_feed"] as! NSDictionary) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.setup?.dictionaryRepresentation(), forKey: "setup")
		dictionary.setValue(self.paywall?.dictionaryRepresentation(), forKey: "paywall")
		dictionary.setValue(self.weather?.dictionaryRepresentation(), forKey: "weather")
		dictionary.setValue(self.alert_banner?.dictionaryRepresentation(), forKey: "alert_banner")
		dictionary.setValue(self.breaking_news?.dictionaryRepresentation(), forKey: "breaking_news")
		dictionary.setValue(self.pinned_content?.dictionaryRepresentation(), forKey: "pinned_content")
		dictionary.setValue(self.asset_feed?.dictionaryRepresentation(), forKey: "asset_feed")

		return dictionary
	}

}