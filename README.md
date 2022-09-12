
## Features

- [x] Date extension (like ActiveRecord)
- [x] DateFormatter convenience
- [x] Array.each
- [x] Int / NSTimeInterval `.every`, a block based for NSTimer
- [x] UIColor helpers
- [x] UIView helpers
- [x] Various helpers
- [x] Easy localization

## Requirements

- iOS 7.0+ / Mac OS X 10.9+
- Xcode 6.1

## Installation

1. In Xcode, select `File > Add Packages`
2. Copy and paste the following into the search/input box:
`https://github.com/EmilioDelCastillo/SwiftHelpers.git`
3. Click `Add package`

---

## Usage

_Everything is documented, check it out_

### Common Init Views

#### UIView

You can subclass `SHCommonInitView` and override `commonInit()`. This function will be called not matter if the view was created programmaticaly like `SHCommonInitView()` or in Storyboard.
The same apply with `SHCommonInitTableViewCell` and `SHCommonInitCollectionViewCell`.

### NSDate comparison operators

```swift
import SwiftHelpers

let date1 = NSDate()
let date2 = date1.dateByAddingTimeInterval(10) // 10 seconds later

if date1 > date2 {
  println("date1 > date2")
}

if date1 < date2 {
  println("date1 < date2")
}

if date1 <= date2 {
  println("date1 <= date2")
}
....
```

## NSDate like ActiveRecord

```swift
import SwiftHelpers

let yesterday = 1.day.ago
let firstJanuary = 1.january
let inTwoDays = NSDate() + 2.days
let bornDate = 16.october.of(1986)
let nextBirthDay = bornDate.next
let tenSecondsLater = 10.seconds.fromNow
let laterOn = NSDate() + 1.month + 1.day + 10.seconds

each([1, 5]) { item in
  let number = item as Int
  ...
}

10.each { number in
  let nextNumber = number + 3
}
```

## Various helpers

```swift
let dateFormatter = NSDateFormatter(dateFormat: "d EEEE MMMM yyyy")
```

## Tests

You can run Unit Tests using Xcode default behavior.

## Contributors

- David Miotti (dmiotti@me.com)
- Guillaume Bellue (gbellue@gmail.com)
- Maxime de Chalendar (maxime.dechalandar@gmail.com)
