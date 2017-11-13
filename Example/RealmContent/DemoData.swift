//
//  ViewController+DemoData.swift
//
//  Created by Marin Todorov
//  Copyright © 2017 - present Realm. All rights reserved.
//

import Foundation

import RealmSwift
import RealmContent

struct DemoData {

    static func createDemoDataSet4(in realm: Realm) {
        try! realm.write {
            realm.deleteAll()

            // store offers
            let format1 = ContentPage(value: ["title": "Formatting showcase", "uuid": "formatting", "priority": 10, "mainColor": "#D34CA3"])
            let elements1: [ContentElement] = [
                ContentElement(value: ["type": "h1", "content": "Plain text"]),
                ContentElement(value: ["type": "p", "content": "Some plain text here\n\n-------------------"]),
                ContentElement(value: ["type": "h1", "content": "Markdown"]),
                ContentElement(value: ["type": "p", "content": "Heading\n====\nSub-Heading\n----\nHere is some _markdown_ *formatted* text.\n\n>This is a *markdown* _formatted_ blockquote.\n[Link back to app](app://123/MyProduct)\n\n-------------------"]),
                ContentElement(value: ["type": "h1", "content": "HTML"]),
                ContentElement(value: ["type": "p", "content": "<h1>H1 Heading</h1><h3>H3 Heading</h3>More <i>HT</i><b>ML</b> follows here. <table border=1 padding=10><tr><td>Price:</td><td>218.30</td></tr><tr><td>Product:</td><td>Product name</td></tr></table><a href='app://123/myproduct' style='display:block; padding:20px; background: #569e6b; border:1px solid #40664a; width:110px; height:18px;color:white; font-weight:bold;text-decoration:none;font-size:18px;margin-top:20px;-webkit-border-radius:10px;'>Add to Cart</a>"])
            ]
            format1.elements.append(objectsIn: elements1)

            realm.add(format1)
        }
    }

    static func createDemoDataSet3(in realm: Realm) {
        try! realm.write {
            realm.deleteAll()

            // store offers
            let offer1 = ContentPage(value: ["title": "This weekend everything is 20% off", "tag": "offer", "priority": 10, "mainColor": "#D34CA3"])
            let elements1: [ContentElement] = [
                ContentElement(value: ["type": "h1", "content": "Big weekend sale!"]),
                ContentElement(value: ["type": "h2", "content": "This weekend everything is 20% off"]),
                ContentElement(value: ["type": "img", "content": "https://raw.githubusercontent.com/realm-demos/RealmContent/master/assets/pexels-photo-248797.jpg", "url": "https://news.realm.io/news/marin-todorov-realm-rxswift/"]),
                ContentElement(value: ["type": "p", "content": "Use promo code 'bigsummersale20' to get your discount at checkout"])
            ]
            offer1.elements.append(objectsIn: elements1)

            let offer2 = ContentPage(value: ["title": "Buy 4 garden gnomes, pay 5!", "tag": "offer", "priority": 8, "mainColor": "#9A50A5"])
            let elements2: [ContentElement] = [
                ContentElement(value: ["type": "h1", "content": "Big spring sale!"]),
                ContentElement(value: ["type": "h2", "content": "Buy 4 garden gnomes, pay 5!"]),
                ContentElement(value: ["type": "img", "content": "https://raw.githubusercontent.com/realm-demos/RealmContent/master/assets/pexels-photo-296230.jpg", "url": "https://news.realm.io/news/marin-todorov-realm-rxswift/"]),
                ContentElement(value: ["type": "p", "content": "Use promo code '4for5supergnome' to get your discount at checkout"])
            ]
            offer2.elements.append(objectsIn: elements2)

            let offer3 = ContentPage(value: ["title": "Get our fidelity card for a chance to win!", "tag": "offer", "priority": 6, "mainColor": "#59569E"])
            let elements3: [ContentElement] = [
                ContentElement(value: ["type": "h1", "content": "Get the card, win the prizes! Do it now!"]),
                ContentElement(value: ["type": "h3", "content": "Not only you will get permanent discount of 5% on all products, but you can also win big time!"]),
                ContentElement(value: ["type": "img", "content": "https://raw.githubusercontent.com/realm-demos/RealmContent/master/assets/pexels-photo.jpg", "url": "https://news.realm.io/news/marin-todorov-realm-rxswift/"])
            ]
            offer3.elements.append(objectsIn: elements3)

            realm.add([offer1, offer2, offer3])

            let product1 = ContentPage(value: ["title": "Fujifilm Camera", "tag": "product"])
            let productEls1: [ContentElement] = [
                ContentElement(value: ["type": "img", "content": "https://raw.githubusercontent.com/realm-demos/RealmContent/master/assets/pexels-photo-90946.jpeg"]),
                ContentElement(value: ["type": "price", "content": "USD 559.95"]),
                ContentElement(value: ["type": "h2", "content": "Fujifilm Camera"]),
                ContentElement(value: ["type": "p", "content": "Use promo code '1checkout' for your first purchase"]),
                ContentElement(value: ["type": "h3", "content": "Add to Cart", "url": "app://addtocart/1435/"+"Fujifilm Camera".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!])
            ]
            product1.elements.append(objectsIn: productEls1)

            let product2 = ContentPage(value: ["title": "Nikon Lens", "tag": "product"])
            let productEls2: [ContentElement] = [
                ContentElement(value: ["type": "img", "content": "https://raw.githubusercontent.com/realm-demos/RealmContent/master/assets/pexels-photo-279906.jpeg"]),
                ContentElement(value: ["type": "price", "content": "USD 205.45"]),
                ContentElement(value: ["type": "h2", "content": "Nikon Lens"]),
                ContentElement(value: ["type": "p", "content": "Use promo code '1checkout' for your first purchase"]),
                ContentElement(value: ["type": "h3", "content": "Add to Cart", "url": "app://addtocart/"+"Nikon Lens".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!])
            ]
            product2.elements.append(objectsIn: productEls2)

            let product3 = ContentPage(value: ["title": "Nikon Zoom Lens", "tag": "product"])
            let productEls3: [ContentElement] = [
                ContentElement(value: ["type": "img", "content": "https://raw.githubusercontent.com/realm-demos/RealmContent/master/assets/light-night-lens-shadow.jpg"]),
                ContentElement(value: ["type": "price", "content": "USD 428.95"]),
                ContentElement(value: ["type": "h2", "content": "Nikon Zoom Lens"]),
                ContentElement(value: ["type": "p", "content": "Use promo code '1checkout' for your first purchase"]),
                ContentElement(value: ["type": "h3", "content": "Add to Cart", "url": "app://addtocart/"+"Nikon Zoom Lens".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!])
            ]
            product3.elements.append(objectsIn: productEls3)

            let product4 = ContentPage(value: ["title": "Retro Smena Camera", "tag": "product"])
            let productEls4: [ContentElement] = [
                ContentElement(value: ["type": "img", "content": "https://raw.githubusercontent.com/realm-demos/RealmContent/master/assets/pexels-photo-50924.jpeg"]),
                ContentElement(value: ["type": "price", "content": "USD 95.59"]),
                ContentElement(value: ["type": "h2", "content": "Retro Smena Camera"]),
                ContentElement(value: ["type": "p", "content": "Use promo code '1checkout' for your first purchase"]),
                ContentElement(value: ["type": "h3", "content": "Add to Cart", "url": "app://addtocart/"+"Retro Smena Camera".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!])
            ]
            product4.elements.append(objectsIn: productEls4)

            realm.add([product2, product3, product4, product1])
        }
    }

    static func createDemoDataSet2(in realm: Realm) {
        try! realm.write {
            realm.deleteAll()

            let contact = ContentPage(value: [
                "title": "Interactions Showcase",
                "mainColor": "Blue",
                "uuid": "interactions"
                ])
            let elements: [ContentElement] = [
                ContentElement(value: ["type": "p", "content": "This is a text"]),
                ContentElement(value: ["type": "p", "content": "This is a text with a URL", "url": "https://www.wikipedia.com"]),
                ContentElement(value: ["type": "p", "content": "Below is a heading with a URL"]),
                ContentElement(value: ["type": "h2", "content": "Tap me!", "url": "https://www.kiva.org"]),
                ContentElement(value: ["type": "p", "content": "Below is an image with url"]),
                ContentElement(value: ["type": "img", "content": "http://realm.io/assets/img/news/2016-05-17-realm-rxswift/rx.png", "url": "https://news.realm.io/news/marin-todorov-realm-rxswift/"]),
                ContentElement(value: ["type": "p", "content": "Below is a custom schema URL of this type: app://product/id/134. This schema allows you to implement custom app logic when the user taps on a link."]),
                ContentElement(value: ["type": "h2", "content": "Add to cart", "url": "app://product/id/134"])
            ]
            contact.elements.append(objectsIn: elements)

            realm.add(contact)
        }
    }

    static func createDemoDataSet1(in realm: Realm) {
        try! realm.write {
            realm.deleteAll()

            let about = ContentPage(value: [
                "title": "About",
                "priority": 10,
                "mainColor": "purple",
                "tag": "Info"
                ])
            about.elements.append(
                ContentElement(value: ["type": "p", "content": "A demo about page"])
            )

            let contact = ContentPage(value: [
                "title": "Formatting Showcase",
                "priority": 8,
                "mainColor": "purple",
                "tag": "Info",
                "uuid": "showcase"
                ])
            let elements: [ContentElement] = [
                ContentElement(value: ["type": "h1", "content": "Heading with h1"]),
                ContentElement(value: ["type": "h2", "content": "Heading with h2"]),
                ContentElement(value: ["type": "h3", "content": "Heading with h3"]),
                ContentElement(value: ["type": "h4", "content": "Heading with h4"]),
                ContentElement(value: ["type": "p", "content": "In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation. Replacing meaningful content with placeholder text allows designers to design the form of the content before the content itself has been produced. (source: Wikipedia)"]),
                ContentElement(value: ["type": "p", "content": "Link to Wikipedia", "url": "https://en.wikipedia.org/wiki/Lorem_ipsum"]),
                ContentElement(value: ["type": "img", "content": "http://realm.io/assets/img/news/2016-05-17-realm-rxswift/rx.png", "url": "https://news.realm.io/news/marin-todorov-realm-rxswift/"]),
                ContentElement(value: ["type": "p", "content": "Tap on the image above to open Realm's blog 🦄 ..."])
            ]
            contact.elements.append(objectsIn: elements)

            let store = ContentPage(value: [
                "title": "Store",
                "priority": 0,
                "mainColor": "purple",
                "tag": "Shopping"
                ])
            store.elements.append(
                ContentElement(value: ["type": "p", "content": "A demo store page"])
            )
            
            realm.add([about, contact, store])
        }
    }
}
