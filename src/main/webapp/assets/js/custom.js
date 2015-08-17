/**
 * Created by changwei on 2015/8/17.
 */

var isCommitted = false;
function doCommit() {
    if (isCommitted == false) {
        isCommitted = true;
        return true;
    } else {
        return false;
        Console.log("false");
    }
}

