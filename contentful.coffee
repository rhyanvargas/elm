module.exports = 
  access_token: process.env.CONTENTFUL_API_KEY
  management_token: process.env.CONTENTFUL_MAN_KEY
  space_id: '1ipf5oqx1rxu'
  content_types:
    posts:
      id: 'blog'
      template: 'views/layouts/_blog.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      #filters: {}
