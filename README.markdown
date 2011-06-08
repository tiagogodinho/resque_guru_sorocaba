# Utilização

Iniciar a interface gráfica do Resque:

    bundle exec resque-web config/initializers/resque.rb

Encerrando a interface gráfica do Resque:

     bundle exec resque-web -k

Iniciar um worker:

    VERBOSE=true QUEUE=jobs rake environment resque:work

Iniciar um scheduler:

    bundle exec rake resque:scheduler

Listar processos resque:

    ps -e -o pid,command | grep [r]esque

Matar processo:

    kill -9 PID

