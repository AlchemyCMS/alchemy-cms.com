Alchemy::Modules.register_module({
  name: 'extensions',
  order: 1,
  navigation: {
    name: 'modules.extensions',
    controller: '/admin/extensions',
    action: 'index',
    icon: 'puzzle-piece'
  }
})

Alchemy::Modules.register_module({
  name: 'showcases',
  order: 2,
  navigation: {
    name: 'modules.showcases',
    controller: '/admin/showcases',
    action: 'index',
    icon: 'camera'
  }
})

Alchemy.register_ability Ability
