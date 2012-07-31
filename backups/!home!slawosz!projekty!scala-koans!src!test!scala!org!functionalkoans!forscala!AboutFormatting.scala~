package org.functionalkoans.forscala

import org.scalatest.matchers.ShouldMatchers
import support.KoanSuite

class AboutFormatting extends KoanSuite with ShouldMatchers {

  koan("Character Literals can be an a single character") {
    val a = 'a'
    val b = 'B'
   

    //format(a) is a string format, meaning the "%c".format(x)
    //will return the string representation of the char.

    "%c".format(a) should be(__)
    "%c".format(b) should be(__)
    
  }

koan("Character Literals can be an escape sequence, including octal or hexidecimal") {

    val c = '\u0061' //unicode for a
    val d = '\141' //octal for a
    val e = '\"'
    val f = '\\'


    "%c".format(c) should be(__)
    "%c".format(d) should be(__)
    "%c".format(e) should be(__)
    "%c".format(f) should be(__)
  }

}