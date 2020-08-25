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

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height

    color: "#1a1e25"
    state: "Standard"

    Item {
        id: screenCanvas
        width: Constants.width * 3
        height: Constants.height
        x: -Constants.width

        TripScreen {
            id: tripScreen
            currentFrame: 0
            opacity: 0
        }

        Item {
            id: standardScreen
            width: Constants.width
            x: Constants.width
            height: Constants.height

            Light {
                id: image
                x: 123
                y: 625
            }

            Item {
                id: navigate
                x: 892
                y: 107
                width: 200
                height: 200

                CustomLabel {
                    x: 46
                    y: 111
                    color: "#9d9d9d"
                    text: qsTr("NAVIGATE")
                    font.letterSpacing: 1
                    font.pixelSize: 32
                }

                Image {
                    x: 59
                    y: 41
                    source: "images/nav_nodir.png"
                }
            }

            ModeToggle {
                id: cruise
                x: 892
                y: 562
            }

            Item {
                id: trips
                x: 106
                y: 107
                width: 131
                height: 173

                Image {
                    id: image1
                    x: -2
                    y: 17
                    source: "images/trip.png"
                }

                Image {
                    id: image2
                    x: -2
                    y: 88
                    source: "images/calories.png"
                }

                CustomLabel {
                    x: 46
                    y: 8
                    color: "#fdfdfd"
                    text: (Backend.metricSystem ? "139.8" : "86.9")
                    font.letterSpacing: 1
                    font.pixelSize: 26
                }

                CustomLabel {
                    x: 46
                    y: 83
                    color: "#fdfdfd"
                    text: qsTr("2699")
                    font.letterSpacing: 1
                    font.pixelSize: 26
                }

                CustomLabel {
                    x: 46
                    y: 40
                    color: "#9d9d9d"
                    text: (Backend.metricSystem ? "km" : "mi.")
                    font.letterSpacing: 1
                    font.pixelSize: 18
                }

                CustomLabel {
                    x: 46
                    y: 115
                    color: "#9d9d9d"
                    text: qsTr("kcal")
                    font.letterSpacing: 1
                    font.pixelSize: 18
                }
            }

            MouseArea {
                id: rightClickArea
                x: 852
                y: 62
                width: 243
                height: 242
            }

            MouseArea {
                id: leftClickArea
                x: -39
                y: 26
                width: 373
                height: 299
            }
        }

        NavigationScreen {
            id: navigationScreen
            x: Constants.width * 2
        }
    }

    Foreground {
        id: foreground
        currentFrame: 0
    }

    Connections {
        target: leftClickArea
        onClicked: {
            root.state = "StandardToTrip"
        }
    }

    Connections {
        target: rightClickArea
        onClicked: {
            root.state = "StandardToNavigation"
        }
    }

    Connections {
        target: foreground
        onClicked: {
            if (state === "Trip")
                root.state = "TripToStandard"
            else if (state === "Navigation")
                root.state = "NavigationToStandard"
            else if (state === "Standard")
                root.state = "ToBig"
            else if (state === "Big")
                root.state = "FromBig"
        }
    }

    SettingsBar {
        id: settings
        x: 0
        y: 0
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: standardToTripAnimation
                onFinished: root.state = "Trip"
                loops: 1
                duration: 350
                from: 3000
                to: 4000
                running: false
            },
            TimelineAnimation {
                id: standardToNavigationAnimation
                onFinished: root.state = "Navigation"
                loops: 1
                duration: 350
                from: 1000
                to: 2000
                running: false
            },
            TimelineAnimation {
                id: navigationToStandardAnimation
                onFinished: root.state = "Standard"
                loops: 1
                duration: 350
                from: 2000
                to: 3000
                running: false
            },
            TimelineAnimation {
                id: tripToStandardAnimation
                onFinished: root.state = "Standard"
                loops: 1
                duration: 350
                from: 0
                to: 1000
                running: false
            },
            TimelineAnimation {
                id: fromBigAnimation
                onFinished: root.state = "Standard"
                loops: 1
                duration: 250
                from: 5000
                to: 4100
                running: false
            },
            TimelineAnimation {
                id: toBigAnimation
                onFinished: root.state = "Big"
                loops: 1
                duration: 250
                from: 4100
                to: 5000
                running: false
            }
        ]
        endFrame: 5000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: screenCanvas
            property: "x"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -2560
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 4100
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 5000
            }
        }

        KeyframeGroup {
            target: standardScreen
            property: "scale"

            Keyframe {
                value: 0.8
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 1003
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 4100
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 5000
            }
        }

        KeyframeGroup {
            target: tripScreen
            property: "scale"

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 4000
            }
        }

        KeyframeGroup {
            target: navigationScreen
            property: "scale"

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 3000
            }
        }

        KeyframeGroup {
            target: tripScreen
            property: "opacity"
            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 4000
            }

            Keyframe {
                value: 0
                frame: 4100
            }

            Keyframe {
                value: "0"
                frame: 4050
            }
        }

        KeyframeGroup {
            target: standardScreen
            property: "opacity"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 4100
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 5000
            }
        }

        KeyframeGroup {
            target: navigationScreen
            property: "opacity"
            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 3000
            }
        }

        KeyframeGroup {
            target: foreground
            property: "currentFrame"
            Keyframe {
                value: 1000
                frame: 0
            }

            Keyframe {
                value: "2000"
                frame: 1000
            }

            Keyframe {
                value: "1000"
                frame: 2000
            }

            Keyframe {
                value: 0
                frame: 1001
            }

            Keyframe {
                value: "2000"
                frame: 3000
            }

            Keyframe {
                value: 0
                frame: 3001
            }

            Keyframe {
                value: 1000
                frame: 4000
            }

            Keyframe {
                value: "2000"
                frame: 4100
            }

            Keyframe {
                value: "2000"
                frame: 4102
            }

            Keyframe {
                value: "2500"
                frame: 5000
            }

            Keyframe {
                value: "2000"
                frame: 4043
            }
        }

        KeyframeGroup {
            target: tripScreen
            property: "currentFrame"

            Keyframe {
                value: 1000
                frame: 0
            }

            Keyframe {
                value: "0"
                frame: 965
            }

            Keyframe {
                value: "0"
                frame: 3000
            }

            Keyframe {
                value: 1000
                frame: 4000
            }

            Keyframe {
                value: 0
                frame: 3322
            }

            Keyframe {
                value: "1000"
                frame: 551
            }
        }

        KeyframeGroup {
            target: trips
            property: "x"
            Keyframe {
                value: 106
                frame: 4101
            }

            Keyframe {
                value: -164
                frame: 5000
            }
        }

        KeyframeGroup {
            target: trips
            property: "y"
            Keyframe {
                value: 107
                frame: 4101
            }

            Keyframe {
                value: -187
                frame: 5000
            }
        }

        KeyframeGroup {
            target: trips
            property: "opacity"
            Keyframe {
                value: 1
                frame: 4101
            }

            Keyframe {
                value: 0
                frame: 5000
            }
        }

        KeyframeGroup {
            target: navigate
            property: "x"
            Keyframe {
                value: 892
                frame: 4101
            }

            Keyframe {
                value: 1271
                frame: 5000
            }
        }

        KeyframeGroup {
            target: navigate
            property: "y"
            Keyframe {
                value: 107
                frame: 4101
            }

            Keyframe {
                value: -109
                frame: 5000
            }
        }

        KeyframeGroup {
            target: navigate
            property: "opacity"
            Keyframe {
                value: 1
                frame: 4101
            }

            Keyframe {
                value: 0
                frame: 5000
            }
        }

        KeyframeGroup {
            target: cruise
            property: "x"
            Keyframe {
                value: 892
                frame: 4101
            }

            Keyframe {
                value: 1266
                frame: 5000
            }
        }

        KeyframeGroup {
            target: cruise
            property: "y"
            Keyframe {
                value: 562
                frame: 4101
            }

            Keyframe {
                value: 842
                frame: 5000
            }
        }

        KeyframeGroup {
            target: cruise
            property: "opacity"
            Keyframe {
                value: 1
                frame: 4101
            }

            Keyframe {
                value: 0
                frame: 5000
            }
        }

        KeyframeGroup {
            target: image
            property: "x"
            Keyframe {
                value: 123
                frame: 4101
            }

            Keyframe {
                value: -150
                frame: 5000
            }
        }

        KeyframeGroup {
            target: image
            property: "y"
            Keyframe {
                value: 625
                frame: 4101
            }

            Keyframe {
                value: 830
                frame: 5000
            }
        }

        KeyframeGroup {
            target: image
            property: "opacity"
            Keyframe {
                value: 1
                frame: 4101
            }

            Keyframe {
                value: 0
                frame: 5000
            }
        }

        KeyframeGroup {
            target: navigationScreen
            property: "currentFrame"
            Keyframe {
                value: 0
                frame: 1000
            }

            Keyframe {
                value: 1000
                frame: 2000
            }
        }
    }

    states: [
        State {
            name: "Trip"

            PropertyChanges {
                target: timeline
                currentFrame: 0
                enabled: true
            }
        },
        State {
            name: "Standard"

            PropertyChanges {
                target: timeline
                currentFrame: 1000
                enabled: true
            }
        },
        State {
            name: "Navigation"

            PropertyChanges {
                target: timeline
                currentFrame: 2000
                enabled: true
            }
        },
        State {
            name: "TripToStandard"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: standardToTripAnimation
                running: false
            }

            PropertyChanges {}

            PropertyChanges {
                target: tripToStandardAnimation
                running: true
            }
        },
        State {
            name: "StandardToNavigation"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: standardToNavigationAnimation
                running: true
            }
        },
        State {
            name: "NavigationToStandard"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: navigationToStandardAnimation
                running: true
            }
        },
        State {
            name: "StandardToTrip"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: standardToTripAnimation
                running: true
            }
        },
        State {
            name: "Big"

            PropertyChanges {}

            PropertyChanges {
                target: timeline
                currentFrame: 5000
                enabled: true
            }
        },
        State {
            name: "ToBig"

            PropertyChanges {
                target: timeline
                currentFrame: 4100
                enabled: true
            }

            PropertyChanges {
                target: toBigAnimation
                running: true
            }
        },
        State {
            name: "FromBig"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: timeline
                currentFrame: 5000
                enabled: true
            }

            PropertyChanges {
                target: fromBigAnimation
                running: true
            }
        }
    ]
}

