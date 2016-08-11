# nagios-scripts
Plug-in scripts for Nagios monitoring tool


## Centreon check_soap

### Description
Centreon plugin checking soap web services availability

![centreon chart](https://lh3.googleusercontent.com/KRdfVHvfcpIDffRhR_2e98wExzpeGLoPRJSiQ9-YwLloQgWbEKAi2ONIyuALy26ElVBva8YG6Nih2qM638MSBOlTdf7wZ_iWb74TcPr2NMR8TsutotfY7FJmYFFZq5QOPbQYd34jjInnGF5LagKiIZlZ8d9ayNiwLdpWU18tZr2oxIKd6977DWZ8je0RleF0M7VqJBftub-dVoCL0fjVnXvMkfuWXY39KRZtCJxflp-4uGKW5BjI5cKUOj-NNtGGgOH7wHUr3745n0cz9S301KrH9U9q6oZgdEtblgZYACyQOaq-PPAiVncSPVnTpPN9LIUzWAX9_8u94V0EPr21YVoOdaG25cqZAwNBAy-_JmHloCXt6NMM5oIu3On-bylXmsIC5_rhvXed5E64fi_NSHS91szZLisBmSs9VRUFAmo9t2m2Lk_iw4yqls1j-1L2dqwYGHSm52vdxjPhr1DIayK2SzPLBhzCqibH9_-2mTumW9ByR5chg0HH6f9ZCqaDItwETH07yybxARfSHAdfx2EuckrI9_j7Iy28Pb0mjXczNS298Og1BoICwy3xrKifub9N276dTYAee9f8tEidKB_2m-oNTN8=w647-h241-no)

### CentOS 6.x install
```
yum install https://centos6.iuscommunity.org/ius-release.rpm
yum install python35u python35u-pip python35u-setuptools
python3.5 -m pip install requests
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
