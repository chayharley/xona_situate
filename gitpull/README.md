# gitpull

Script to run the git playbook.

### $ ./run_gitpull.sh

By itself, it will run the trigger into the dev environment.

```bash
./run_gitpull.sh
```

### $ ./run_gitpull_prod.sh

It will override the target server, the workflow id, and your API key - as each of these are different between environments.

With those overridden values, this script then executes the run_gitpull.sh action. This pattern will be used repeatedly.

```bash
./run_gitpull_prod.sh
```
