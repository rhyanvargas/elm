module.exports = function(path) {
  if (!path)
    return 'Missing path parameter';
  else
    return path.match(/(\w+)\.html$/)[1];
}
