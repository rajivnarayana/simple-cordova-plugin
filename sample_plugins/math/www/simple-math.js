/*global cordova, module*/

module.exports = {
    add: function (number1, number2, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "SimpleMath", "add", [number1, number2]);
    },

	subtract: function (number1, number2, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "SimpleMath", "subtract", [number1, number2]);
    }
}