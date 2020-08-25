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
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: root
    width: 200
    height: 200

    state: "Sport"

    CustomLabel {
        id: customLabel
        x: 68
        y: 65
        color: "#61d140"
        text: qsTr("CRUISE")
        font.letterSpacing: 1
        font.pixelSize: 32
    }

    CustomLabel {
        id: customLabel1
        x: 72
        y: 106
        color: "#9d9d9d"
        text: qsTr("SPORT")
        font.letterSpacing: 1
        font.pixelSize: 32
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: sportToCruiseAnim
                onFinished: root.state = "Cruise"
                from: 0
                loops: 1
                duration: 500
                to: 500
                running: false
            },
            TimelineAnimation {
                id: cruiseToSportAnim
                onFinished: root.state = "Sport"
                from: 500
                loops: 1
                duration: 500
                to: 1000
                running: false
            }
        ]
        endFrame: 1000
        startFrame: 0
        enabled: true

        KeyframeGroup {
            target: customLabel
            property: "color"
            Keyframe {
                value: "#61d140"
                frame: 0
            }

            Keyframe {
                value: "#61d140"
                frame: 1000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 500
            }
        }

        KeyframeGroup {
            target: customLabel
            property: "x"
            Keyframe {
                value: 68
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1000
            }
        }

        KeyframeGroup {
            target: customLabel1
            property: "x"
            Keyframe {
                value: 72
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 72
                frame: 500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 72
                frame: 1000
            }
        }

        KeyframeGroup {
            target: customLabel1
            property: "color"
            Keyframe {
                value: "#9d9d9d"
                frame: 0
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 1000
            }

            Keyframe {
                value: "#61d140"
                frame: 500
            }
        }

        KeyframeGroup {
            target: customLabel
            property: "opacity"

            Keyframe {
                value: 0
                frame: 250
            }

            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 500
            }

            Keyframe {
                value: 0
                frame: 750
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }

        KeyframeGroup {
            target: customLabel1
            property: "opacity"

            Keyframe {
                value: 0
                frame: 250
            }

            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 500
            }

            Keyframe {
                value: 0
                frame: 750
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }
    }

    Connections {
        target: mouseArea
        onClicked: {
            if (root.state === "Sport")
                root.state = "Sport2Cruise"
            else if (root.state === "Cruise")
                root.state = "Cruise2Sport"
        }
    }
    states: [
        State {
            name: "Sport"

            PropertyChanges {
                target: timeline
                currentFrame: 500
                enabled: true
            }
        },
        State {
            name: "Cruise2Sport"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: cruiseToSportAnim
                running: true
            }
        },
        State {
            name: "Cruise"

            PropertyChanges {
                target: timeline
                currentFrame: 0
                enabled: true
            }

            PropertyChanges {
                target: sportToCruiseAnim
            }

            PropertyChanges {
            }

            PropertyChanges {
            }
        },
        State {
            name: "Sport2Cruise"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: sportToCruiseAnim
                running: true
            }
        }
    ]
}
