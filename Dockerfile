FROM ruby:2.5

LABEL "com.github.actions.name"="fluffy-eureka"
LABEL "com.github.actions.description"="Actions for Ruby Gems!"
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="red"

LABEL "repository"="http://github.com/Decisiv/fluffy-eureka"
LABEL "homepage"="http://github.com/Decisiv/fluffy-eureka"
LABEL "maintainer"="Ryan Billington <rbillington@decisiv.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["build","*.gemspec"]
