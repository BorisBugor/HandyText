//
//  ApplicationFonts.swift
//  TextStyleExample
//
//  Created by Aleksey on 04.07.16.
//  Copyright © 2016 Aleksey Chernish. All rights reserved.
//

import Foundation

extension Font {
  
  static var Avenir: Font {
    return Font(
      light: "Avenir-Light",
      lightItalic: "Avenir-LightOblique",
      regular: "Avenir",
      italic: "Avenir-Oblique",
      bold: "Avenir-Heavy",
      boldItalic: "Avenir-HeavyOblique")
  }
  
  static var Helvetica: Font {
    return Font(
      light: "Helvetica-Light",
      lightItalic: "Helvetica-LightOblique",
      regular: "Helvetica",
      italic: "Helvetica-Oblique",
      bold: "Helvetica-Bold",
      boldItalic: "Helvetica-BoldOblique")
  }
  
  static var Georgia: Font {
    return Font(
      regular: "Georgia",
      italic: "Georgia-Italic",
      bold: "Georgia-Bold",
      boldItalic: "Georgia-BoldItalic")
  }
  
}
