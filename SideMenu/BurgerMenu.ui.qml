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
import QtQuick.Studio.Components 1.0
import QtQuick 2.10
import QtQuick.Templates 2.1 as T
import QtQuick.Timeline 1.0
import SideMenu 1.0

T.Button {
    id: control
    width: 66
    height: 27

    font: Constants.font
    implicitWidth: Math.max(
                       background ? background.implicitWidth : 0,
                       contentItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(
                        background ? background.implicitHeight : 0,
                        contentItem.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4

    autoExclusive: false
    checkable: true

    Item {
        id: background
        width: 66
        height: 27

        RectangleItem {
            id: contentItem
            x: 0
            y: 0
            width: 65
            height: 6
            fillColor: "#c47941"
            bottomRightRadius: 2
            bottomLeftRadius: 2
            topRightRadius: 2
            topLeftRadius: 2
            strokeWidth: 0
            strokeColor: "#c47941"
        }

        RectangleItem {
            id: rectangle1
            x: 0
            y: 10
            width: 65
            height: 6
            topLeftRadius: 2
            topRightRadius: 2
            strokeWidth: 0
            strokeColor: "#c47941"
            fillColor: "#c47941"
            bottomLeftRadius: 2
            bottomRightRadius: 2
        }

        RectangleItem {
            id: rectangle2
            x: 0
            y: 21
            width: 65
            height: 6
            topLeftRadius: 2
            topRightRadius: 2
            strokeWidth: 0
            fillColor: "#c47941"
            strokeColor: "#c47941"
            bottomLeftRadius: 2
            bottomRightRadius: 2
        }
    }

    Connections {
        target: control
        onClicked: {
            control.state = "normal"
        }
    }

    states: [
        State {
            name: "checked"
            when: control.checked

            PropertyChanges {
                target: rectangle2
                fillColor: "#242121"
            }

            PropertyChanges {
                target: contentItem
                fillColor: "#242121"
            }

            PropertyChanges {
                target: rectangle1
                fillColor: "#242121"
            }
        },
        State {
            name: "hover"
            when: control.hovered && !control.checked && !control.pressed

            PropertyChanges {
                target: contentItem
                strokeStyle: -1
                fillColor: "#f59047"
            }

            PropertyChanges {
                target: rectangle1
                fillColor: "#f59047"
            }

            PropertyChanges {
                target: rectangle2
                fillColor: "#f59047"
            }
        },
        State {
            name: "normal"
            when: !control.pressed && !control.checked && !control.hovered
        },
        State {
            name: "pressed"
            when: control.pressed && !control.checked

            PropertyChanges {
                target: contentItem
                fillColor: "#f2a065"
            }

            PropertyChanges {
                target: rectangle1
                fillColor: "#f2a065"
            }

            PropertyChanges {
                target: rectangle2
                fillColor: "#f2a065"
            }
        }
    ]
}
