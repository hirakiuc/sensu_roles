default['sensu']['handlers']['default'] = 'default'

default['sensu']['checks']['default'] = {
  args: '',
  handlers: ['default'],
  subscribers: ['all'],
  additional: {
    occurrences: 1
  }
}

default['sensu']['checks']['check_load'] = {
  file: 'system/check-load.rb'
}

default['sensu']['checks']['check_ram'] = {
  file: 'system/check-ram.rb'
}
