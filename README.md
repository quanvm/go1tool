GO1 Tools
====

# Required dependencies

  - http: `brew install http`
  - jq: `brew install jq`

# Install service

- Create your aliases

```
alias go1_install_local="your_path/install.sh local"
alias go1_install_dev="your_path/install.sh dev"
alias go1_install_prod="your_path/install.sh prod"
```

- Install/Update

```
go1_install_local SERVICE
```

# Create MR
- Create your aliases

```
alias go1_mr="your_path/mr.sh"
```

- Add gitlab token https://github.com/quanvm/go1tool/blob/master/mr.sh#L35

- Commit and push your work to remote

- Create MR

```
quanvo@quan-vo:~/Documents/go1/monolith/php/user|GO1P-19375⚡ 
⇒  go1_mr "GO1P-19375 System can create the virtual account without throwing errors"
https://code.go1.com.au/microservices/user/merge_requests/785
```
