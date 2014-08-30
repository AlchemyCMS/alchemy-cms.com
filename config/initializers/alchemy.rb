Alchemy::Modules.register_module({
  name: 'extensions',
  order: 1,
  navigation: {
    name: 'modules.extensions',
    controller: '/admin/extensions',
    action: 'index',
    image: '/assets/extensions.png',
    sub_navigation: [{
      name: 'modules.extensions',
      controller: '/admin/extensions',
      action: 'index'
    }]
  }
})

Alchemy::Modules.register_module({
  name: 'showcases',
  order: 2,
  navigation: {
    name: 'modules.showcases',
    controller: '/admin/showcases',
    action: 'index',
    image: '/assets/showcases.png',
    sub_navigation: [{
      name: 'modules.showcases',
      controller: '/admin/showcases',
      action: 'index'
    }]
  }
})