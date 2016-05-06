 map = L.mapbox.map('map', 'rbookhout.jnj6mdfp', {
   accessToken: 'pk.eyJ1IjoicmJvb2tob3V0IiwiYSI6InplX2F1N2cifQ.OS0b9-WgU_ID7X99bui17g'
 });
map.setView([42.366, -71.109], 13);
$.ajax({
  dataType: 'json',
  url: '/trucks.json',
  success: function(geoJSON) {
    map.featureLayer.setGeoJSON(geoJSON);
  }
});
map.featureLayer.on('layeradd', function(e) {
  var marker, popupContent, properties;
  marker = e.layer;
  properties = marker.feature.properties;
  popupContent ='<div class="popup">' + '<h3>'+ properties.name + '</a></h3>'
  + '<p>Location: ' + properties.spot + '</p>'
  +'<p>Cuisine: ' + properties.cuisine + '</p>'
  + '<p>Hours:' + properties.day + " "+ properties.open_hours + '</p>'
  + '</div>';
  return marker.bindPopup(popupContent, {
    closeButton: false,
    minWidth: 320
  });
});
