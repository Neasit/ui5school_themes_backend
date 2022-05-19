sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/Filter"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller, Filter) {
        "use strict";

        return Controller.extend("sapui5school.themes.controller.Start", {
            onInit: function () {

            },

            onSearch: function(oEvent) {
                let oList = this.byId("idMainList");
                let oBinding = oList.getBinding('items');
                let sQuery = oEvent.getParameter('query');
                if(oBinding) {
                    oBinding.filter(sQuery ? [new Filter({ path: 'title', operator: 'Contains', value1: sQuery })] : []);
                }
            }
        });
    });
