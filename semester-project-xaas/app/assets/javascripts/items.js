var cookie = document.cookie;
function setItemsCookie(itemId, cartCount){
    console.log(itemId.length);
    console.log("Setting Cookie");
    document.cookie = "item_" + cartCount + "=" + itemId+";path=/";
    document.cookie = "itemsInCart="+ cartCount +";path=/"
    console.log(document.cookie)
    cookie = document.cookie;
}

function addItemsToCookie(itemId) {
    if (cookie != 0) {
        var cookies = cookie.split(";")
        nCookies = cookies.length;
    }
    else nCookies = 0;
    console.log(cookies);
    console.log(nCookies);
    if (nCookies == 0){
        setItemsCookie(itemId, 1);
    }
    else{
        setItemsCookie(itemId, nCookies);
    }
}

$('#addToCart').on('click', function(){
    itemId = $('#item').val();
    console.log("Clicked");
    addItemsToCookie(itemId);
    window.alert("Added to cart!");

});

function deleteCookie(itemId){
  var itemId = parseInt(itemId) + 1
  console.log("Deleting cookie: item_" + itemId)
  document.cookie = "item_" + itemId + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
  location.reload();
}

console.log($('#addToCart'));
