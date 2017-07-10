NLSegmentControl
===

A drop-in replacement for UISegmentControl.  Written in swift 3.0. It's heavily inspired by [HMSegmentedControl](https://github.com/HeshamMegid/HMSegmentedControl)

# Features

- Support both text, images and text + image (easy to set image position: left, right, top, bottom)
- Based on protocol, support custom data model as the data source
- Support horizontal scrolling
- Support advanced title styling with text attributes for font, color, kerning, shadow, etc.
- Support selection indicator both on top and bottom, and box indicator
- Support blocks
- Works with ARC and iOS >= 8

<img src='https://github.com/songhailiang/NLSegmentControl/blob/master/ScreenShot.png' width=300 />

# Usage

Just like the code below
```objc
let segment = NLSegmentControl(frame: CGRect(x: 0, y: 80, width: UIScreen.main.bounds.width, height: 40))
segment.segments = ["One Day", "Two", "Three", "Four dogs", "Five fingers", "Six trees", "Seven", "Eight", "Nine", "Ten"]
segment.indexChangedHandler = {
            (index) in
            print("index changed: \(index)")
        }
self.view.addSubview(segment)
segment.reloadSegments()
```
See more in the demo project.

# Example
- **text only**: 
```objc
segment.segments = ["Trending", "News", "Library"]
```

- **image only**: 
```objc
segment.segments = [UIImage(named: "baby")!,UIImage(named: "bag")!,UIImage(named: "diamond")!]
```
if you want to set the selected image for the selected segment, try this:
```objc
let item1 = NLSegmentItem(image: UIImage(named: "baby"), selectedImage: UIImage(named: "baby_s"))
let item2 = NLSegmentItem(image: UIImage(named: "bag"), selectedImage: UIImage(named: "bag_s"))
let item3 = NLSegmentItem(image: UIImage(named: "diamond"), selectedImage:UIImage(named: "diamond_s"))
segment.segments = [item1, item2, item3]
```

- **text and image**: 

1.use NLSegmentItem struct
Note: ```title```, ```image```, ```selectedImage``` are all optional
```objc
let item1 = NLUISegmentItem(title: "Baby", image: UIImage(named: "baby"), selectedImage: UIImage(named: "baby_s"))
let item2 = NLUISegmentItem(title: "Bag", image: UIImage(named: "bag"), selectedImage: UIImage(named: "bag_s"))
let item3 = NLUISegmentItem(title: "Diamond", image: UIImage(named: "diamond"), selectedImage: UIImage(named: "diamond_s"))
segment.segments = [item1, item2, item3]
```

2.use your own data model, just make it implements ```NLSegment``` protocol.
```objc
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
let item1 = Category(title: "Baby", image: "baby", selectedImage: "baby_s")
let item2 = Category(title: "Bag", image: "bag", selectedImage: "bag_s")
let item3 = Category(title: "Diamond", image: "diamond", selectedImage: "diamond_s")
segment.segments = [item1, item2, item3]
```

# Custom properties

- segment width style
  * ```fixed```: Each segment has equal width, equal to the widest segment.
  * ```dynamic```: Each segment has different width, depends on it's content.
  * ```equal(width)```: Each segment has equal width, equal to the width param.

- selection indicator
  * ```selectionIndicatorStyle```: style of the selection indicator, support ```textWidthStripe```, ```fullWidthStripe```, ```box```
  * ```selectionIndicatorHeight```: Height of the selection indicator
  * ```selectionIndicatorEdgeInset```: Edge insets of the selection indicator
  * ```selectionIndicatorColor```: Color of the selection indicator
  * ```selectionIndicatorPosition```: Position of the selection indicator, support ```top```, ```bottom```, ```none```
  * ```selectionBoxColor```: Color of selection box
  
- font & color
  * ```titleTextAttributes```: Text attributes to apply to labels of the unselected segments
  * ```selectedTitleTextAttributes```: Text attributes to apply to labels of the selected segments

- vertical divider
  * ```enableVerticalDivider```: enable vertical divider between the segments
  * ```verticalDividerColor```: Color of vertical divider
  * ```verticalDividerWidth```: Width of vertical divider
  * ```verticalDividerInset```: Inset top and bottom of vertical divider

- image and text 
  * ```imagePosition```: image position relative to text
  * ```imageTitleSpace```: space between image and title

