/*
 Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import XCTest
import MaterialComponents.MaterialNavigationBar
import MaterialComponents.MDCNavigationBarColorThemer

class NavigationBarColorThemerTests: XCTestCase {

  func testColorThemerChangesTheCorrectParameters() {
    // Given
    let colorScheme = MDCSemanticColorScheme()
    let navigationBar = MDCNavigationBar()
    colorScheme.primaryColor = .red
    colorScheme.onPrimaryColor = .blue
    navigationBar.backgroundColor = .white
    navigationBar.titleTextColor = .white
    navigationBar.tintColor = .white

    // When
    MDCNavigationBarColorThemer.applySemanticColorScheme(colorScheme, to: navigationBar)

    // Then
    XCTAssertEqual(navigationBar.backgroundColor, colorScheme.primaryColor)
    XCTAssertEqual(navigationBar.titleTextColor, colorScheme.onPrimaryColor)
    XCTAssertEqual(navigationBar.tintColor, colorScheme.onPrimaryColor)
  }
}
