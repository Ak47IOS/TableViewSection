/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Setup {
	public var theme : String?
	public var launch_action : String?
	public var background_color : String?
	public var text_color : String?
	public var header_color : String?
	public var header_text_color : String?
	public var menu_color : String?
	public var menu_label_color : String?
	public var menu_text_color : String?
	public var accent_bar : String?
	public var accent_color : String?
	public var accent_color_text : String?
	public var login_display : String?
	public var menu_label_topics : String?
	public var menu_label_more_links : String?
	public var menu_label_info : String?
	public var about_text : String?
	public var about_url : String?
	public var submit_feedback_email : String?
	public var privacy_text : String?
	public var privacy_url : String?
	public var terms_text : String?
	public var terms_url : String?
	public var messages : Messages?
	public var default_img : Default_img?
	public var launch_ad_unit : String?
	public var banner_ad_unit : String?
	public var banner_ad_interval : String?
	public var banner_ad_interval_display : String?
	public var native_ad_unit : String?
	public var native_ad_template_id : String?
	public var native_ad_positions : Array<String>?
	public var video_ad_unit : String?
	public var video_ad_interval : String?
	public var video_ad_custom_video_ad_custom_key : String?
	public var interstitial_ad : Interstitial_ad?
	public var sticky_ad : Sticky_ad?
	public var splash_ad : String?
	public var weather_page_url : String?
	public var weather_bug : Bool?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let setup_list = Setup.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Setup Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Setup]
    {
        var models:[Setup] = []
        for item in array
        {
            models.append(Setup(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let setup = Setup(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Setup Instance.
*/
	required public init?(dictionary: NSDictionary) {

		theme = dictionary["theme"] as? String
		launch_action = dictionary["launch_action"] as? String
		background_color = dictionary["background_color"] as? String
		text_color = dictionary["text_color"] as? String
		header_color = dictionary["header_color"] as? String
		header_text_color = dictionary["header_text_color"] as? String
		menu_color = dictionary["menu_color"] as? String
		menu_label_color = dictionary["menu_label_color"] as? String
		menu_text_color = dictionary["menu_text_color"] as? String
		accent_bar = dictionary["accent_bar"] as? String
		accent_color = dictionary["accent_color"] as? String
		accent_color_text = dictionary["accent_color_text"] as? String
		login_display = dictionary["login_display"] as? String
		menu_label_topics = dictionary["menu_label_topics"] as? String
		menu_label_more_links = dictionary["menu_label_more_links"] as? String
		menu_label_info = dictionary["menu_label_info"] as? String
		about_text = dictionary["about_text"] as? String
		about_url = dictionary["about_url"] as? String
		submit_feedback_email = dictionary["submit_feedback_email"] as? String
		privacy_text = dictionary["privacy_text"] as? String
		privacy_url = dictionary["privacy_url"] as? String
		terms_text = dictionary["terms_text"] as? String
		terms_url = dictionary["terms_url"] as? String
		if (dictionary["messages"] != nil) { messages = Messages(dictionary: dictionary["messages"] as! NSDictionary) }
		if (dictionary["default_img"] != nil) { default_img = Default_img(dictionary: dictionary["default_img"] as! NSDictionary) }
		launch_ad_unit = dictionary["launch_ad_unit"] as? String
		banner_ad_unit = dictionary["banner_ad_unit"] as? String
		banner_ad_interval = dictionary["banner_ad_interval"] as? String
		banner_ad_interval_display = dictionary["banner_ad_interval_display"] as? String
		native_ad_unit = dictionary["native_ad_unit"] as? String
		native_ad_template_id = dictionary["native_ad_template_id"] as? String
		if (dictionary["native_ad_positions"] != nil) { native_ad_positions = Native_ad_positions.modelsFromDictionaryArray(dictionary["native_ad_positions"] as! NSArray) }
		video_ad_unit = dictionary["video_ad_unit"] as? String
		video_ad_interval = dictionary["video_ad_interval"] as? String
		video_ad_custom_key = dictionary["video_ad_custom_key"] as? String
		if (dictionary["interstitial_ad"] != nil) { interstitial_ad = Interstitial_ad(dictionary: dictionary["interstitial_ad"] as! NSDictionary) }
		if (dictionary["sticky_ad"] != nil) { sticky_ad = Sticky_ad(dictionary: dictionary["sticky_ad"] as! NSDictionary) }
		splash_ad = dictionary["splash_ad"] as? String
		weather_page_url = dictionary["weather_page_url"] as? String
		weather_bug = dictionary["weather_bug"] as? Bool
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.theme, forKey: "theme")
		dictionary.setValue(self.launch_action, forKey: "launch_action")
		dictionary.setValue(self.background_color, forKey: "background_color")
		dictionary.setValue(self.text_color, forKey: "text_color")
		dictionary.setValue(self.header_color, forKey: "header_color")
		dictionary.setValue(self.header_text_color, forKey: "header_text_color")
		dictionary.setValue(self.menu_color, forKey: "menu_color")
		dictionary.setValue(self.menu_label_color, forKey: "menu_label_color")
		dictionary.setValue(self.menu_text_color, forKey: "menu_text_color")
		dictionary.setValue(self.accent_bar, forKey: "accent_bar")
		dictionary.setValue(self.accent_color, forKey: "accent_color")
		dictionary.setValue(self.accent_color_text, forKey: "accent_color_text")
		dictionary.setValue(self.login_display, forKey: "login_display")
		dictionary.setValue(self.menu_label_topics, forKey: "menu_label_topics")
		dictionary.setValue(self.menu_label_more_links, forKey: "menu_label_more_links")
		dictionary.setValue(self.menu_label_info, forKey: "menu_label_info")
		dictionary.setValue(self.about_text, forKey: "about_text")
		dictionary.setValue(self.about_url, forKey: "about_url")
		dictionary.setValue(self.submit_feedback_email, forKey: "submit_feedback_email")
		dictionary.setValue(self.privacy_text, forKey: "privacy_text")
		dictionary.setValue(self.privacy_url, forKey: "privacy_url")
		dictionary.setValue(self.terms_text, forKey: "terms_text")
		dictionary.setValue(self.terms_url, forKey: "terms_url")
		dictionary.setValue(self.messages?.dictionaryRepresentation(), forKey: "messages")
		dictionary.setValue(self.default_img?.dictionaryRepresentation(), forKey: "default_img")
		dictionary.setValue(self.launch_ad_unit, forKey: "launch_ad_unit")
		dictionary.setValue(self.banner_ad_unit, forKey: "banner_ad_unit")
		dictionary.setValue(self.banner_ad_interval, forKey: "banner_ad_interval")
		dictionary.setValue(self.banner_ad_interval_display, forKey: "banner_ad_interval_display")
		dictionary.setValue(self.native_ad_unit, forKey: "native_ad_unit")
		dictionary.setValue(self.native_ad_template_id, forKey: "native_ad_template_id")
		dictionary.setValue(self.video_ad_unit, forKey: "video_ad_unit")
		dictionary.setValue(self.video_ad_interval, forKey: "video_ad_interval")
		dictionary.setValue(self.video_ad_custom_key, forKey: "video_ad_custom_key")
		dictionary.setValue(self.interstitial_ad?.dictionaryRepresentation(), forKey: "interstitial_ad")
		dictionary.setValue(self.sticky_ad?.dictionaryRepresentation(), forKey: "sticky_ad")
		dictionary.setValue(self.splash_ad, forKey: "splash_ad")
		dictionary.setValue(self.weather_page_url, forKey: "weather_page_url")
		dictionary.setValue(self.weather_bug, forKey: "weather_bug")

		return dictionary
	}

}