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

#import "JSQMessagesCollectionViewCellIncoming.h"
#import "Masonry.h"

@implementation JSQMessagesCollectionViewCellIncoming

#pragma mark - Overrides

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.messageBubbleTopLabel.textAlignment = NSTextAlignmentLeft;
    self.cellBottomLabel.textAlignment = NSTextAlignmentLeft;

	//cj added for timelabel side by bubble message
	[self.contentView addSubview:self.wtTimeLabel];
	self.wtTimeLabel.backgroundColor = [UIColor clearColor];
	[self.wtTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
		make.leading.equalTo(self.messageBubbleContainerView.mas_trailing);
		make.bottom.equalTo(self.messageBubbleContainerView.mas_bottom);
		make.trailing.equalTo(self.contentView.mas_trailing);
		make.height.equalTo(@36);
	}];
}

@end
