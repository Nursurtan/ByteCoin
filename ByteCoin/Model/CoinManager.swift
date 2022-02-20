//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    
    //https://rest.coinapi.io/v1/exchangerate/BTC/USD
    //https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=49A180B8-B1BA-4959-A2BD-704D98833F42
    let apiKey = "YOUR_API_KEY_HERE"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice( for currency: String ) {
        
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        
        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data,response,error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                let dataAsString = String(data: data!, encoding: .utf8)
                print(dataAsString)
                
            }
            
            task.resume()
            
        }
    }
    
}
    
