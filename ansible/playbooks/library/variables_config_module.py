#!/usr/bin/env python3


from ansible.module_utils.basic import AnsibleModule
import jinja2


def render_template(data, template_path):
    # Load and render the Jinja template
    with open(template_path, 'r') as file:
        template = jinja2.Template(file.read())
    return template.render(data)


def main():
    # Define the module's argument spec
    module_args = dict(
        buckets=dict(type='list', required=True),
        template_path=dict(type='str', required=True)
    )

    # Create the module
    module = AnsibleModule(argument_spec=module_args)

    # Extract arguments
    buckets = module.params['buckets']
    template_path = module.params['template_path']

    # Render the Terraform configuration
    terraform_config = render_template({'buckets': buckets}, template_path)

    # Successful exit
    module.exit_json(changed=True, terraform_config=terraform_config)


if __name__ == '__main__':
    main()
