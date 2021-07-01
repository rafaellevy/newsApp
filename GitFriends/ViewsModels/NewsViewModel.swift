//
//  NewsViewModel.swift
//  GitFriends
//
//  Created by Rafael Levy on 6/28/21.
//

import Foundation


struct NewsViewModel {
    let news : News
    
    
    var author: String {
        return news.author ?? "Unknown"
    }
    
    var title: String {
        return news.title ?? ""
    }
    
    var description: String {
        return news.description ?? ""
    }
    
    var url: String {
        return news.url ?? ""
        
    }
    
    var urlToImage: String {
        return news.urlToImage ?? "https://image.shutterstock.com/image-photo/random-photos-taked-on-weekend-600w-1851612238.jpg"
    }
    
}
