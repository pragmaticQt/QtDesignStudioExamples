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

pragma Singleton
import QtQuick 2.10

Item {
    id: backend

    property real speed: 34
    property real battery: 12

    property bool metricSystem: false
    readonly property real ratioMtoKM: 1.609
    property string speedString: Math.round(backend.metricSystem ? (backend.speed * backend.ratioMtoKM) : backend.speed)

    property real brightness: 0
    property bool showFPS: false

    property real mapScaling: 1.0

    signal reset

    property int seconds: 0
    property int minutes: 0
    property int hours: 0
    property string time: ""
    property date __currentTime: new Date()

    function resetSettings() {
        backend.metricSystem = false
        backend.brightness = 0
        backend.showFPS = false
    }

    function resetAll() {
        resetSettings()

        backend.speed = 10
        backend.battery = 50
        backend.mapScaling = 1.0

        __anim01.restart()
        __anim02.restart()
        __currentTime = new Date();

        reset()
    }

    Component.onCompleted: { __timeUpdate() }

    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            backend.__currentTime = new Date()
            __timeUpdate()
        }
    }

    function __timeUpdate() {
        seconds = backend.__currentTime.getSeconds()
        minutes = backend.__currentTime.getMinutes()
        hours = backend.__currentTime.getHours()
        time = backend.__currentTime.toLocaleTimeString({ hour: '2-digit', minute:'2-digit' })
    }


    property SequentialAnimation __anim01:
    SequentialAnimation {
        loops: -1
        running: true

        PropertyAnimation {
            target: backend;
            property: "speed";
            from: 21.0
            to: 34.0
            duration: 5000
        }
        PropertyAnimation {
            target: backend;
            property: "speed";
            from: 34.0
            to: 21.0
            duration: 5000
        }
    }

    property SequentialAnimation __anim02:
    SequentialAnimation {
        loops: -1
        running: true

        PropertyAnimation {
            target: backend;
            property: "battery";
            from: 12.0
            to: 89.0
            duration: 50000
        }
        PropertyAnimation {
            target: backend;
            property: "battery";
            from: 89.0
            to: 12.0
            duration: 50000
        }
    }
}

