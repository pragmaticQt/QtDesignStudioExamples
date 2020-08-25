/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Design Studio.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.10
import ebikeDesign 1.0
import EbikeData 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: root
    width: Constants.width
    height: Constants.height
    property alias currentFrame: timeline.currentFrame
    property alias timelineItem: timeline
    property alias timelineAnim: route

    property alias pointerX: pointer.x
    property alias pointerY: pointer.y

    Item {
        id: pointer
        x: 560
        y: 338

        Image {
            id: circle
            source: "images/blue_circle_gps_area.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "images/map_location_arrow.png"
            }
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: route
                to: 20000
                duration: 200000
                running: true
                loops: -1
                from: 0
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 20000

        KeyframeGroup {
            target: pointer
            property: "x"
            Keyframe {
                value: 607
                frame: 0
            }

            Keyframe {
                value: 480
                frame: 2800
            }

            Keyframe {
                value: 475
                frame: 3100
            }

            Keyframe {
                value: 452
                frame: 6000
            }

            Keyframe {
                value: 438
                frame: 7000
            }

            Keyframe {
                value: 399
                frame: 9000
            }

            Keyframe {
                value: 405
                frame: 9500
            }

            Keyframe {
                value: 471
                frame: 11000
            }

            Keyframe {
                value: 479
                frame: 11500
            }

            Keyframe {
                value: 484
                frame: 12500
            }

            Keyframe {
                value: 496
                frame: 13000
            }

            Keyframe {
                value: 533
                frame: 14500
            }

            Keyframe {
                value: 607
                frame: 20000
            }
        }

        KeyframeGroup {
            target: pointer
            property: "y"

            Keyframe {
                value: 382
                frame: 0
            }

            Keyframe {
                value: 342
                frame: 2800
            }

            Keyframe {
                value: 346
                frame: 3100
            }

            Keyframe {
                value: 500
                frame: 6000
            }

            Keyframe {
                value: 547
                frame: 7000
            }

            Keyframe {
                value: 623
                frame: 9000
            }

            Keyframe {
                value: 633
                frame: 9500
            }

            Keyframe {
                value: 647
                frame: 11000
            }

            Keyframe {
                value: 642
                frame: 11500
            }

            Keyframe {
                value: 614
                frame: 12500
            }

            Keyframe {
                value: 604
                frame: 13000
            }

            Keyframe {
                value: 612
                frame: 14500
            }

            Keyframe {
                value: 382
                frame: 20000
            }
        }

        KeyframeGroup {
            target: pointer
            property: "rotation"
            Keyframe {
                value: 288
                frame: 0
            }

            Keyframe {
                value: 288
                frame: 2800
            }

            Keyframe {
                value: 190
                frame: 3100
            }

            Keyframe {
                value: 185
                frame: 6000
            }

            Keyframe {
                value: 195
                frame: 7000
            }

            Keyframe {
                value: 200
                frame: 7300
            }

            Keyframe {
                value: 210
                frame: 9000
            }

            Keyframe {
                value: 115
                frame: 9500
            }

            Keyframe {
                value: 100
                frame: 9700
            }

            Keyframe {
                value: 90
                frame: 11000
            }

            Keyframe {
                value: 10
                frame: 11500
            }

            Keyframe {
                value: 50
                frame: 12500
            }

            Keyframe {
                value: 100
                frame: 13000
            }

            Keyframe {
                value: 95
                frame: 14100
            }

            Keyframe {
                value: 20
                frame: 14500
            }

            Keyframe {
                value: 18
                frame: 19700
            }
            Keyframe {
                value: -72
                frame: 20000
            }
        }
    }
}

