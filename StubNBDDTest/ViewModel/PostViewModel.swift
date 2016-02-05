//
//  PostViewModel.swift
//  StubNBDDTest
//
//  Created by Anak Mirasing on 2/5/16.
//  Copyright © 2016 iGROOMGRiM. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class PostViewModel {
    
    struct Constants {
        static let baseURL = "http://jsonplaceholder.typicode.com/posts"
    }
    
    let disposeBag = DisposeBag()
    
    var postUserId = PublishSubject<Int?>()
    var postTitle = PublishSubject<String?>()
    var postBody = PublishSubject<String?>()
    
    var post:Post? {
        didSet {
            if let userId = post?.userId {
                dispatch_async(dispatch_get_main_queue()) {
                    self.postUserId.onNext(userId)
                }
            }
            
            if let title = post?.title {
                dispatch_async(dispatch_get_main_queue()) {
                    self.postTitle.onNext(title)
                }
            }
            
            if let body = post?.body {
                dispatch_async(dispatch_get_main_queue()) {
                    self.postBody.onNext(body)
                }
            }
        }
    }
    
    
    
}
