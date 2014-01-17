## Installing SimpleAuth

Use [CocoaPods]() to install SimpleAuth. All providers are available as sub specs. To install Twitter, add `pod 'SimpleAuth/Twitter'` to your `Podfile`.

## Using SimpleAuth

Authenticating with SimpleAuth is easy. First, configure a provider when your app launches:

	SimpleAuth.configuration[@"twitter"] = @{
		@"consumer_key" : @"YOUR_KEY",
		@"consumer_secret" : @"YOUR_SECRET"
	};

Then authenticate your user:

	[SimpleAuth authenticate:@"twitter" completion:^(id responseObject, NSError *error) {
		if (!responseObject) {
			// Handle the error
		}
		
		id token = responseObject[@"credential"][@"token"];
		id secret = responseObject[@"credential"][@"secret"];
		id userID = responseObject[@"uid"];
		
		// Send stuff to your server
	}];

If you want to customize a particular authentication session, SipmleAuth provides `+[SimpleAuth authenticate:options:completion]`.

## Building Your Own Provider

Building your own provider is easy. You can subclass `SimpleAuthProvider` and `SimpleAuthWebViewController` to perform your own authorization.

