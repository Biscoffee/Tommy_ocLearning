//
//  myCell.m
//  11122
//
//  Created by 吴桐 on 2025/6/8.
//

#import "myCell.h"

@implementation myCustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
//重写父类的初始化方法，根据需求添加自己的逻辑
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    if ([reuseIdentifier isEqualToString:@"indentifierCell"]) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor blueColor];
        _titleLabel.font = [UIFont systemFontOfSize:20];
        [self.contentView addSubview:_titleLabel];
        
        _subtitleLabel = [[UILabel alloc] init];
        _subtitleLabel.textColor = [UIColor cyanColor];
        _subtitleLabel.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_subtitleLabel];
    }
    return self;
}
//重写布局方法，根据需求自己设置
- (void)layoutSubviews {
    _titleLabel.frame = CGRectMake(40, 20, self.contentView.bounds.size.width - 40, 20);
    _subtitleLabel.frame = CGRectMake(40, 40, self.contentView.bounds.size.width - 40, 20);
}
@end
