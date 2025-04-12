docker cp plot_succ.py 8b5b8b80b8c5:/root/plot_succ.py
docker cp plot_cliffT.py 8b5b8b80b8c5:/root/plot_cliffT.py
docker cp table.sh 8b5b8b80b8c5:/root/table.sh
docker cp py_script/sim_run.py 8b5b8b80b8c5:/root/py_script/sim_run.py
docker cp py_script/table_entry.py 8b5b8b80b8c5:/root/py_script/table_entry.py
docker cp test.py 6467e0c7d8e5:/root/test.py

docker cp quizx_q100d110 8b5b8b80b8c5:/root/benchmarks/random/pauligaudgt/quizx_q100d110
docker cp quizx_q100d120 8b5b8b80b8c5:/root/benchmarks/random/pauligaudgt/quizx_q100d120
docker cp quizx_q100d130 8b5b8b80b8c5:/root/benchmarks/random/pauligaudgt/quizx_q100d130
docker cp quizx_q100d140 8b5b8b80b8c5:/root/benchmarks/random/pauligaudgt/quizx_q100d140
docker cp quizx_q100d150 8b5b8b80b8c5:/root/benchmarks/random/pauligaudgt/quizx_q100d150
docker cp quizx_q100d160 8b5b8b80b8c5:/root/benchmarks/random/pauligaudgt/quizx_q100d160
docker cp quizx_q100d170 8b5b8b80b8c5:/root/benchmarks/random/pauligaudgt/quizx_q100d170
docker cp quizx_q100d180 8b5b8b80b8c5:/root/benchmarks/random/pauligaudgt/quizx_q100d180
docker start -ai 8b5b8b80b8c5


docker export 6467e0c7d8e5 | docker import - quokka:v2.0
docker save quokka:v2.0 > quokka.tar

6b332101479cac839c3c4b3384edc9569380be57bef14b48996a4d4673dff8a3


c60a06d0451a2960542a2b8852389b47e2fbad6c
6c2f707e1ea90df9c793fdd52feec26104d455189e6fcb6efe3169b00b7e08d8
1. table.sh remove timeout remove prob
