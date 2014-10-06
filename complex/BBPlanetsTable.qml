import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "../components"

BBTableView {
//    property variant categories: ["Planet", "Population", "Buildings", "Bases", "Waste", "Industry","Constructing","Notes"]
    ListModel {
        id: libraryModel
        ListElement {
            Planet: "Mars"
            Population: "45.5"
        }
        ListElement {
            Planet: "Venus"
            Population: "15.5"
        }
    }
    TableViewColumn {
        role: "Planet"
        title: role
        //        width: 100
    }
    TableViewColumn {
        role: "Population"
        title: role
        //        width: 100
    }
    TableViewColumn {
        role: "Buildings"
        title: role
        //        width: 100
    }

    model: libraryModel
}
