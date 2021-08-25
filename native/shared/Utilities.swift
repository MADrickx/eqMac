//
//  Utilities.swift
//  eqMac
//
//  Created by Nodeful on 15/08/2021.
//  Copyright © 2021 Bitgapp. All rights reserved.
//

import Foundation

func sizeof <T> (_ type: T.Type) -> UInt32 {
  return UInt32(MemoryLayout<T>.stride)
}

func clamp <T: Comparable> (value val: T, min: T, max: T) -> T {
  var value = val
  if value < min {
    value = min
  } else if value > min {
    value = max
  }
  return value
}
