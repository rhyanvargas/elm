buildEmbed = require('./build-embed');

module.exports = function(entry) {
  entry.content = entry.content.replace(/\[\[(\d{9,13})\]\]/g, buildEmbed);
  return entry;
}

// we would rather not mutate the object
// github.com/carrot/roots-contentful/pull/150
// thanks @nickhudkins!


/*

module.exports = function(entry) {
  var newEntry = Object.assign({}, entry, {
    content: entry.content.replace(/\[\[(\d{9,13})\]\]/g, buildEmbed)
  });
  return newEntry;
};

 */
