//
//  ViewController.swift
//  NLSegmentControlExample
//
//  Created by songhailiang on 27/05/2017.
//  Copyright © 2017 hailiang.song. All rights reserved.
//

import UIKit
import NLSegmentControl

class ViewController: UIViewController {
    
    @IBOutlet weak var sbSegment: NLSegmentControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //default segment
        let defaultSegment = NLSegmentControl()
        defaultSegment.segments = ["Trending", "News", "Library"]
        self.view.addSubview(defaultSegment)
        //auto layout
        defaultSegment.nl_equalTop(toView: self.view, offset: 30)
        defaultSegment.nl_equalLeft(toView: self.view, offset: 20)
        defaultSegment.nl_equalRight(toView: self.view, offset: -20)
        defaultSegment.nl_heightIs(40)
        defaultSegment.reloadSegments()
        
        let segment = NLSegmentControl(frame: CGRect(x: 0, y: 80, width: UIScreen.main.bounds.width, height: 40))
        segment.segments = ["One Day", "Two", "Three", "Four dogs", "Five fingers", "Six trees", "Seven", "Eight", "Nine", "Ten"]
        segment.segmentWidthStyle = .dynamic
        segment.segmentEdgeInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        segment.selectionIndicatorHeight = 4.0
        segment.selectionIndicatorColor = .red
        segment.selectionIndicatorPosition = .bottom
        segment.enableVerticalDivider = true
        segment.verticalDividerWidth = 1
        segment.verticalDividerInset = 12
        
        segment.titleTextAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 14.0), NSForegroundColorAttributeName: UIColor.black]
        segment.selectedTitleTextAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 14.0), NSForegroundColorAttributeName: UIColor.red]
        
        segment.indexChangedHandler = {
            (index) in
            print("index changed: \(index)")
        }
        self.view.addSubview(segment)
        segment.reloadSegments()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3) {
            segment.setSelectedSegmentIndex(5, animated: false)
        }
        
        sbSegment.segments = ["First", "Second", "Third"]
        sbSegment.segmentWidthStyle = .fixed
        sbSegment.selectionIndicatorColor = .yellow
        sbSegment.selectionIndicatorPosition = .top
        sbSegment.selectionIndicatorStyle = .box
        sbSegment.selectionBoxColor = .black
        sbSegment.titleTextAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 17.0), NSForegroundColorAttributeName: UIColor.blue]
        sbSegment.selectedTitleTextAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 17.0), NSForegroundColorAttributeName: UIColor.yellow]
        sbSegment.selectionIndicatorEdgeInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        sbSegment.reloadSegments()
        
        //image segment
        let item1 = NLSegmentItem(image: UIImage(named: "baby"), selectedImage: UIImage(named: "baby_s"))
        let item2 = NLSegmentItem(image: UIImage(named: "bag"), selectedImage: UIImage(named: "bag_s"))
        let item3 = NLSegmentItem(image: UIImage(named: "diamond"), selectedImage:UIImage(named: "diamond_s"))
        let item4 = NLSegmentItem(image: UIImage(named: "flower"), selectedImage:UIImage(named: "flower_s"))
        let item5 = NLSegmentItem(image: UIImage(named: "message"), selectedImage:UIImage(named: "message_s"))
        let imageSegment = NLSegmentControl(segments: [item1, item2, item3, item4, item5])
        
        self.view.addSubview(imageSegment)
        //        imageSegment.backgroundColor = UIColor.lightGray
        imageSegment.selectionIndicatorColor = UIColor(red: 52/255.0, green: 181/255.0, blue: 229/255.0, alpha: 1.0)
        //        imageSegment.selectionIndicatorStyle = .box
        //        imageSegment.selectionIndicatorPosition = .none
        
        imageSegment.nl_marginTop(toView: sbSegment, margin: 20)
        imageSegment.nl_equalLeft(toView: self.view, offset: 0)
        imageSegment.nl_equalRight(toView: self.view, offset: 0)
        imageSegment.nl_heightIs(60)
        imageSegment.reloadSegments()
        
        //image + text segment
        let item11 = Category(title: "Baby", image: "baby", selectedImage: "baby_s")
        let item12 = Category(title: "Bag", image: "bag", selectedImage: "bag_s")
        let item13 = Category(title: "Diamond", image: "diamond", selectedImage: "diamond_s")
        let item14 = Category(title: "Flower", image: "flower", selectedImage: "flower_s")
        let item15 = Category(title: "Message", image: "message", selectedImage: "message_s")
        
        let imageTextSegment = NLSegmentControl(segments: [item11, item12, item13, item14, item15])
        
        self.view.addSubview(imageTextSegment)
        imageTextSegment.selectionIndicatorColor = UIColor(red: 52/255.0, green: 181/255.0, blue: 229/255.0, alpha: 1.0)
        imageTextSegment.segmentWidthStyle = .dynamic
        imageTextSegment.segmentEdgeInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 15)
        imageTextSegment.imagePosition = .left
        //        imageTextSegment.imageTitleSpace = 10
        //        imageTextSegment.enableVerticalDivider = true
        imageTextSegment.selectionIndicatorStyle = .textWidthStripe
        imageTextSegment.titleTextAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 17), NSForegroundColorAttributeName: UIColor.black]
        imageTextSegment.selectedTitleTextAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 17.0), NSForegroundColorAttributeName: UIColor(red: 52/255.0, green: 181/255.0, blue: 229/255.0, alpha: 1.0)]
        
        
        imageTextSegment.nl_marginTop(toView: imageSegment, margin: 20)
        imageTextSegment.nl_equalLeft(toView: self.view, offset: 0)
        imageTextSegment.nl_equalRight(toView: self.view, offset: 0)
        imageTextSegment.nl_heightIs(60)
        imageTextSegment.reloadSegments()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
