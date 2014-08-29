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

# Loading authorization rules and register them to auth engine instance
Alchemy::Auth::Engine.get_instance.load(File.join(File.dirname(__FILE__), '..', 'authorization_rules.rb'))
