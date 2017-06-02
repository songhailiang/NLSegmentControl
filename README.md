NLSegmentControl
===

A drop-in replacement for UISegmentControl.  Written in swift 3.0. It's heavily inspired by [HMSegmentedControl](https://github.com/HeshamMegid/HMSegmentedControl)

# Features

- Support both text, images and text + image (easy to set image position: left, right, top, bottom)
- Support horizontal scrolling
- Support advanced title styling with text attributes for font, color, kerning, shadow, etc.
- Support selection indicator both on top and bottom, and box indicator
- Support blocks
- Works with ARC and iOS >= 8

# Usage

Just like the code below
```objc
let segment = NLSegmentControl(frame: CGRect(x: 0, y: 80, width: UIScreen.main.bounds.width, height: 40))
segment.titles = ["One Day", "Two", "Three", "Four dogs", "Five fingers", "Six trees", "Seven", "Eight", "Nine", "Ten"]
segment.indexChangedHandler = {
            (index) in
            print("index changed: \(index)")
        }
self.view.addSubview(segment)
segment.reloadSegments()
```
See more in the demo project.

- **text segment**: set ``` titles ``` property
```objc
segment.titles = ["Trending", "News", "Library"]
```

- **image segment**: set ``` images ``` property. You can also set ``` selectedImages ``` property to assign the image when segment is selected
```objc
segment.images = [UIImage(named: "baby"), UIImage(named: "bag"), UIImage(named: "diamond")]
segment.selectedImages = [UIImage(named: "baby_s"), UIImage(named: "bag_s"), UIImage(named: "diamond_s")] //This is not required
```

- **text and image segment**: both set ```titles``` and ```images``` properties.
It's not required to have same bounds for ```titles``` and ```images```.
It's easy to set the image position and the space between image and title.
```objc
segment.imagePosition = .left
segment.imageTitleSpace = 10
```
- **segment width style**
* ```fixed```: Each segment has equal width, equal to the widest segment.
* ```dynamic```: Each segment has different width, depends on it's content.
* ```equal(width)```: Each segment has equal width, equal to the width param.

- **selection indicator**

* ```selectionIndicatorStyle```: style of the selection indicator, support ```textWidthStripe```, ```fullWidthStripe```, ```box```
* ```selectionIndicatorHeight```: Height of the selection indicator
* ```selectionIndicatorEdgeInset```: Edge insets of the selection indicator
* ```selectionIndicatorColor```: Color of the selection indicator
* ```selectionIndicatorPosition```: Position of the selection indicator, support ```top```, ```bottom```, ```none```
* ```selectionBoxColor```: Color of selection box

- **vertical divider**

* ```enableVerticalDivider```: enable vertical divider between the segments
* ```verticalDividerColor```: Color of vertical divider
* ```verticalDividerWidth```: Width of vertical divider
* ```verticalDividerInset```: Inset top and bottom of vertical divider

# Screenshot
<img src='https://github.com/songhailiang/NLSegmentControl/blob/master/ScreenShot.png' width=300 />
