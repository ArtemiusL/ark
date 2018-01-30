System.config({
  baseURL: "/",
  defaultJSExtensions: true,
  transpiler: false,
  paths: {
    "npm:*": "jspm_packages/npm/*"
  },

  map: {
    "masonry-layout": "npm:masonry-layout@4.2.1",
    "npm:fizzy-ui-utils@2.0.7": {
      "desandro-matches-selector": "npm:desandro-matches-selector@2.0.2"
    },
    "npm:masonry-layout@4.2.1": {
      "get-size": "npm:get-size@2.0.2",
      "outlayer": "npm:outlayer@2.1.1"
    },
    "npm:outlayer@2.1.1": {
      "ev-emitter": "npm:ev-emitter@1.1.1",
      "fizzy-ui-utils": "npm:fizzy-ui-utils@2.0.7",
      "get-size": "npm:get-size@2.0.2"
    }
  }
});
