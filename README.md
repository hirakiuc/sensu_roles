sensu_roles Cookbook
====================

This cookbook makes sensu monitor, sensu client.

Requirements
------------

TODO: add some descriptions if requirements exists.

#### packages

- `sensu` - sensu_roles depends on [sensu-chef](https://github.com/sensu/sensu-chef) cookbook.

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### sensu_roles::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['sensu_roles']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### sensu_roles::monitor

```json
{
  "name":"sensu_monitor",
  "run_list": [
    "recipe[sensu_roles::monitor]"
  ]
}
```

#### sensu_roles::client

```json
{
  "name":"sensu_client",
  "run_list": [
    "recipe[sensu_roles::client]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
