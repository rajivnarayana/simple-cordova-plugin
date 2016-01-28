package com.hertz.math;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

public class SimpleMath extends CordovaPlugin {

	@Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {

        if ("add".equalsIgnoreCase(action)) {

            int number1 = Integer.parseInt(data.getString(0));
			int number2 = Integer.parseInt(data.getString(1));
            int sum = number1 + number2;
            callbackContext.success(sum);

            return true;
        } else if ("subtract".equalsIgnoreCase(action)) {

            int number1 = Integer.parseInt(data.getString(0));
			int number2 = Integer.parseInt(data.getString(1));
            int diff = number1 - number2;
            callbackContext.success(diff);
            return true;

        } else {
            
            return false;

        }
    }
}