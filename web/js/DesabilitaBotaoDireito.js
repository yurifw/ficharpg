/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



function disableselect(e) {
    return false;
}
function reEnable() {
    return true;
}

//if IE4+   
document.onselectstart = new Function("return true");
document.oncontextmenu = new Function("return false");
//if NS6   
if (window.sidebar) {
    document.onclick = reEnable;
}
//-->   
        