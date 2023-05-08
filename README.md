# MetaFieldApi
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "meta_field_api"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install meta_field_api
```

## Documentation
Once you have installed the MetaFieldApi package, you will need to follow two simple steps to get started:

### Step 1:
In order to add metafields to your desired model, include the following code snippet:
```bash
include MetaFieldApi::HasMetafields
```

### Step 2:
To use the package routes, add the following line to your application routes file:
```bash
mount MetaFieldApi::Engine, at: '/api'
```
Please note that the '/api' in the above code can be replaced with any route that you prefer. For example, your route could look something like this:
```bash
http://127.0.0.1:3000/api/metafields
```
### Example store metafields
#### Post : http://127.0.0.1:3000/api/metafields
```bash
{
  "namespace": "Address_Info",
  "key": "address",
  "value": "Khulna, Bangladesh.",
  "description": "User address description",
  "my_type": "string",
  "owner_id": 2,
  "owner_type": "User"
}
```
#### Response:
```
{
    "metafield": {
        "id": 2,
        "namespace": "Address_Info",
        "key": "address",
        "value": "Khulna, Bangladesh.",
        "description": "User address description",
        "type": "string",
        "owner_type": "User",
        "owner_id": 2,
        "created_at": "2023-05-07T08:28:54.848Z",
        "updated_at": "2023-05-07T08:28:54.848Z"
    },
    "message": "Metafield created successfully!"
}
```

By following these simple steps, you will be able to utilize the MetaFieldApi package to its fullest potential. If you have any questions or concerns, please do not hesitate to reach out to our support team for assistance.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
