//
//  NewsListViewModel.swift
//  GitFriends
//
//  Created by Rafael Levy on 6/28/21.
//

import Foundation

class NewsListViewModel {
    
    var newsVM = [NewsViewModel]()
    
    let reuseID = "news"
    
    
    func getNews(completion: @escaping ([NewsViewModel]) -> Void) {
        NetworkManager.shared.getNews { news in
            guard let news = news else {
                return
            }
            let newsVM = news.map(NewsViewModel.init)
            DispatchQueue.main.async {
                // *ask* newsVM , newsVM again
                self.newsVM = newsVM
                completion(newsVM)
            }
        }
    }
}
