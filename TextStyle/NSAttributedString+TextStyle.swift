//
//  NSAttributedString+TextStyle.swift
//  TextStyle
//
//  Copyright © 2016 aleksey chernish. All rights reserved.
//

import UIKit

public func +(left: NSAttributedString, right: NSAttributedString) -> NSAttributedString {
  let result = NSMutableAttributedString(attributedString: left)
  result.append(right)
  
  return result.copy() as! NSAttributedString
}

extension NSAttributedString {
  
  public func applyStyle(_ style: TextStyle, toOccurencesOf substring: String) -> NSAttributedString {
    guard let range = rangeOf(substring) else { return self }

    let head = attributedSubstring(from: NSRange.init(location: 0, length: range.location))
    let foundString = attributedSubstring(from: range)
    let rest = attributedSubstring(from: NSMakeRange(range.length + range.location, self.length - (range.length + range.location)))
    
    return head + foundString.string.withStyle(style) + rest.applyStyle(style, toOccurencesOf: substring)
  }
  
  public func applyStyle(_ style: TextStyle, in range: NSRange?) -> NSAttributedString {
    guard let range = range else { return self }
    let head = attributedSubstring(from: NSMakeRange(0, range.location))
    let substringInRange = attributedSubstring(from: range)
    let rest = attributedSubstring(from: NSMakeRange(range.length + range.location, self.length - (range.length + range.location)))
    
    return head + substringInRange.string.withStyle(style) + rest
  }
  
  func rangeOf(_ string: String) -> NSRange? {
    let aString = self.string as NSString
    let range = aString.range(of: string)
    
    return range.location == NSNotFound ? nil : range
  }
  
}
