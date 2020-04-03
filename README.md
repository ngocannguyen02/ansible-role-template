# Project ansible-role-template

Project to focus on develop ansible role 

## Requirements

vagrant
ansible

## Role Variables

| var		  | description			                      | default	| change |
|-------------|-------------------------------------------|---------|--------|
| step1		  | execute step 1 or not  | true	| if req |

## Dependencies

None

## Example Playbook

- hosts: all

  roles:
    - { ansible-role-template, steps1: true }

## Usage

Create VM
Add your public key
```vagrant
vagrant up
vagrant ssh
vi ~/.ssh/authorized_keys
```

Execute ansible playbook calling your ansible role
```ansible
ansible-playbook -i inventory.yml -e ansible_user=vagrant playbook.yml
```

## Authors

* [@ngocannguyen02](https://github.com/ngocannguyen02/ansible-role-template.git)

## License

No Licence
