
//
//  ResponseMapping.swift
//  DemoProject
//
//  Created by Hira Saleem on 01/3/2022.
//


import Foundation

//MARK: - CyMapping Utils

//Parse Dictionary from JSON Data
func JSONParseDictionary(data: Data?) -> [String:Any]{
    
    if data != nil{
        do{
            if let dictionary = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as? [String: Any]{
                return dictionary
            }
        }
        catch{
            Print("Error! Could not create Dictionary from JSON Data.")
        }
    }
    
    return [String: Any]()
}

//Parse Array from JSON Data
func JSONParseArray(data: Data?) -> [AnyObject]{
    
    if data != nil{
        do{
            
            if let array = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as? [AnyObject] {
                return array
            }
        }catch{
            Print("Error! Could not create Array from JSON Data.")
        }
    }
    
    return [AnyObject]()
}

//From dictionary to json string
func DictionaryToJSONString(dictionary: [String: Any]) -> String?{
    let jsonData: Data? = try? JSONSerialization.data(withJSONObject: dictionary, options: JSONSerialization.WritingOptions.prettyPrinted)
    if let data = jsonData{
        return NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String?
    }
    return nil
}
