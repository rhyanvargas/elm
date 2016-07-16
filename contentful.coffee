module.exports = 
  access_token: process.env.CONTENTFUL_API_KEY
  management_token: process.env.CONTENTFUL_MAN_KEY
  space_id: '1ipf5oqx1rxu'
  content_types:
    posts:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
    featured_post:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {'limit': '1', 'fields.feature': 'true'}
    culture:
      id: 'blog'
      filters: {'limit': '1', 'fields.category.sys.id': '57xrbtbFZuYsO4qGY2Y2q0'}
    gear:
      id: 'blog'
      filters: {'limit': '1', 'fields.category.sys.id': '2xx0FKPSRmm0cKEu2SGMkK'}
    method:
      id: 'blog'
      filters: {'limit': '1', 'fields.category.sys.id': '6EfFP66ZckS2OYWa8u28EG'}
    news:
      id: 'blog'
      filters: {'limit': '1', 'fields.category.sys.id': '5o9c9wcypUEoOUSSmak8mM'}
    road:
      id: 'blog'
      filters: {'limit': '1', 'fields.category.sys.id': '4nMklZwz2oA4Uc0mCMiciy'}
