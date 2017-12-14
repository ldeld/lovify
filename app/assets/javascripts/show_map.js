function drawMap(selectorDom, markerJson) {
  console.log(selectorDom);
  console.log(markerJson);
  var handler = Gmaps.build('Google');
    handler.buildMap({ internal: { id: selectorDom } }, function() {
      markers = handler.addMarkers(markerJson);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      handler.getMap().setZoom(15);
    });
  }
