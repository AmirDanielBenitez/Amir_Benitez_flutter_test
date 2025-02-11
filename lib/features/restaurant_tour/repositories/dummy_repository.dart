import 'package:restaurantour/features/restaurant_tour/models/restaurant.dart';
import 'dart:convert';

class DummyRepository {
  final bool success;
  DummyRepository({this.success = true});

  Future<RestaurantQueryResult?> getRestaurants({int offset = 0}) async {
    if (!success) {
      throw (Error());
    }
    String cleanedJsonString = cleanInvalidCharacters(jsonString);
    Map<String, dynamic> jsonMap = json.decode(cleanedJsonString);
    return RestaurantQueryResult.fromJson(jsonMap['data']['search']);
  }
}

String cleanInvalidCharacters(String jsonString) {
  return jsonString.replaceAll(RegExp(r'[\x00-\x1F\x7F-\x9F]'), '');
}

const jsonString = '''
{
  "data": {
    "search": {
      "total": 6185,
      "business": [
        {
          "id": "vHz2RLtfUMVRPFmd7VBEHA",
          "name": "Gordon Ramsay Hell's Kitchen",
          "price": "\$\$\$",
          "rating": 4.4,
          "photos": [
            "https://s3-media2.fl.yelpcdn.com/bphoto/q771KjLzI5y638leJsnJnQ/o.jpg"
          ],
          "reviews": [
            {
              "id": "DKtLdByPmlwZET_b4BM3gQ",
              "rating": 5,
              "user": {
                "id": "dW0QJVcKiX7crMd1lYWTkg",
                "image_url": "https://s3-media3.fl.yelpcdn.com/photo/yhQgs5pEXcKaSRxVaY9z6w/o.jpg",
                "name": "Misty C."
              }
            },
            {
              "id": "PdS4Fv6RKyBQ1nB0L0wpsg",
              "rating": 5,
              "user": {
                "id": "TVnNlNYw5uFp-D-lv9REXA",
                "image_url": null,
                "name": "Chubby T."
              }
            },
            {
              "id": "9rADlcW-gfmu-F_bHK6WOw",
              "rating": 3,
              "user": {
                "id": "YKh3b-qojo4vjtHEZoIjKA",
                "image_url": null,
                "name": "Jeheon L."
              }
            }
          ],
          "categories": [
            {
              "title": "New American",
              "alias": "newamerican"
            },
            {
              "title": "Seafood",
              "alias": "seafood"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3570 Las Vegas Blvd S\nLas Vegas, NV 89109"
          }
        },
        {
          "id": "faPVqws-x-5k2CQKDNtHxw",
          "name": "Yardbird",
          "price": "\$\$",
          "rating": 4.5,
          "photos": [
            "https://s3-media1.fl.yelpcdn.com/bphoto/xYJaanpF3Dl1OovhmpqAYw/o.jpg"
          ],
          "reviews": [
            {
              "id": "jF_ltrsWELOE3J62CfjVOA",
              "rating": 5,
              "user": {
                "id": "L6R9AgLVcYZRex-zD2dyGQ",
                "image_url": null,
                "name": "Rodil A."
              }
            },
            {
              "id": "IN-fzeDTSemdZjOlBSW-Xw",
              "rating": 5,
              "user": {
                "id": "goYizeAZdZbQhZZE5QOe8w",
                "image_url": null,
                "name": "Cliff G."
              }
            },
            {
              "id": "x9RWVj4xZdV_oep2i6c1sA",
              "rating": 5,
              "user": {
                "id": "PY9912npDSkcfO3He7bosQ",
                "image_url": null,
                "name": "Hiyori G."
              }
            }
          ],
          "categories": [
            {
              "title": "Southern",
              "alias": "southern"
            },
            {
              "title": "New American",
              "alias": "newamerican"
            },
            {
              "title": "Cocktail Bars",
              "alias": "cocktailbars"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3355 Las Vegas Blvd S\nLas Vegas, NV 89109"
          }
        },
        {
          "id": "QXV3L_QFGj8r6nWX2kS2hA",
          "name": "Nacho Daddy",
          "price": "\$\$",
          "rating": 4.4,
          "photos": [
            "https://s3-media4.fl.yelpcdn.com/bphoto/pu9doqMplB5x5SEs8ikW6w/o.jpg"
          ],
          "reviews": [
            {
              "id": "DQ2H8OgyBTbe6jN5LqGXdA",
              "rating": 5,
              "user": {
                "id": "oufmvIs63kYDNT4LFy-mzA",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/FgemZl9aSNbb6EPcAG-jbw/o.jpg",
                "name": "Nastacia M."
              }
            },
            {
              "id": "0u-2PXiNc_ugmyUwOx8B5w",
              "rating": 5,
              "user": {
                "id": "LcN1aD-HHqCNlWzqTPfl6g",
                "image_url": null,
                "name": "Nataly E."
              }
            },
            {
              "id": "81RGgDCGWK9DOF8xf9wTBA",
              "rating": 4,
              "user": {
                "id": "ade13lGTtnC25U57AKRW_A",
                "image_url": null,
                "name": "Michael m."
              }
            }
          ],
          "categories": [
            {
              "title": "New American",
              "alias": "newamerican"
            },
            {
              "title": "Mexican",
              "alias": "mexican"
            },
            {
              "title": "Breakfast & Brunch",
              "alias": "breakfast_brunch"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3663 Las Vegas Blvd\nSte 595\nLas Vegas, NV 89109"
          }
        },
        {
          "id": "2iTsRqUsPGRH1li1WVRvKQ",
          "name": "Carson Kitchen",
          "price": "\$\$",
          "rating": 4.5,
          "photos": [
            "https://s3-media2.fl.yelpcdn.com/bphoto/LhaPvLHIrsHu8ZMLgV04OQ/o.jpg"
          ],
          "reviews": [
            {
              "id": "sZVa1-2TWjgJEnKGJYYB4Q",
              "rating": 5,
              "user": {
                "id": "Poe6Ka98uk2V3FTH25gmVQ",
                "image_url": null,
                "name": "Cynthia D."
              }
            },
            {
              "id": "5t4my7iYtsLNUO8x-SSUsw",
              "rating": 5,
              "user": {
                "id": "37DUcB2WAP5CF99T1bLsGw",
                "image_url": "https://s3-media3.fl.yelpcdn.com/photo/24vNaKwJjGmhdl-B5tedhw/o.jpg",
                "name": "Justin G."
              }
            },
            {
              "id": "1PKEZpeVRgb05RihejOJIw",
              "rating": 3,
              "user": {
                "id": "z6EDB2Y_ArgnhYOaL68KhA",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/8N1nVMkzR8jachxvpswCKg/o.jpg",
                "name": "Chastina S."
              }
            }
          ],
          "categories": [
            {
              "title": "New American",
              "alias": "newamerican"
            },
            {
              "title": "Desserts",
              "alias": "desserts"
            },
            {
              "title": "Cocktail Bars",
              "alias": "cocktailbars"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "124 S 6th St\nSte 100\nLas Vegas, NV 89101"
          }
        },
        {
          "id": "syhA1ugJpyNLaB0MiP19VA",
          "name": "888 Japanese BBQ",
          "price": "\$\$\$",
          "rating": 4.8,
          "photos": [
            "https://s3-media1.fl.yelpcdn.com/bphoto/V_zmwCUG1o_vR29xfkb-ng/o.jpg"
          ],
          "reviews": [
            {
              "id": "QKuvkV1Tb-d14-Hfo6KkGw",
              "rating": 4,
              "user": {
                "id": "R_DrrfxzKvQtVpgIv1KXjw",
                "image_url": "https://s3-media3.fl.yelpcdn.com/photo/FHwSndIBTpNLIoU99Qsozg/o.jpg",
                "name": "Grace D."
              }
            },
            {
              "id": "LKSWKmpe4p6XwM2_GTK_tg",
              "rating": 5,
              "user": {
                "id": "xcF1SCYEtj9OK3TwYqV5Qg",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/esVhZkLVrWtuXBPgJ6sUjw/o.jpg",
                "name": "felicia J."
              }
            },
            {
              "id": "foPmGbRnFmALLevmXgGN6w",
              "rating": 5,
              "user": {
                "id": "o14GLSjW4a6L_5dofmfbTw",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/7lpT74I1nVghDStisoT9mQ/o.jpg",
                "name": "Yichu W."
              }
            }
          ],
          "categories": [
            {
              "title": "Barbeque",
              "alias": "bbq"
            },
            {
              "title": "Japanese",
              "alias": "japanese"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3550 S Decatur Blvd\nLas Vegas, NV 89103"
          }
        },
        {
          "id": "nUpz0YiBsOK7ff9k3vUJ3A",
          "name": "Buddy V's Ristorante",
          "price": "\$\$",
          "rating": 4.2,
          "photos": [
            "https://s3-media1.fl.yelpcdn.com/bphoto/gLHjQg0bjGjr_Jus-BXqDA/o.jpg"
          ],
          "reviews": [
            {
              "id": "Ei37fwQISHjcW7Flq0lM0g",
              "rating": 5,
              "user": {
                "id": "p9Yn8XDkIcCawrOBHfE5iA",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/o-9aQP_ZN2xTxhVlkq5lUw/o.jpg",
                "name": "Vanessa H."
              }
            },
            {
              "id": "rDt1nlgRtI3ASYYz_cwbrQ",
              "rating": 4,
              "user": {
                "id": "wKRaCZvy046AldtzflczaQ",
                "image_url": null,
                "name": "Linda H."
              }
            },
            {
              "id": "VwUtf3nVQsdobgRiOIxKqw",
              "rating": 5,
              "user": {
                "id": "pCQ8urlykb8VRNm5IjJSWg",
                "image_url": "https://s3-media4.fl.yelpcdn.com/photo/o36eZXAvfV5y7Ww-LyGkig/o.jpg",
                "name": "Ian M."
              }
            }
          ],
          "categories": [
            {
              "title": "Italian",
              "alias": "italian"
            },
            {
              "title": "American",
              "alias": "tradamerican"
            },
            {
              "title": "Wine Bars",
              "alias": "wine_bars"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3327 S Las Vegas Blvd\nLas Vegas, NV 89109"
          }
        },
        {
          "id": "gOOfBSBZlffCkQ7dr7cpdw",
          "name": "CHICA",
          "price": "\$\$",
          "rating": 4.3,
          "photos": [
            "https://s3-media2.fl.yelpcdn.com/bphoto/FxmtjuzPDiL7vx5KyceWuQ/o.jpg"
          ],
          "reviews": [
            {
              "id": "lW4yyq9CTIsMKM_YaD2t6Q",
              "rating": 5,
              "user": {
                "id": "qtV2u7-cR0ueiOcObwm8EQ",
                "image_url": null,
                "name": "Petra R."
              }
            },
            {
              "id": "NQeiKHUZ4u-TLNTO3zenBQ",
              "rating": 5,
              "user": {
                "id": "_gzc2WONOcCNF8k2wobRQw",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/1zjnSzZGFSp1FqscHxqyug/o.jpg",
                "name": "Raymond S."
              }
            },
            {
              "id": "MH5snphDmYvF_o9xnwYf_Q",
              "rating": 1,
              "user": {
                "id": "GLOgZ5VkXdVr_272gJhr2g",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/fgPFqwN3Wni_6X2d3Ags2A/o.jpg",
                "name": "Carlos G."
              }
            }
          ],
          "categories": [
            {
              "title": "Latin American",
              "alias": "latin"
            },
            {
              "title": "Breakfast & Brunch",
              "alias": "breakfast_brunch"
            },
            {
              "title": "Cocktail Bars",
              "alias": "cocktailbars"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3355 South Las Vegas Blvd\nSte 106\nLas Vegas, NV 89109"
          }
        },
        {
          "id": "rdE9gg0WB7Z8kRytIMSapg",
          "name": "Lazy Dog Restaurant & Bar",
          "price": "\$\$",
          "rating": 4.5,
          "photos": [
            "https://s3-media2.fl.yelpcdn.com/bphoto/_Wz-fNXawmbBinSf9Ev15g/o.jpg"
          ],
          "reviews": [
            {
              "id": "DdLrH47JOtFWBgERXSQdiw",
              "rating": 5,
              "user": {
                "id": "5stRmR9p3vREwvtS-S81zg",
                "image_url": null,
                "name": "Rick H."
              }
            },
            {
              "id": "OAgIc_8QG6rS5o7nVBFipg",
              "rating": 5,
              "user": {
                "id": "lhEdvKMSzT9NvP0AsZ8PeA",
                "image_url": null,
                "name": "Cameron L."
              }
            },
            {
              "id": "GSY-WHs9PHayK6BTQD7QyA",
              "rating": 5,
              "user": {
                "id": "quXARBB0TFNxwHrTFPle4A",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/UnVkj8_uayckUSyOnxSeYg/o.jpg",
                "name": "Renée H."
              }
            }
          ],
          "categories": [
            {
              "title": "New American",
              "alias": "newamerican"
            },
            {
              "title": "Comfort Food",
              "alias": "comfortfood"
            },
            {
              "title": "Burgers",
              "alias": "burgers"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "6509 S Las Vegas Blvd\nLas Vegas, NV 89119"
          }
        },
        {
          "id": "I6EDDi4-Eq_XlFghcDCUhw",
          "name": "Joe's Seafood Prime Steak & Stone Crab",
          "price": "\$\$\$",
          "rating": 4.4,
          "photos": [
            "https://s3-media1.fl.yelpcdn.com/bphoto/I1GDdV1mWUJM5HTP1PIX6A/o.jpg"
          ],
          "reviews": [
            {
              "id": "ccaHPa-J9zx7FORUUGDbjA",
              "rating": 5,
              "user": {
                "id": "tQDSfuYHzrQyUhC0GT5mGA",
                "image_url": "https://s3-media4.fl.yelpcdn.com/photo/XweFm7ELT2clB3MYpxeA5Q/o.jpg",
                "name": "Cindy R."
              }
            },
            {
              "id": "usmjsEE_lsLNsyWVl16P2g",
              "rating": 4,
              "user": {
                "id": "TFh8SgmdlGor2sdv7V70rQ",
                "image_url": "https://s3-media4.fl.yelpcdn.com/photo/HUaAs1PDjnmtqGLbiqnrlQ/o.jpg",
                "name": "R R."
              }
            },
            {
              "id": "wFpymrx6ROYU-ZXR5cnUxQ",
              "rating": 5,
              "user": {
                "id": "vMehw15-3PXzhvx0XYXEVA",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/lxbYBzWHqDOUAZoWw5Rwhg/o.jpg",
                "name": "Nick K. W."
              }
            }
          ],
          "categories": [
            {
              "title": "Seafood",
              "alias": "seafood"
            },
            {
              "title": "Steakhouses",
              "alias": "steak"
            },
            {
              "title": "Wine Bars",
              "alias": "wine_bars"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3500 Las Vegas Blvd S\nLas Vegas, NV 89109"
          }
        },
        {
          "id": "UidEFF1WpnU4duev4fjPlQ",
          "name": "Therapy ",
          "price": "\$\$",
          "rating": 4.3,
          "photos": [
            "https://s3-media3.fl.yelpcdn.com/bphoto/otaMuPtauoEb6qZzmHlAlQ/o.jpg"
          ],
          "reviews": [
            {
              "id": "PsR_yQOXt_w8PUkTGlBjkA",
              "rating": 5,
              "user": {
                "id": "VmSDPCypfNRYJL6iMXqQZQ",
                "image_url": null,
                "name": "Zoe C."
              }
            },
            {
              "id": "t5KE0YZKeRGxX8TLl17SVw",
              "rating": 5,
              "user": {
                "id": "xhC7iVSHkf9pdXu2NVDAhA",
                "image_url": null,
                "name": "Grant W."
              }
            },
            {
              "id": "49zIJLuJkZRj460MfGAj6A",
              "rating": 5,
              "user": {
                "id": "Qb_YdQd6IdogNBzCnSu5bw",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/SyE0UJtWlVo9I1BKZbzrfA/o.jpg",
                "name": "Jessamyn C."
              }
            }
          ],
          "categories": [
            {
              "title": "Bars",
              "alias": "bars"
            },
            {
              "title": "New American",
              "alias": "newamerican"
            },
            {
              "title": "Dance Clubs",
              "alias": "danceclubs"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "518 Fremont St\nLas Vegas, NV 89101"
          }
        },
        {
          "id": "igHYkXZMLAc9UdV5VnR_AA",
          "name": "Echo & Rig",
          "price": "\$\$\$",
          "rating": 4.4,
          "photos": [
            "https://s3-media4.fl.yelpcdn.com/bphoto/dHsa2oVRGjMgMshhwHeOHQ/o.jpg"
          ],
          "reviews": [
            {
              "id": "mn7IIjhoZ7OIXIYXO2ECMg",
              "rating": 5,
              "user": {
                "id": "iV6nUA_XZsTxsptV5VMa3w",
                "image_url": null,
                "name": "Aesha N."
              }
            },
            {
              "id": "Kway0p9xVVZ85Tr5GsUj-w",
              "rating": 5,
              "user": {
                "id": "8q3lZfEw5QcuvEXZGwT0Iw",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/QM8Ges1at0vJ2rdDcl7igw/o.jpg",
                "name": "Keeana G."
              }
            },
            {
              "id": "3PP0gq6SAXgj2JRt7ukahg",
              "rating": 2,
              "user": {
                "id": "tnSVm_tdM5zthKgmGF5d1A",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/_So9EeiKMtNsNNysegLVHQ/o.jpg",
                "name": "Elizabeth H."
              }
            }
          ],
          "categories": [
            {
              "title": "Steakhouses",
              "alias": "steak"
            },
            {
              "title": "Butcher",
              "alias": "butcher"
            },
            {
              "title": "Tapas/Small Plates",
              "alias": "tapasmallplates"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "440 S Rampart Blvd\nLas Vegas, NV 89145"
          }
        },
        {
          "id": "4JNXUYY8wbaaDmk3BPzlWw",
          "name": "Mon Ami Gabi",
          "price": "\$\$\$",
          "rating": 4.2,
          "photos": [
            "https://s3-media2.fl.yelpcdn.com/bphoto/cZ75DtuiHsOU-4W3vLsFKA/o.jpg"
          ],
          "reviews": [
            {
              "id": "nWWGiAcfUV4fMTG1iZwLDg",
              "rating": 4,
              "user": {
                "id": "WG7jNZ6T2s74xaCVvAqrNQ",
                "image_url": null,
                "name": "Jayton W."
              }
            },
            {
              "id": "9U8FJ8JAqpVKqIzvSrNwbw",
              "rating": 5,
              "user": {
                "id": "HGgsNBaaUprlK8kbGN1Xmg",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/ct4hxqGIHJKP4wssXduKuQ/o.jpg",
                "name": "Lisa C."
              }
            },
            {
              "id": "lcQCPO_F7R0vIUQTbkE2Zw",
              "rating": 4,
              "user": {
                "id": "OLn8EvPsu4hNug8V5PF2jA",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/xpr7Du-c8rZ9G4Tc00M7ig/o.jpg",
                "name": "Rachel S."
              }
            }
          ],
          "categories": [
            {
              "title": "French",
              "alias": "french"
            },
            {
              "title": "Steakhouses",
              "alias": "steak"
            },
            {
              "title": "Breakfast & Brunch",
              "alias": "breakfast_brunch"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3655 Las Vegas Blvd S\nLas Vegas, NV 89109"
          }
        },
        {
          "id": "JPfi__QJAaRzmfh5aOyFEw",
          "name": "Shang Artisan Noodle",
          "price": "\$\$",
          "rating": 4.6,
          "photos": [
            "https://s3-media3.fl.yelpcdn.com/bphoto/TqV2TDWH-7Wje5B9Oh1EZw/o.jpg"
          ],
          "reviews": [
            {
              "id": "to7hZMQ5ait363QdwZWObQ",
              "rating": 4,
              "user": {
                "id": "mjSQELtcLOf55ij-JQagvw",
                "image_url": null,
                "name": "Eric Y."
              }
            },
            {
              "id": "1kR1sYXsQ-P34OUX_7dfTA",
              "rating": 5,
              "user": {
                "id": "46MOzJsXEi6bNeiiKdf87g",
                "image_url": null,
                "name": "Renee S."
              }
            },
            {
              "id": "BM4hmLR1nzafikmIdjTVSA",
              "rating": 5,
              "user": {
                "id": "QCfSyRowk0f6Po78n-R91Q",
                "image_url": null,
                "name": "Eileen L."
              }
            }
          ],
          "categories": [
            {
              "title": "Noodles",
              "alias": "noodles"
            },
            {
              "title": "Chinese",
              "alias": "chinese"
            },
            {
              "title": "Soup",
              "alias": "soup"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "4983 W Flamingo Rd\nSte B\nLas Vegas, NV 89103"
          }
        },
        {
          "id": "3kdSl5mo9dWC4clrQjEDGg",
          "name": "Egg & I",
          "price": "\$\$",
          "rating": 4.5,
          "photos": [
            "https://s3-media1.fl.yelpcdn.com/bphoto/z4rdxoc6xaM4dmdPovPBDg/o.jpg"
          ],
          "reviews": [
            {
              "id": "zLTki3FhRtLazq8lITHsPw",
              "rating": 5,
              "user": {
                "id": "rfc-7fqA9cOElpRh1LRLcw",
                "image_url": null,
                "name": "Steven C."
              }
            },
            {
              "id": "ryqGTnDkY5U0ZuFdg1S1fQ",
              "rating": 5,
              "user": {
                "id": "SlUAUp7am-X8RhfZ_HWf_w",
                "image_url": null,
                "name": "Corey C."
              }
            },
            {
              "id": "2gnSQ6VigIFCXhIjcUR3Kg",
              "rating": 5,
              "user": {
                "id": "3LOAOpov-lnr7Ock1n4m6w",
                "image_url": null,
                "name": "Ted S."
              }
            }
          ],
          "categories": [
            {
              "title": "Breakfast & Brunch",
              "alias": "breakfast_brunch"
            },
            {
              "title": "Burgers",
              "alias": "burgers"
            },
            {
              "title": "American",
              "alias": "tradamerican"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "4533 W Sahara Ave\nSte 5\nLas Vegas, NV 89102"
          }
        },
        {
          "id": "QCCVxVRt1amqv0AaEWSKkg",
          "name": "Esther's Kitchen",
          "price": "\$\$",
          "rating": 4.5,
          "photos": [
            "https://s3-media1.fl.yelpcdn.com/bphoto/wEM4F2jy0hnBdNfdAum0Sw/o.jpg"
          ],
          "reviews": [
            {
              "id": "b0Bwi2FF8nyW2E-d2qJK9g",
              "rating": 5,
              "user": {
                "id": "ftzzjBJJfmFyYJPtOrFLfQ",
                "image_url": null,
                "name": "Jenny W."
              }
            },
            {
              "id": "kId4p0bjBjRQ6DauiNLQCQ",
              "rating": 5,
              "user": {
                "id": "Hr9JnLMtc6fDHg-2u-yz3Q",
                "image_url": null,
                "name": "Dulce O."
              }
            },
            {
              "id": "0RfeOhMMWDxrhYFloB_k4A",
              "rating": 5,
              "user": {
                "id": "fqM92Mu8KXJPHESO50pxOQ",
                "image_url": null,
                "name": "Pam S."
              }
            }
          ],
          "categories": [
            {
              "title": "Italian",
              "alias": "italian"
            },
            {
              "title": "Pizza",
              "alias": "pizza"
            },
            {
              "title": "Cocktail Bars",
              "alias": "cocktailbars"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "1130 S Casino Center Blvd\nLas Vegas, NV 89104"
          }
        },
        {
          "id": "kRgAf6j2y1eR0wOFdzFAuw",
          "name": "Firefly Tapas Kitchen & Bar",
          "price": "\$\$",
          "rating": 4.4,
          "photos": [
            "https://s3-media1.fl.yelpcdn.com/bphoto/enFKR6NTTy2Ik3r_2ru2bA/o.jpg"
          ],
          "reviews": [
            {
              "id": "LbkgwPV7IRaAnPEFdoay7w",
              "rating": 5,
              "user": {
                "id": "RrsZdpnOOL5GRyQjgyfZOw",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/LE7vNIJIB1CyY1klpIdxeA/o.jpg",
                "name": "Jenna B."
              }
            },
            {
              "id": "6DH8eBd4Nl8rc1sBXOgLfQ",
              "rating": 5,
              "user": {
                "id": "NHhJTn0glStWUpsmKXBsqQ",
                "image_url": "https://s3-media3.fl.yelpcdn.com/photo/1yYQKZTg-Vjtm1UrnJpZ9Q/o.jpg",
                "name": "Flo L."
              }
            },
            {
              "id": "KivjLlbvIOvkBkAlNusw2A",
              "rating": 5,
              "user": {
                "id": "ECGDB_iT52XusSjguckdqQ",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/7kiIHBHTxcMUGmeELKGoeQ/o.jpg",
                "name": "Sara F."
              }
            }
          ],
          "categories": [
            {
              "title": "Tapas/Small Plates",
              "alias": "tapasmallplates"
            },
            {
              "title": "Tapas Bars",
              "alias": "tapas"
            },
            {
              "title": "Breakfast & Brunch",
              "alias": "breakfast_brunch"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "335 Hughes Center Dr\nLas Vegas, NV 89169"
          }
        },
        {
          "id": "mU3vlAVzTxgmZUu6F4XixA",
          "name": "Momofuku",
          "price": "\$\$",
          "rating": 4.1,
          "photos": [
            "https://s3-media1.fl.yelpcdn.com/bphoto/mB1g53Nqa62Q04u4oNuCSw/o.jpg"
          ],
          "reviews": [
            {
              "id": "DlbQl5FMwXKcaiA-M8PAFA",
              "rating": 5,
              "user": {
                "id": "KKijecFeQInjpAQuoLQbDg",
                "image_url": null,
                "name": "Stephanie A."
              }
            },
            {
              "id": "U7c-C8eg2ZNVWfjACbIgWg",
              "rating": 5,
              "user": {
                "id": "QGOtNZfasBwWCuawKjypYA",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/-mfiJS-obVFrxo6Sq9679A/o.jpg",
                "name": "Jacqueline T."
              }
            },
            {
              "id": "znqKryxfPlF9y8YlRdcMdQ",
              "rating": 4,
              "user": {
                "id": "LpnrjmrUDyQvZodldeN_PQ",
                "image_url": "https://s3-media3.fl.yelpcdn.com/photo/34--QaXFpBuOUU5-UtzCYw/o.jpg",
                "name": "Sandee L."
              }
            }
          ],
          "categories": [
            {
              "title": "New American",
              "alias": "newamerican"
            },
            {
              "title": "Asian Fusion",
              "alias": "asianfusion"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "2 Boulevard Tower\nLevel\nBoulevard Tower\nLas Vegas, NV 89109"
          }
        },
        {
          "id": "JDZ6_yycNQFTpUZzLIKHUg",
          "name": "El Dorado Cantina - Las Vegas Strip",
          "price": "\$\$",
          "rating": 4.4,
          "photos": [
            "https://s3-media2.fl.yelpcdn.com/bphoto/XUohVZ4cdk13GWrUmnQKYQ/o.jpg"
          ],
          "reviews": [
            {
              "id": "i2gXEIKJ045uUEdaZbZ_Zw",
              "rating": 5,
              "user": {
                "id": "LhyepAmUttTm5suU_MoECQ",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/v-Pi6w7g8CdyzTr_6_IsEQ/o.jpg",
                "name": "Cheyenne L."
              }
            },
            {
              "id": "nDUQX9fBRtfi0VTLrStN6g",
              "rating": 5,
              "user": {
                "id": "zPf0o5w4LH5vm5iF2Clpkg",
                "image_url": "https://s3-media3.fl.yelpcdn.com/photo/-reqGCP7l1tqB2KndJ-8LA/o.jpg",
                "name": "Christina K."
              }
            },
            {
              "id": "AP26RnkWGgAfF-b3I3euTg",
              "rating": 3,
              "user": {
                "id": "HITN4vuuhFZpSIlf4QsRvA",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/zmSlyTiInVxB0gS_K0vGyQ/o.jpg",
                "name": "J D."
              }
            }
          ],
          "categories": [
            {
              "title": "Mexican",
              "alias": "mexican"
            },
            {
              "title": "Bars",
              "alias": "bars"
            },
            {
              "title": "Latin American",
              "alias": "latin"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3025 Sammy Davis Jr Dr\nLas Vegas, NV 89109"
          }
        },
        {
          "id": "SVGApDPNdpFlEjwRQThCxA",
          "name": "Juan's Flaming Fajitas & Cantina - Tropicana",
          "price": "\$\$",
          "rating": 4.6,
          "photos": [
            "https://s3-media3.fl.yelpcdn.com/bphoto/a8L9bQZ2XW8etXLomKKdDw/o.jpg"
          ],
          "reviews": [
            {
              "id": "TxbNbQv2DoMeywUXbQHydQ",
              "rating": 5,
              "user": {
                "id": "x32HGKzoObj52o__-bijhA",
                "image_url": "https://s3-media4.fl.yelpcdn.com/photo/Ls_-sU2FfDSbCNklOdR5kw/o.jpg",
                "name": "Denise P."
              }
            },
            {
              "id": "J9wqFeaGz0VG_WG8wiPb8g",
              "rating": 4,
              "user": {
                "id": "KZL0ZNkfmiTD7w6lHwCqwQ",
                "image_url": "https://s3-media2.fl.yelpcdn.com/photo/kszIPpS89yAmpCFVkYlcaQ/o.jpg",
                "name": "Patil K."
              }
            },
            {
              "id": "2oiRbUc1EpJ9ueikWf12ug",
              "rating": 4,
              "user": {
                "id": "P8PgQ9hyIuxQ0tXOARgrKQ",
                "image_url": "https://s3-media1.fl.yelpcdn.com/photo/7dv9EDT4q2ok4OOZEb3Skg/o.jpg",
                "name": "Ken M."
              }
            }
          ],
          "categories": [
            {
              "title": "Mexican",
              "alias": "mexican"
            },
            {
              "title": "Breakfast & Brunch",
              "alias": "breakfast_brunch"
            },
            {
              "title": "Cocktail Bars",
              "alias": "cocktailbars"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "9640 W Tropicana\nSte 101\nLas Vegas, NV 89147"
          }
        },
        {
          "id": "FNe5PPA9pyj8FjcDefCBpg",
          "name": "Weera Thai Restaurant - Sahara",
          "price": "\$\$",
          "rating": 4.4,
          "photos": [
            "https://s3-media2.fl.yelpcdn.com/bphoto/TOPFVZGJtaLJI_-Vyq078A/o.jpg"
          ],
          "reviews": [
            {
              "id": "YT85zfksHELt4t8gDzXlWw",
              "rating": 5,
              "user": {
                "id": "Xxq21QW-gOTdXNSGPnV6SQ",
                "image_url": null,
                "name": "April G."
              }
            },
            {
              "id": "Zrq_gHaC3jOHb7HlfgB5Nw",
              "rating": 5,
              "user": {
                "id": "fYSCSR584ih459jjWBY-4Q",
                "image_url": null,
                "name": "Jessica L."
              }
            },
            {
              "id": "MIWlggOXTgzMs_XZBchc8g",
              "rating": 3,
              "user": {
                "id": "Ia60oLQ-5xWXgyDTZNMkYg",
                "image_url": null,
                "name": "Adela B."
              }
            }
          ],
          "categories": [
            {
              "title": "Thai",
              "alias": "thai"
            },
            {
              "title": "Bars",
              "alias": "bars"
            }
          ],
          "hours": [
            {
              "is_open_now": true
            }
          ],
          "location": {
            "formatted_address": "3839 W Sahara Ave\nSte 7-9\nLas Vegas, NV 89102"
          }
        }
      ]
    }
  }
}
''';
