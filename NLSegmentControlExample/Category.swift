//
//  Category.swift
//  NLSegmentControlExample
//
//  Created by songhailiang on 10/07/2017.
//  Copyright © 2017 hailiang.song. All rights reserved.
//

import UIKit
import NLSegmentControl

struct Category {
    var categoryTitle: String?
    var categoryImage: String?
    var categorySelectedImage: String?
    
    init(title: String? = nil, image: String? = nil, selectedImage: String? = nil) {
        self.categoryTitle = title
        self.categoryImage = image
        self.categorySelectedImage = selectedImage
    }
}

extension Category: NLSegment {
    var segmentTitle: String? {
        return categoryTitle
    }
    var segmentImage: UIImage? {
        if let img = categoryImage {
            return UIImage(named: img)
        }
        return nil
    }
    var segmentSelectedImage: UIImage? {
        if let img = categorySelectedImage {
            return UIImage(named: img)
        }
        return nil
    }
}
