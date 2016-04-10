# ubuntu_unity-cookbook

Chef recipe adds GDM desktop to a headless Ubuntu

## Supported Platforms

Ubuntu 14.04

## Attributes

None

## Usage

### ubuntu_unity::default

Include `ubuntu_unity` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[ubuntu_unity::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Robert Zurga (vagrant@zurga.com)
