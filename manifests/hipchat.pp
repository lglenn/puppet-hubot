# Install the hipchat adaptor for hubot
class hubot::hipchat {
  require hubot

  package { 'icu4c':
    ensure   => installed,
    provider => homebrew,
  }

  nodejs::module { 'hubot-hipchat':
    node_version => $hubot::node_version,
  }

}
