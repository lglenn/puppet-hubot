# Install Hubot
class hubot {
  require nodejs

  $node_version = 'v0.10.13'

  nodejs::module { 'hubot':
    node_version => $node_version,
  }

  nodejs::module { 'coffeescript':
    node_version => $node_version,
  }

}
