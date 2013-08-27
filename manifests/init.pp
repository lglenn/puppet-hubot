# Install Hubot
class hubot {
  require nodejs

  $node_version = 'v0.10.13'

  nodejs::module { 'hubot':
    node_version => $node_version,
  }

  nodejs::module { 'coffee-script':
    node_version => $node_version,
  }

}
