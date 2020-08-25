import QtQuick 2.0
import QtQuick 2.9
import QtQuick.Shapes 1.0

Shape {
    id: root

    implicitWidth: 100
    implicitHeight: 100

    property alias gradient: path.fillGradient
    property alias strokeStyle: path.strokeStyle
    property alias strokeWidth: path.strokeWidth
    property alias strokeColor: path.strokeColor
    property alias dashPattern: path.dashPattern
    property alias joinStyle: path.joinStyle
    property alias fillColor: path.fillColor
    property alias capStyle: path.capStyle

    property real begin: 0
    property real end: 90

    property real alpha: end - begin

    function polarToCartesianX(centerX, centerY, radius, angleInDegrees) {
        var angleInRadians = angleInDegrees * Math.PI / 180.0;
        var x = centerX + radius * Math.cos(angleInRadians)
        return x
    }

    function polarToCartesianY(centerX, centerY, radius, angleInDegrees) {
        var angleInRadians = angleInDegrees * Math.PI / 180.0;
        var y = centerY + radius * Math.sin(angleInRadians);
        return y
    }

    function calc()
    {
        path.__xRadius = root.width / 2 - root.strokeWidth / 2
        path.__yRadius = root.height / 2 - root.strokeWidth / 2

        path.__Xcenter = root.width / 2
        path.__Ycenter = root.height / 2

        path.startX = root.polarToCartesianX(path.__Xcenter, path.__Ycenter, path.__xRadius, root.begin - 180)
        path.startY = root.polarToCartesianY(path.__Xcenter, path.__Ycenter, path.__yRadius, root.begin - 180)

        arc.x = root.polarToCartesianX(path.__Xcenter, path.__Ycenter, path.__xRadius, root.end - 180)
        arc.y = root.polarToCartesianY(path.__Xcenter, path.__Ycenter,  path.__yRadius, root.end - 180)

        arc.radiusY =  path.__yRadius
        arc.radiusX =  path.__xRadius

        arc.useLargeArc =  root.alpha > 180
    }


    Component.onCompleted: calc()
    onWidthChanged: calc()
    onHeightChanged: calc()
    onBeginChanged: calc()
    onEndChanged: calc()
    onAlphaChanged: calc()

    ShapePath {
        id: path

        property real __xRadius
        property real __yRadius

        property real __Xcenter
        property real __Ycenter

        fillColor: "transparent"
        strokeColor: Qt.transparent
        strokeWidth: 1
        capStyle: ShapePath.FlatCap


        PathArc {
            id: arc
        }
    }
}

