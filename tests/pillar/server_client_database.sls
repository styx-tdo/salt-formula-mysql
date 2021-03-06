mysql:
  server:
    enabled: true
    version: '5.5'
    force_encoding: utf8
    admin:
      user: root
      password: ''
    bind:
      address: 0.0.0.0
      port: 3306
      protocol: tcp
    database:
      nova:
        encoding: utf8
        users:
        - name: nova
          password: password
          host: '%'
          rights: all
          target: 'nova.*'
        - name: nova
          password: password
          host: 127.0.0.1
          rights: all
  client:
    enabled: true
    server:
      server01:
        admin:
          host: 0.0.0.0
          port: 3306
          user: root
          password: ''
          encoding: utf8
        database:
          database01:
            encoding: utf8
            users:
            - name: username
              password: 'password'
              host: 'localhost'
              rights: 'all privileges'
