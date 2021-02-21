class RemoteConfig {
  static final Map<dynamic, String> config = {
    "AuthorizationToken": "Basic Y2tfNmFjMmZmY2FkOWQyZWU4YjI1NTM2YjA4MzM4YWNjZGViYzAxZDliZTpjc18zNTI0MDExNjZhNWVkMTNjMDMwYzI0OWQ4NDRmNGNiODcxYTFmZGVk",
    "BASE_URL": "https://dev.sebpo.net/hellobox/",
    //"BASE_URL": "https://sneho.com.bd/beta/",
    "GET_ALL_PRODUCTS_URL": "wp-json/wc/v3/products",
    "ADD_TO_CART_URL": "wp-json/cocart/v1/add-item/",
    "GET_CART_URL": "/wp-json/cocart/v1/get-cart",
    "DELETE_CART_ITEM": "wp-json/cocart/v1/item",

    "GET_CHECKOUT_TOTAL": "wp-json/cocart/v1/totals",
    "POST_PLACE_ORDER": "wp-json/wc/v3/orders/",
    "POST_CLEAR_CART": "wp-json/cocart/v1/clear",

    "GET_SLIDER_IMAGES": "wp-json/slider/v1/image",
    "GET_NAV_MENU": "wp-json/wp/v2/menu",
    "UPDATE_CART": "wp-json/cocart/v1/item/",

    "CART_BADGE": "wp-json/cocart/v1/count-items",
    "LOGIN": "wp-json/api/login",
    "USER_INFO": "wp-json/wc/v3/customers/",

    //https://dev.sebpo.net/hellobox/wp-json/wc/v3/products
  };
}