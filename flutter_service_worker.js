'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"loading/style.css": "a9ca865cf54d704064c9c10a276317ad",
"loading/update_progress.js": "d421c1902ad7778a9c4b7f145e78a323",
"icons/Icon-maskable-512.png": "f14019ea1ac77136cca9f1d0882c0175",
"icons/Icon-maskable-192.png": "63f0563c2b933aeb326f4cfbda9e2626",
"icons/Icon-512.png": "f14019ea1ac77136cca9f1d0882c0175",
"icons/Icon-192.png": "63f0563c2b933aeb326f4cfbda9e2626",
"manifest.json": "57c429b6d465a572b14408b3fd5ce095",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "25997ed762e4fe57a9f6a6c61bd600af",
"version.json": "322dfa94430cc69aa45ce83495f46466",
"favicon.png": "2c2ff60d53b1d003c58eec6df584595a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/NOTICES": "a42bb4bd2dae0b1e49b138c572d09c58",
"assets/lib/assets/flutterIcons/fonts/SocialIcons.ttf": "8c31a7adb31bb01da6c9fe2ef04a3972",
"assets/lib/assets/icons/hombre-tec.png": "5543510b134369d982f71320fe6057cc",
"assets/lib/assets/icons/backend.png": "fad0d015f112ae0da99911725c03c6e2",
"assets/lib/assets/icons/website.png": "6562660a6aabc45cf6573265d14a044b",
"assets/lib/assets/icons/mobile.png": "945482ee15855c7b0cfc885d2d66f491",
"assets/lib/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/lib/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/lib/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/lib/assets/fonts/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/lib/assets/json/data_info.json": "ba2534b372c6941ceda2711ad1f07e65",
"assets/lib/assets/images/project-default.png": "641a5c284c39081025ce2550ca8d80a4",
"assets/lib/assets/images/hacker-or-dev-tycoon-mod.jpg": "33cdd1ffdd854b05ca5c189cede3acab",
"assets/lib/assets/images/Anthony-Edward-Tony-Stark.png": "53ae1068b5cde8d0ec471b4f1c3cc6dc",
"assets/lib/assets/images/webdesign-porfolio.jpg": "09d98c31950b1e54eb21d3d0cab63fc2",
"assets/lib/assets/images/logo.png": "e65cd2f9e9fc68310d13c810fd9089d4",
"assets/lib/assets/images/blog-ia.jpg": "02602b6196653d6258f67d6f8027fb69",
"assets/lib/assets/images/project-note-app.png": "63979e57d1045d20b066692f3e455f5b",
"assets/lib/assets/images/blog-ciberseguridad.jpg": "f994c4d8a8691d2b6b056fa0dd6e57ef",
"assets/lib/assets/images/blog-iphone-ios-17.jpg": "941e00f738b560eaaa44221328ca5c5c",
"assets/lib/assets/images/Tony-Stark.png": "9e1deb9f2f1391b925daf3aa9e05b73d",
"assets/lib/assets/images/blog-5g.jpg": "04628b507b41e9b0cfd7683029ca6008",
"assets/lib/assets/images/project-at-events.png": "bf0370942135b21660de25d161de9bc5",
"assets/lib/assets/images/project-coffe-app.png": "b155fd2d952b7001458c63f9926aa534",
"assets/lib/assets/images/project-porfolio.png": "827a0a0faeed8772adbe92277bf6b591",
"assets/lib/assets/images/project-caja-sullana.png": "5eccf290a8b2fc4d94974d7a0889a873",
"assets/lib/assets/lotties/not-found.json": "84ae6ede1ca72c8f7faef58a99cb5544",
"assets/lib/assets/lotties/website.json": "2a9965845cf11491ac38344c65a7b01e",
"assets/lib/assets/lotties/website2.json": "45e0252d6a9c7c0fdd790d44ea528792",
"assets/AssetManifest.bin": "244e9826332a923f1d56b6403abdf293",
"assets/FontManifest.json": "f9465fd788f0d27d8acdde21810ffc62",
"assets/AssetManifest.bin.json": "df601e33aa3b8cf22e411203c8e981d2",
"assets/fonts/MaterialIcons-Regular.otf": "0950dc6d7e8f985a450ba01b944428d6",
"assets/AssetManifest.json": "6f412197798ba23a285ae0d01ee86b92",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"index.html": "b4de5c7181c51b187c296768a5f0af86",
"/": "b4de5c7181c51b187c296768a5f0af86",
"my-notes/privacy-policy-my-notes.pdf": "b24fc04b11b0949b491f34889cc9c8c4",
"my-notes/terms-and-conditions-my-notes.pdf": "e20a6c5825a3617e464b11800ed3a794",
"main.dart.js": "8af2b2849521442ac12b7f5cd7f6d829"};
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
