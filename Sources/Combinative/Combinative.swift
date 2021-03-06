//
//  Combinative.swift
//  a
//
//  Created by noppe on 2019/06/27.
//  Copyright © 2019 noppelab. All rights reserved.
//

public protocol CombinativeCompatible {
  associatedtype CompatibleType
  var cmb: CompatibleType { get }
}

public final class Combinative<Base> {
  let base: Base
  init(_ base: Base) {
    self.base = base
  }
}

public extension CombinativeCompatible {
  var cmb: Combinative<Self> {
    return Combinative(self)
  }
}
