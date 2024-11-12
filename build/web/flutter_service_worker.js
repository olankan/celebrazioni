'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "1883d7bb7a0f25323f013ee1dce96a69",
"version.json": "b648bac53a6189a304f6835f3d375a06",
"index.html": "7a83ad625f2d0e7cad91921d7490f1e8",
"/": "7a83ad625f2d0e7cad91921d7490f1e8",
"main.dart.js": "2beb3223e0c16b2afb2674e2c5ab6c08",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "014e035b44e73528d0e592f57771b5de",
"assets/AssetManifest.json": "7add1fb3c6311b53b3fd6d5aa282b446",
"assets/NOTICES": "46596fb471eb3920f867c052b2bd98f9",
"assets/FontManifest.json": "f241694c45836c39e7db311e2952b3f4",
"assets/AssetManifest.bin.json": "2a18ac354e48ffa6a98aad606cb25bf8",
"assets/packages/eva_icons_flutter/lib/fonts/Eva-Icons.ttf": "b3cfd6832181cbaa3c98988c49d34641",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "c6c4bb00cc81c440370425c25f1fde49",
"assets/fonts/MaterialIcons-Regular.otf": "1d3ca4476a4de607097a8c30a4c6c9c9",
"assets/assets/images/Search.svg": "5269d1ed93583eb603967885d6e208f5",
"assets/assets/images/DSC_5438.jpg": "e28520668169c8216c60b330fcc0a5b4",
"assets/assets/images/DSC_5363.jpg": "329911e93851ae1d7c3c5d54765413d6",
"assets/assets/images/DSC_5439.jpg": "8f5af5d01b3c7df963ff7a33efcd24d6",
"assets/assets/images/grape.svg": "e453c65c6e8311cccdc44cf7e1b945f0",
"assets/assets/images/batman.png": "6bcbfc8dadd5684760a2cff16e3688bb",
"assets/assets/images/cocktail3.jpeg": "2e2cd94a85e5ce2c1c6871d98f1c3db7",
"assets/assets/images/DSC_5412.jpg": "6ab1be00f9987f0ffe33c93478887df7",
"assets/assets/images/DSC_5374.jpg": "43d8b4bf90926bfef9856a3dcc7ed30d",
"assets/assets/images/DSC_5360.jpg": "ee111958e04eea35355b0ebdc13402b6",
"assets/assets/images/DSC_5406.jpg": "848837491d21fe9e8d02ad26459e6ca9",
"assets/assets/images/user.svg": "c36e6c7c38b159174dd30020ebb4fb93",
"assets/assets/images/wedding2.jpeg": "199cef7b582d4f0c4fdaf93793fb8232",
"assets/assets/images/Home.svg": "9c3d304a2b8edd1d52bdbf5f2329794f",
"assets/assets/images/mango.svg": "32ab1109228e87764964d035e91305e0",
"assets/assets/images/wedding3.jpeg": "58916ab38916fcdcb6835d4fea8fa9d7",
"assets/assets/images/chevron-down.svg": "f4b33277ca8eda161a787a2c36f561be",
"assets/assets/images/DSC_5358.jpg": "4f1d463fea96444590f8da39015134f8",
"assets/assets/images/DSC_5371.jpg": "eeb0985d0415fb1aa6d5ed966fb28331",
"assets/assets/images/cocktail2.jpeg": "4af129adadb52ef1b14b9fd9cf2a4718",
"assets/assets/images/Tag.svg": "4eaa641c43d13c4c104dfd3304747ba9",
"assets/assets/images/microphone.svg": "34627590b8236b75cf9414f95dd43c07",
"assets/assets/images/DSC_5415.jpg": "47639de26a04cebd3b09351d54970cc5",
"assets/assets/images/DSC_5367.jpg": "88b99d7dcf39d177f30312633984639e",
"assets/assets/images/smilingFruits.svg": "8f860030d8a2e5571883c36df1702a83",
"assets/assets/images/Lock.png": "883a7e51660b3a9fdf19822e86cb8a6c",
"assets/assets/images/Lock.svg": "85d86c9156511414a628afcb273fa754",
"assets/assets/images/DSC_5315.jpg": "0b6e6dea32cd8e7e3e7bc8a3a1dd838e",
"assets/assets/images/drawerCard.svg": "853b46c59789d087e6264533f5fc9914",
"assets/assets/images/DSC_5300.jpg": "cba72d31b10b0aacfba8fb6ab6f5207e",
"assets/assets/images/DSC_5314.jpg": "70c5d7e6405c81c8693b3a85d6f15f41",
"assets/assets/images/DSC_5328.jpg": "9d97fc66d1d91af60722a704a5f7fc3a",
"assets/assets/images/wedding4.jpeg": "e856b3e761358c49ff3da50e5f3a1214",
"assets/assets/images/celebrazioni2.jpeg": "b7ed6343f940ba047954a648d4b2007c",
"assets/assets/images/sadAlert.svg": "ff24187a15669c35e24bffff408fe743",
"assets/assets/images/subscribeBackground.png": "75ac2d63ba0748f84fa233274e376ec9",
"assets/assets/images/DSC_5302.jpg": "4ec73f47340ab25592b1b3da85d7062e",
"assets/assets/images/DSC_5316.jpg": "0dfd99902e620dfe52a6d3eab615dd20",
"assets/assets/images/DSC_5317.jpg": "50406911f564176c8bd9f9907e9dc481",
"assets/assets/images/DSC_5303.jpg": "0a5b77d7c50aa8fe805afefae78d3301",
"assets/assets/images/Time.svg": "d849c9ec0045ca4cef62e77f093e1524",
"assets/assets/images/ola.jpg": "7722cb9d1c346a1bb91ad7fa49173aa4",
"assets/assets/images/user.png": "864df92a38d413d0dc4abd1d29735c6e",
"assets/assets/images/birthday1.jpeg": "6866deaeaa76c5859a8a4ac07e7fd77b",
"assets/assets/images/DSC_5307.jpg": "3418caf684824aa0447ea16cf399c69d",
"assets/assets/images/bubbleStar.svg": "e6ae4e7b92453c501c310bdb64bb177a",
"assets/assets/images/DSC_5312.jpg": "19f85082fd71da36bad5e41977a7d2fb",
"assets/assets/images/DSC_5306.jpg": "73888529635ba5cad706c860546d7ea8",
"assets/assets/images/three_fruits.svg": "5c3099dc6bb55eec93926aab25038fba",
"assets/assets/images/tomatoes.svg": "7bdc6866319b2ccb269f67c614b60b82",
"assets/assets/images/DSC_5299.jpg": "71ad32545f33b27e59492c84f4252fb9",
"assets/assets/images/celebrazioni3.jpeg": "e1494588e511479abf1d44029a2159ea",
"assets/assets/images/Paper.svg": "fa550eb9237ffaffd077b450f2f61fc7",
"assets/assets/images/tent.svg": "70e33e94423853b107748cda608c076b",
"assets/assets/images/DSC_5304.jpg": "408a0f0968fd4889adea6e550a23ef1b",
"assets/assets/images/DSC_5338.jpg": "ba9e41c0b34288ff2d4bfff40f0b1b77",
"assets/assets/images/klasma.png": "4de0a10f4aa982b6cce6feac6709c191",
"assets/assets/images/DSC_5311.jpg": "1c9991fe3ecc2ec26d857c9dbe675d87",
"assets/assets/images/locationScreen.svg": "abd71d0e34e878f9e9370e796b089806",
"assets/assets/images/Maps.svg": "db873d98baf282a9d84c5da1cab3c97f",
"assets/assets/images/kizito.png": "10da5632ce52ccd13a5c0b0928d4eaa4",
"assets/assets/images/DSC_5320.jpg": "f5551da7de7bb824d35103df5ed57436",
"assets/assets/images/DSC_5321.jpg": "a8d7cad107a29dafbf54cbf5bc7bf0f1",
"assets/assets/images/DSC_5309.jpg": "0526d58283a4a0eeac09a3e14639d635",
"assets/assets/images/pic1.jpg": "5d07a062ea2cf026ad3eb1b66f094ed6",
"assets/assets/images/apple.png": "bf4825d3bf0cfa7a20dee64f844afc64",
"assets/assets/images/building.png": "326b1174d782d09e57a438f4da568c84",
"assets/assets/images/food.png": "224a3f9501713fe2a7c8f1611f7879dc",
"assets/assets/images/pic3.jpg": "5a03843e57bb7f1dea42f0d0fb4a799d",
"assets/assets/images/Message.svg": "804c5ac7ddfd0519f11ad13c7bca337f",
"assets/assets/images/box.svg": "0110b03c59aca0a956bde59adbc350ca",
"assets/assets/images/birthday2.jpeg": "496fac80b64890e39a5236b197997f5d",
"assets/assets/images/Messages.svg": "310d5b79c24dc7f83c9c5a94035c5adc",
"assets/assets/images/orange_leaf.svg": "69932d59c042750b5393e7d94ec78352",
"assets/assets/images/happyAlert.svg": "e249f19a2963ce278ec297d673ee6ae8",
"assets/assets/images/Chat.svg": "0880349c833a5a7e99b62a2416d2a332",
"assets/assets/images/Notification.svg": "262aeafa7c72fd52e0beca71d6264328",
"assets/assets/images/send.svg": "1066715b1096dd572797b596897f4f3f",
"assets/assets/images/pic2.jpg": "3c1328eaa6210c0ec32ea3fdce0aaad2",
"assets/assets/images/google.svg": "6dae1d0acad0c5afe68d26c212a09e0b",
"assets/assets/images/DSC_5332.jpg": "48bf41710eb2392a5d0c02ea5f6565c7",
"assets/assets/images/DSC_5327.jpg": "5168c2a57e16380c02e438befab80d5a",
"assets/assets/images/DSC_5441.jpg": "413dfebbc99279c4cfd712e392b0973d",
"assets/assets/images/birthday3.jpeg": "67b40c0ffcbefbe843add00ddc94a0c6",
"assets/assets/images/Star.svg": "ac7e4901fc6dc4de2225ed7731751f82",
"assets/assets/images/cash.svg": "e1cf5ae0faed999bd2acc849619bb77a",
"assets/assets/images/DSC_5331.jpg": "1ee748d8620d932258ab4491e1920dda",
"assets/assets/images/DSC_5318.jpg": "ecd13c2a8a86160b52bfc6b2ddb3f2f8",
"assets/assets/images/DSC_5324.jpg": "63b7591385fdbfd00be3b1f9349e98f5",
"assets/assets/images/DSC_5330.jpg": "ab364cc25427f1ad85903dedef6de910",
"assets/assets/images/iceCream.png": "428e685da2190640edac2d26f830d8b4",
"assets/assets/images/cancelBubble.svg": "97a1441cf6142a8b2a7e45c92d548441",
"assets/assets/images/celebrazioni1.jpeg": "abfcb42c88e01438478620e3e8c077b7",
"assets/assets/images/DSC_5343.jpg": "9cb860cd7347f7478e9f8373808ca73f",
"assets/assets/images/DSC_5342.jpg": "8f5f9fc65b12cf03c5ce38a01aec6b30",
"assets/assets/images/DSC_5356.jpg": "f2e13256aea93bad7dba4a76af5ea6c2",
"assets/assets/images/DSC_5395.jpg": "c1fe089b3701b5f1fa2d98d583b38d73",
"assets/assets/images/Location.svg": "36f5db2c41c94d400d22d561c5eac694",
"assets/assets/images/TicketStar.svg": "2c31f55d4c18787db80cffe9344e9da8",
"assets/assets/images/auth_bg.svg": "201cddd285816aed8cee5882b379ac0b",
"assets/assets/images/Profile.svg": "2f364a7555976e75a75e69a14e51a130",
"assets/assets/images/spareLeaves.svg": "38ec197157195f5be7cc95f978dfb14b",
"assets/assets/images/Filter.svg": "d5a9ebd56e561dfb12683c54e733427d",
"assets/assets/images/DSC_5368.jpg": "9baed23448f5d1e130f029339d3169a4",
"assets/assets/images/DSC_5340.jpg": "aab2f93f21dc8c6ab121406ac9c5d23e",
"assets/assets/images/DSC_5369.jpg": "fe74422cda0459ab09d1f6d1b113d67c",
"assets/assets/images/cocktail1.jpeg": "022ff6c8b083017ceedebb160277270a",
"assets/assets/images/Splash2.svg": "1b58acaa766f01676b162f0b12053088",
"assets/assets/images/camera.png": "5af0cb6d4cb7e62e41ea4fc436297fa6",
"assets/assets/images/DSC_5345.jpg": "eaa2a8ae96285dc590bec0b22ec26b74",
"assets/assets/images/DSC_5436.jpg": "7afbca7ac4e837de15a531f95304b053",
"assets/assets/images/box.png": "a80bff0ad75e69af0789df2263e25050",
"assets/assets/images/DSC_5393.jpg": "45cff241c35ba0c69cdac816891116c4",
"assets/assets/images/Message.png": "78123787da09b7ff0baadd0fe3470d11",
"assets/assets/images/DSC_5387.jpg": "a7b78dcfcb656d7ad0d5e6fa354a7f01",
"assets/assets/images/two_leaves.svg": "40452db5e3a1bae35bc32eb531d15834",
"assets/assets/images/wedding1.jpeg": "01c2ae6f8263eb97c107f01002b4ab53",
"assets/assets/images/Splash3.svg": "7e84a0b7f6e9f98e1540dd4d87b376bf",
"assets/assets/images/Menu%2520Photo.png": "9b4a12fdb478060b6f180e869ce51d55",
"assets/assets/images/apple.svg": "5ffa31a36589185ecd9c291e09a3cb03",
"assets/assets/images/Splash1.svg": "d320f2ef18edba651cd5eb22a2d7f9bf",
"assets/assets/images/DSC_5391.jpg": "3921b99ee36b12679bfc2cbc8922194b",
"assets/assets/images/DSC_5420.jpg": "adb31a349d53d799a879393708da6a98",
"assets/assets/images/Maps.png": "28a753dc2cf98453d824d89b0864e46d",
"assets/assets/images/DSC_5347.jpg": "0b7d5e8b912cab5174efec90f393be40",
"assets/assets/images/DSC_5353.jpg": "6cd551ecf68ba9caa23f52592ed9004f",
"assets/assets/images/Heart.svg": "f3e8a973ceb44f4f33cdcc4036427dd2",
"assets/assets/fonts/PoppinsMedium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/PoppinsBold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/PoppinsRegular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/PoppinsLight.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/assets/fonts/MuliSemiBold.ttf": "a4e6f571273de05494ef24d6fb65c885",
"assets/assets/fonts/PoppinsSemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
