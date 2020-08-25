pragma Singleton
import QtQuick 2.10

QtObject {
    readonly property int width: 1920
    readonly property int height: 1080
    readonly property FontLoader fontLoader: FontLoader { name: "Arial" }
    readonly property font font: Qt.font({
                                             family: fontLoader.name,
                                             pointSize: Qt.application.font.pixelSize
                                         })
    readonly property font largeFont: Qt.font({
                                                  family: fontLoader.name,
                                                  pointSize: Qt.application.font.pixelSize * 1.6
                                              })
    readonly property color backgroundColor: "#c2c2c2"
}
