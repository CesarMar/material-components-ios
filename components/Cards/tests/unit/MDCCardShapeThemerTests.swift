// Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import XCTest
import MaterialComponents.MaterialCards
import MaterialComponents.MaterialCards_ShapeThemer
import MaterialComponents.MaterialShapeLibrary

class CardShapeThemerTests: XCTestCase {

  func testCardShapeThemer() {
    // Given
    let shapeScheme = MDCShapeScheme()
    let card = MDCCard()
    shapeScheme.mediumSurfaceShape = MDCShapeCategory(cornersWith: .angled, andSize: 10)
    shapeScheme.mediumSurfaceShape.topRightCorner = MDCCornerTreatment.corner(withRadius: 3)
    card.shapeGenerator = MDCRectangleShapeGenerator()

    // When
    MDCCardsShapeThemer.applyShapeScheme(shapeScheme, to: card)

    // Then
    XCTAssert(card.shapeGenerator is MDCRectangleShapeGenerator);
    XCTAssertEqual((card.shapeGenerator as! MDCRectangleShapeGenerator).topLeftCorner,
                   shapeScheme.mediumSurfaceShape.topLeftCorner)
    XCTAssertEqual((card.shapeGenerator as! MDCRectangleShapeGenerator).topRightCorner,
                   shapeScheme.mediumSurfaceShape.topRightCorner)
    XCTAssertEqual((card.shapeGenerator as! MDCRectangleShapeGenerator).bottomLeftCorner,
                   shapeScheme.mediumSurfaceShape.bottomLeftCorner)
    XCTAssertEqual((card.shapeGenerator as! MDCRectangleShapeGenerator).bottomRightCorner,
                   shapeScheme.mediumSurfaceShape.bottomRightCorner)
  }

  func testCardCollectionCellShapeThemer() {
    // Given
    let shapeScheme = MDCShapeScheme()
    let cardCell = MDCCardCollectionCell()
    shapeScheme.mediumSurfaceShape = MDCShapeCategory(cornersWith: .angled, andSize: 10)
    cardCell.shapeGenerator = MDCRectangleShapeGenerator()

    // When
    MDCCardsShapeThemer.applyShapeScheme(shapeScheme, toCardCell: cardCell)

    // Then
    XCTAssert(cardCell.shapeGenerator is MDCRectangleShapeGenerator);
    XCTAssertEqual((cardCell.shapeGenerator as! MDCRectangleShapeGenerator).topLeftCorner,
                   shapeScheme.mediumSurfaceShape.topLeftCorner)
    XCTAssertEqual((cardCell.shapeGenerator as! MDCRectangleShapeGenerator).topRightCorner,
                   shapeScheme.mediumSurfaceShape.topRightCorner)
    XCTAssertEqual((cardCell.shapeGenerator as! MDCRectangleShapeGenerator).bottomLeftCorner,
                   shapeScheme.mediumSurfaceShape.bottomLeftCorner)
    XCTAssertEqual((cardCell.shapeGenerator as! MDCRectangleShapeGenerator).bottomRightCorner,
                   shapeScheme.mediumSurfaceShape.bottomRightCorner)
  }
}
