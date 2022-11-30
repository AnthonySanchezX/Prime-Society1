//
//  Products.swift
//  Prime Society
//
//  Created by Anthony Sanchez on 12/10/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Yeezy Zebra", image: "Zebra", price: 400),
                   Product(name: "Yeezy Black", image: "Black", price: 499),
                   Product(name: "Yeezy Bred", image: "Bred", price: 371),
                   Product(name: "Yeezy Slate", image: "Slate", price: 276),
                   Product(name: "Air Jordan 1 Dark Mocha ", image: "Mocha", price: 613),
                   Product(name: "Air jordan 1 Travis Scott ", image: "TSMocha", price: 2275),
                   Product(name: "Dunks Ben & Jerry", image: "B&J", price: 1695),
                   Product(name: "Air Jordan 6 Travis Scott", image: "JTS", price:500),
                   Product(name: "Gucci Jacket", image: "Gucci Jacket", price:820),
                   Product(name: "Gucci X North Face Hoodie", image: "Gucci X NF", price:1100),
                   Product(name: "Gucci X North Face Jacket", image: "Gucci X North", price:1000),
                   Product(name: "Kaws Hoodie", image: "Kaws", price:720),
                   Product(name: "Travis Scott Tee", image: "Cactus Jack", price:420),
                   Product(name: "Kid Cudi Tee", image: "Kid cudi", price:220),
                   Product(name: "LV White Tee", image: "LV White", price:600),
                   Product(name: "LV Tee", image: "LV", price:600)]
