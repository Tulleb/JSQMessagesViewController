//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesToolbarButtonFactory.h"

#import "UIColor+JSQMessages.h"
#import "UIImage+JSQMessages.h"
#import "NSBundle+JSQMessages.h"

@interface JSQMessagesToolbarButtonFactory ()

@property (strong, nonatomic, readonly) UIFont *buttonFont;

@end

@implementation JSQMessagesToolbarButtonFactory

- (instancetype)init
{
    return [self initWithFont:[UIFont boldSystemFontOfSize:17.0]];
}

- (instancetype)initWithFont:(UIFont *)font
{
    NSParameterAssert(font != nil);
    
    self = [super init];
    if (self) {
        _buttonFont = font;
    }
    
    return self;
}

- (UIButton *)defaultAccessoryButtonItem
{
    UIImage *accessoryImage = [UIImage imageNamed:@"accessoryButtons"];

    UIButton *accessoryButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f,
                                                                           0.0f,
                                                                           accessoryImage.size.width,
                                                                           accessoryImage.size.height)];
    [accessoryButton setImage:accessoryImage forState:UIControlStateNormal];

    accessoryButton.contentMode = UIViewContentModeScaleAspectFit;
    accessoryButton.backgroundColor = [UIColor clearColor];
    accessoryButton.userInteractionEnabled = false;
    
    return accessoryButton;
}

- (UIButton *)defaultSendButtonItem
{
    UIImage *sendImage = [UIImage imageNamed:@"sendButton"];

    UIButton *sendButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f,
                                                                      0.0f,
                                                                      sendImage.size.width,
                                                                      sendImage.size.height)];
    [sendButton setImage:sendImage forState:UIControlStateNormal];

    sendButton.layer.cornerRadius = sendImage.size.width / 2;
    sendButton.clipsToBounds = true;
    sendButton.contentMode = UIViewContentModeScaleAspectFit;
    sendButton.backgroundColor = [UIColor clearColor];

    return sendButton;
}

@end
