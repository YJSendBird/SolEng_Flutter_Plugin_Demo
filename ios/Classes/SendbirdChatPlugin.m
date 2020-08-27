#import "SendbirdChatPlugin.h"
#if __has_include(<sendbird_chat/sendbird_chat-Swift.h>)
#import <sendbird_chat/sendbird_chat-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sendbird_chat-Swift.h"
#endif

@implementation SendbirdChatPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSendbirdChatPlugin registerWithRegistrar:registrar];
}
@end
