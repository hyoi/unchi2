//
//  AVCaptureVideoOrientation+Extension.swift
//  unchi2
//
//  Created by 渡邉輝 on 2020/08/18.
//  Copyright © 2020 michael. All rights reserved.
//

import AVFoundation
import UIKit

extension AVCaptureVideoOrientation {
    init(deviceOrientation: UIDeviceOrientation) {
        switch deviceOrientation {
        case .landscapeLeft:
            self = .landscapeLeft
        case .landscapeRight:
            self = .landscapeRight
        case .portrait:
            self = .portrait
        case .portraitUpsideDown:
            self = .portraitUpsideDown
        default:
            self = .portrait
        }
    }
}

