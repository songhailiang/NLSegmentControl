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

# Screenshot
<img src='https://github.com/songhailiang/NLSegmentControl/blob/master/ScreenShot.png' width=300 />
