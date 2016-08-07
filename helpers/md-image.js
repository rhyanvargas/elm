var marked = require('marked');
var renderer = new marked.Renderer();

renderer.image = function (href, title, text) {
  var out;
  out = '<div class="thumbnail">';
  out += '<img src="' + href + '" alt="' + text + '"';
  if (title) {
    out += ' title="' + title + '"';
  }
  out += this.options.xhtml ? '/>' : '>';
  out += '<div class="caption">';
  out += '<p>' + text + '</p>';
  out += '</div>';
  out += '</div>';
  return out;
};

module.exports = renderer;
