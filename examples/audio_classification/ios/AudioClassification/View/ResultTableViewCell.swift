// Copyright 2024 The Google AI Edge Authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// =============================================================================

import UIKit
import TensorFlowLiteTaskAudio

/// TableViewCell to display the inference results. Each cell corresponds to a single category.
class ResultTableViewCell: UITableViewCell {

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var scoreWidthLayoutConstraint: NSLayoutConstraint!

  func setData(_ data: ClassificationCategory) {
    nameLabel.text = data.label
    if !data.score.isNaN {
      // score view width is equal 1/4 screen with
      scoreWidthLayoutConstraint.constant = UIScreen.main.bounds.width/4*CGFloat(data.score)
    } else {
      scoreWidthLayoutConstraint.constant = 0
    }
  }
}
