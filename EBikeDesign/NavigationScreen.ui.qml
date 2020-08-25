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
    id: navigationScreen
    width: Constants.width
    height: Constants.height
    property alias currentFrame: timeline.currentFrame

    property real __max_scale: 5.0
    property real __min_scale: 1.0
    property real __scale_step: 0.25

    property real __last_scale: 1.0
    property bool __tracking: false

    Item {
        x: 0
        y: 45
        width: 1280
        height: 755
        Flickable {
            id: draggableMap

            width: 1280
            height: 755
            anchors.fill: parent
            boundsBehavior: Flickable.StopAtBounds
            interactive: !__tracking
            contentX: 0
            contentY: 0

            signal newScale

            Image {
                id: map
                width: 1280
                height: 755
                source: "maps/map01.png"

                anchors.centerIn: parent

                NavigationItem {
                    id: pointer

                    anchors.fill: parent
                }
            }
        }
    }

    ColumnLayout {
        id: columnLayout
        x: 1217
        y: 99

        Rectangle {
            id: locateButton
            color: (__tracking ? "#59715a" : "#303030")
            radius: 24
            Layout.preferredHeight: 48
            Layout.preferredWidth: 48
            Image {
                x: -9
                y: -9
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "images/map_locate.png"
            }
            border.color: "#696969"

            MouseArea {
                id: locateArea
                anchors.fill: parent
            }
        }

        Rectangle {
            id: zoomOut
            color: "#303030"
            radius: 24
            Layout.preferredHeight: 48
            Layout.preferredWidth: 48
            Image {
                x: -9
                y: -9
                source: "images/map_zoomout.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            border.color: "#696969"

            MouseArea {
                id: zoomOutArea
                anchors.fill: parent
            }
        }

        Rectangle {
            id: zoomIn
            color: "#303030"
            radius: 24
            Layout.preferredHeight: 48
            Layout.preferredWidth: 48
            Image {
                x: -9
                y: -9
                source: "images/map_zoomin.png"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            border.color: "#696969"

            MouseArea {
                id: zoomInArea
                anchors.fill: parent
            }
        }
    }

    Timeline {
        id: timeline
        endFrame: 1000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: map
            property: "opacity"
            Keyframe {
                value: "0.6"
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }

        KeyframeGroup {
            target: pointer
            property: "opacity"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 845
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }

        KeyframeGroup {
            target: columnLayout
            property: "opacity"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 713
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }
    }

    Connections {
        target: zoomInArea
        onClicked: {
            (Backend.mapScaling < (__max_scale - __scale_step)) ? (Backend.mapScaling += __scale_step) : (Backend.mapScaling = __max_scale)
            draggableMap.newScale()
        }
    }

    Connections {
        target: zoomOutArea
        onClicked: {
            (Backend.mapScaling > (__min_scale + __scale_step)) ? (Backend.mapScaling -= __scale_step) : (Backend.mapScaling = __min_scale)
            draggableMap.newScale()
        }
    }

    Connections {
        target: locateArea
        onClicked: {
            var targetX = pointer.pointerX
            var targetY = pointer.pointerY

            __last_scale = map.scale
            Backend.mapScaling = (__max_scale - __min_scale) / 2
            map.scale = Backend.mapScaling
            draggableMap.contentWidth = map.width * Backend.mapScaling
            draggableMap.contentHeight = map.height * Backend.mapScaling

            targetX = targetX * Backend.mapScaling
            targetY = targetY * Backend.mapScaling

            draggableMap.contentX = targetX - (draggableMap.width / 2)
            draggableMap.contentY = targetY - (draggableMap.height / 2)

            if ((draggableMap.contentX + draggableMap.width) > draggableMap.contentWidth)
                draggableMap.contentX = draggableMap.contentWidth - draggableMap.width
            if ((draggableMap.contentY + draggableMap.height) > draggableMap.contentHeight)
                draggableMap.contentY = draggableMap.contentHeight - draggableMap.height
            if (draggableMap.contentX < 0)
                draggableMap.contentX = 0
            if (draggableMap.contentY < 0)
                draggableMap.contentY = 0
        }
    }

    Connections {
        target: locateArea
        onDoubleClicked: {
            __tracking = !__tracking
        }
    }

    Connections {
        target: draggableMap
        onNewScale: {
            __last_scale = map.scale
            map.scale = Backend.mapScaling
            draggableMap.contentWidth = map.width * Backend.mapScaling
            draggableMap.contentHeight = map.height * Backend.mapScaling

            var oldCenter = Qt.point(
                        draggableMap.contentX + (draggableMap.width / 2),
                        draggableMap.contentY + (draggableMap.height / 2))
            var originCenter = Qt.point(oldCenter.x / __last_scale,
                                        oldCenter.y / __last_scale)
            var translatedCenter = Qt.point(
                        originCenter.x * Backend.mapScaling,
                        originCenter.y * Backend.mapScaling)
            var newCorner = Qt.point(
                        translatedCenter.x - (draggableMap.width / 2),
                        translatedCenter.y - (draggableMap.height / 2))

            draggableMap.contentX = newCorner.x
            draggableMap.contentY = newCorner.y

            if ((draggableMap.contentX + draggableMap.width) > draggableMap.contentWidth)
                draggableMap.contentX = draggableMap.contentWidth - draggableMap.width
            if ((draggableMap.contentY + draggableMap.height) > draggableMap.contentHeight)
                draggableMap.contentY = draggableMap.contentHeight - draggableMap.height
            if (draggableMap.contentX < 0)
                draggableMap.contentX = 0
            if (draggableMap.contentY < 0)
                draggableMap.contentY = 0
        }
    }

    Connections {
        target: pointer
        onPointerXChanged: {
            if (!__tracking) return

            var targetX = pointer.pointerX
            var targetY = pointer.pointerY

            __last_scale = map.scale
            map.scale = Backend.mapScaling
            draggableMap.contentWidth = map.width * Backend.mapScaling
            draggableMap.contentHeight = map.height * Backend.mapScaling

            targetX = targetX * Backend.mapScaling
            targetY = targetY * Backend.mapScaling

            draggableMap.contentX = targetX - (draggableMap.width / 2)
            draggableMap.contentY = targetY - (draggableMap.height / 2)

            if ((draggableMap.contentX + draggableMap.width) > draggableMap.contentWidth)
                draggableMap.contentX = draggableMap.contentWidth - draggableMap.width
            if ((draggableMap.contentY + draggableMap.height) > draggableMap.contentHeight)
                draggableMap.contentY = draggableMap.contentHeight - draggableMap.height
            if (draggableMap.contentX < 0)
                draggableMap.contentX = 0
            if (draggableMap.contentY < 0)
                draggableMap.contentY = 0
        }
    }

    Connections {
        target: Backend
        onReset: {
            pointer.timelineAnim.restart()
            __tracking = false
            draggableMap.newScale()
        }
    }
}
