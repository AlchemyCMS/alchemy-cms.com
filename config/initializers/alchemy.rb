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