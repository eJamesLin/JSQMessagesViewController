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

#import "JSQMessagesCollectionViewCellOutgoing.h"
#import "Masonry.h"

@implementation JSQMessagesCollectionViewCellOutgoing

#pragma mark - Overrides

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.messageBubbleTopLabel.textAlignment = NSTextAlignmentRight;
    self.cellBottomLabel.textAlignment = NSTextAlignmentRight;

	//cj added for timelabel side by bubble message
	[self.contentView addSubview:self.wtTimeLabel];
	self.wtTimeLabel.textAlignment = NSTextAlignmentRight;
	[self.wtTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
		make.trailing.equalTo(self.messageBubbleContainerView.mas_leading);
		make.bottom.equalTo(self.messageBubbleContainerView.mas_bottom);
		make.leading.equalTo(self.contentView.mas_leading);
		make.height.equalTo(@(wtTimeLabelHeight));
	}];

	[self.contentView addSubview:self.otherGotMsgLabel];
	[self.otherGotMsgLabel mas_makeConstraints:^(MASConstraintMaker *make) {
		make.trailing.equalTo(self.wtTimeLabel.mas_trailing);
		make.leading.equalTo(self.wtTimeLabel.mas_leading);
		make.bottom.equalTo(self.wtTimeLabel.mas_top);
		make.height.equalTo(@(wtTimeLabelHeight));
	}];
}

#pragma mark - cj added
- (UILabel *)otherGotMsgLabel
{
	if (!_otherGotMsgLabel) {
		_otherGotMsgLabel = [[UILabel alloc] initWithFrame:CGRectZero];
		_otherGotMsgLabel.font = [UIFont systemFontOfSize:11.0f];
		_otherGotMsgLabel.textColor = [UIColor grayColor];
		_otherGotMsgLabel.backgroundColor = [UIColor clearColor];
		_otherGotMsgLabel.text = @"已送達";
		_otherGotMsgLabel.textAlignment = NSTextAlignmentRight;
		_otherGotMsgLabel.hidden = YES;
	}
	return _otherGotMsgLabel;
}

@end
