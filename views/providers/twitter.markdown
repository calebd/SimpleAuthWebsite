## Twitter

The Twitter provider comes in two flavors: ==system== and ==web==.

### Required Parameters

Both Twitter providers require the following parameters:

- `consumer_key`
- `consumer_secret`

### Configuration

```swift
let twitterConfiguration = [
  "consumer_key" : "",
  "consumer_secret" : ""
]
SimpleAuth.configuration["twitter"] = twitterConfiguration
SimpleAuth.configuration["twitter-web"] = twitterConfiguration
```

### Usage

```swift
// System
SimpleAuth.authorize("twitter") { responseObject, error in }

// Web
SimpleAuth.authorize("twitter-web") { responseObject, error in }
```

### System Authentication

The system provider interacts with `Accounts.framework` and `Social.framework` to provide authentication. Install the system provider by adding `pod 'SimpleAuth/Twitter'` to your `Podfile`. Its provider type is `twitter`. If multiple accounts are present, SimpleAuth will present a `UIActionSheet` with the options.

### Web Authentication

The web provider users a web view to authenticate the user. Install the web provider by adding `pod 'SimpleAuth/TwitterWeb'` to your `Podfile`. Its provider type is `twitter-web`. This provider presents a web view controller that allows the user to authenticate.
