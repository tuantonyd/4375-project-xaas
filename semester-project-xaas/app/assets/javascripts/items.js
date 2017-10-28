var cookie = document.cookie;
function setItemsCookie(itemId, cartCount,qty){

    item = itemId+"|"+qty;
    console.log(itemId.length);
    console.log("Setting Cookie");
    document.cookie = "item_" + cartCount + "=" + item+";path=/";
    document.cookie = "itemsInCart="+ cartCount +";path=/"
    console.log(document.cookie)
    cookie = document.cookie;
}

function addItemsToCookie(itemId,qty) {
    if (cookie != 0) {
        var cookies = cookie.split(";")
        nCookies = cookies.length;
    }
    else nCookies = 0;
    console.log(cookies);
    console.log(nCookies);
    if (nCookies == 0){
        setItemsCookie(itemId, 1, qty);
    }
    else{
        setItemsCookie(itemId, nCookies, qty);
    }
}

$('#addToCart').on('click', function(){
    itemId = $('#item').val();
    qty = $('#qty').val();
    console.log("Item: " + itemId, "Quantity: "  + qty);
    addItemsToCookie(itemId,qty);
    window.alert("Added to cart!");

});

function deleteCookie(itemId){
  var itemId = parseInt(itemId) + 1
  console.log("Deleting cookie: item_" + itemId)
  document.cookie = "item_" + itemId + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
  location.reload();
}

console.log($('#addToCart'));
