
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
import QtQuick 2.4
import CoffeeMachine 1.0
import QtQuick.Timeline 1.0

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    property alias choosingCoffee: choosingCoffee
    property alias brewing: brewing
    property alias emptyCup: emptyCup

    color: Constants.backgroundColor

    state: intital

    EmptyCupForm {
        id: emptyCup
        x: 1024
        y: 0
    }

    Brewing {
        id: brewing
        x: 2048
        y: 0
    }

    ChoosingCoffee {
        id: choosingCoffee
        x: -366
        y: 0
    }

    Timeline {
        id: timeline

        enabled: true

        animations: [
            TimelineAnimation {
                id: toSettingsAnimation
                onFinished: root.state = "settings"
                loops: 1
                running: false
                to: 400
                duration: 300
                from: 200
            },
            TimelineAnimation {
                id: toEmptyCubAnimation
                onFinished: root.state = "empty cup"
                loops: 1
                running: false
                to: 600
                duration: 300
                from: 400
            },
            TimelineAnimation {
                id: toBrewingAnimation
                onFinished: root.state = "to brewing"
                loops: 1
                running: false
                to: 800
                duration: 300
                from: 600
            },
            TimelineAnimation {
                id: backToSelection
                onFinished: root.state = "selection"
                loops: 1
                running: false
                to: 200
                duration: 300
                from: 400
            },
            TimelineAnimation {
                id: resetAnimation
                onFinished: root.state = "initial"
                loops: 1
                running: false
                to: 1200
                duration: 600
                from: 800
            }
        ]
        startFrame: 0
        endFrame: 2000

        KeyframeGroup {
            target: emptyCup
            property: "x"
            Keyframe {
                value: 1024
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 1024
                frame: 199
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 0
                frame: 600
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 1024
                frame: 399
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: -1024
                frame: 800
            }

            Keyframe {
                value: -1024
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 0
                frame: 1001
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 1390
                frame: 1200
            }
        }

        KeyframeGroup {
            target: brewing
            property: "x"
            Keyframe {
                value: 2048
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 2048
                frame: 199
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 1024
                frame: 599
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 2048
                frame: 399
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 0
                frame: 799
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 0
                frame: 999
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 1390
                frame: 1199
            }
        }

        KeyframeGroup {
            target: choosingCoffee
            property: "x"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 0
                frame: 199
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: -366
                frame: 399
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: -1390
                frame: 599
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: -2414
                frame: 799
            }

            Keyframe {
                value: -2414
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: -1390
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.47, 0, 0.745, 0.715, 1, 1]
                value: 0
                frame: 1199
            }
        }
    }

    states: [
        State {
            name: "initial"

            PropertyChanges {
                target: timeline
                currentFrame: 0
                enabled: true
            }

            PropertyChanges {
                target: choosingCoffee
                inSettings: false
                selected: false
            }
        },
        State {
            name: "selection"

            PropertyChanges {
                target: timeline
                currentFrame: 200
                enabled: true
            }

            PropertyChanges {
                target: choosingCoffee
                selected: true
            }
        },
        State {
            name: "back to selection"

            PropertyChanges {
                target: backToSelection
                running: true
            }

            PropertyChanges {
                target: choosingCoffee
                selected: true
            }
        },
        State {
            name: "to settings"

            PropertyChanges {
                target: toSettingsAnimation
                running: true
            }

            PropertyChanges {
                target: choosingCoffee
                selected: false
                inSettings: true
            }
        },
        State {
            name: "settings"

            PropertyChanges {
                target: timeline
                currentFrame: 400
                enabled: true
            }

            PropertyChanges {
                target: choosingCoffee
                selected: false
                inSettings: true
            }
        },
        State {
            name: "to empty cup"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: toSettingsAnimation
                running: false
            }

            PropertyChanges {
                target: toEmptyCubAnimation
                running: true
            }
        },
        State {
            name: "empty cup"

            PropertyChanges {
                target: timeline
                currentFrame: 600
                enabled: true
            }
        },
        State {
            name: "to brewing"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: toSettingsAnimation
                running: false
            }

            PropertyChanges {
                target: toBrewingAnimation
                running: true
            }
        },
        State {
            name: "reset"

            PropertyChanges {
            }

            PropertyChanges {
                target: resetAnimation
                running: true
            }
        },
        State {
            name: "finished"
        }
    ]
}


