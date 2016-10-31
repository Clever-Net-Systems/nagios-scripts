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
$USER1$/check_soap --basic-auth-user='$_SERVICEBASICUSER$' --basic-auth-password='$_SERVICEBASICPASSWORD$' --url '$_SERVICEURL$' --data '$_SERVICEDATA$' --success '$_SERVICESUCCESS$' --srv-cert '$_SERVICEPATHCERTSVR$' --client-cert '$_SERVICEPATHCERTCLIENT$' --client-cert-key '$_SERVICEPATHKEY$' --warning '$_SERVICEWARNING$' --critical '$_SERVICECRITICAL$'```
### Arguments
```
MACRO (SERVICE) URL : url of the soap service
MACRO (SERVICE) DATA : xml data to post to the soap service
MACRO (SERVICE) SUCCESS : string to match in the service answer for a valide query
MACRO (SERVICE) PATHCERTSVR : path for the server side certificate
MACRO (SERVICE) PATHCERTCLIENT : path for the client side certificate
MACRO (SERVICE) WARNING : exec time in [ms] for warning tresholds
MACRO (SERVICE) CRITICAL :  exec time in [ms] for critical tresholds
MACRO (SERVICE) BASICUSER : basic authentication username
MACRO (SERVICE) BASICPASSWORD : basic authentication password
MACRO (SERVICE) PATHKEY : client side certificate key file
```
