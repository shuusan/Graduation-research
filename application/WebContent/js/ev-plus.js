function add() {
    var div_element = document.createElement("div");
    div_element.innerHTML = '<br><input type="text" class="ev-title" placeholder="イベント名"><div class="evtime-area"><div class="date-time"><label class="date"><input type="date"></label><br><select name="" class="hour"><option value="">1</option><option value="">2</option>option value="">3</option></select><p class="time">時</p><select name=""class="minutes"><option value="">1</option><option value="">2</option><option value="">3</option></select><p class="time">分</p></div><div class="date-time"><label class="date"><input type="date"></label><br><select name=""class="hour"><option value="">1</option><option value="">2</option><option value="">3</option></select><p class="time">時</p><select name=""class="minutes"><option value="">1</option><option value="">2</option><option value="">3</option></select><p class="time">分</p></div></div><textarea name="" cols="65" rows="10" placeholder="メモ"></textarea>';
    var parent_object = document.getElementById("right");
    parent_object.appendChild(div_element);
}
