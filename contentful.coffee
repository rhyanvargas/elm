module.exports = 
  access_token: process.env.CONTENTFUL_API_KEY
  management_token: process.env.CONTENTFUL_MAN_KEY
  space_id: '1ipf5oqx1rxu'
  content_types:
    posts:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      write: '/data/posts.json'
    featured_post:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'limit': '1',
                'fields.feature': 'true'
               }
    animation:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-sys.createdAt',
                'limit': '1',
                'fields.category.sys.id': '5607jfwr8QYki6IcUiueCY'
               }
    culture:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-sys.createdAt',
                'limit': '1',
                'fields.category.sys.id': '57xrbtbFZuYsO4qGY2Y2q0'
               }
    gear:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-sys.createdAt',
                'limit': '1',
                'fields.category.sys.id': '2xx0FKPSRmm0cKEu2SGMkK'
               }
    method:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-sys.createdAt',
                'limit': '1',
                'fields.category.sys.id': '6EfFP66ZckS2OYWa8u28EG'
               }
    news:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-sys.createdAt',
                'limit': '1',
                'fields.category.sys.id': '5o9c9wcypUEoOUSSmak8mM'
               }
    road:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-sys.createdAt',
                'limit': '1',
                'fields.category.sys.id': '4nMklZwz2oA4Uc0mCMiciy'
               }
    quotes:
      id: 'quote'
      filters: {'order': '-sys.createdAt'}
    picks:
      id: 'picks'
      filter: {'limit': '3'}
      write: '/data/picks.json'
