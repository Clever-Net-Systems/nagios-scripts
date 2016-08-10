# nagios-scripts
Plug-in scripts for Nagios monitoring tool


## Centreon check_soap

### Description
Centreon plugin checking soap web services availability

![centreon chart](https://lh3.googleusercontent.com/ovaLx0UtjTCt0nawXBg83CbZsjBKwTlF3Vjm8-zgoUyYIpO9kG3OcdRTkpm3bLTEMEX9Rk5pc3D-xc6QNcHa2ltmJgNOjcF-NMQfGcuuqXhDlsOlbvlb36fRiU7fLf8NAqgKSvXrfifAGm4zGrdA3bMPMhtPT8wxQ2W4gAlBKxePZzpxwclB7wqsuKW6Jbv-EY7y1L4QSfyq_4wP0Q5wdSle2ERQtfPMXm12XtlcRWvGlVZ1xRfUM6lqL9nx56n-SqJUskF26YH_uk1qMaf3Eja1ia7OGb3x0nUBP-6RrCSXCMduSqLbRtAoK5QZ-V7Yfvmn7Lv8X8rXP3ib7I-wt6p8QJgmTnu5nQYH7zKbUm7mkQkJPdBZir-EIquqon4irHpyqrkga2RsgAkD9raMwl1h3zAIZ41xan2udu-ammda40Cjy1lyKtw-VIvZGjjXskbO4XbZLsydb3Hb0lZikrM9bcTObTJc9m5ruV9K9aLW7cDXTq3FtD4VX7TY_You5jFcW3zBsUrMZcdX3KnmsnJplduWch5g9HVjs9U_I0ll_XgzfvOXvaWtJVVmNyFgmc8_GJBlgJ2bC2c5iwIpL3GTxsAcm60=w647-h241-no)

### CentOS install
```
yum install python-pip
pip install --upgrade pip
pip install requests argparse
```

### Command
```
$USER1$/check_soap --url '$ARG1$' --data '$ARG2$' --success '$ARG3$' --warning $ARG4$ --critical $ARG5$
```
### Arguments
```
ARG1 : url of the soap service
ARG2 : xml data to post to the soap service
ARG3 : string to match in the service answer for a valide query
ARG4 : exec time in [ms] for warning tresholds
ARG5 : exec time in [ms] for critical tresholds
```
