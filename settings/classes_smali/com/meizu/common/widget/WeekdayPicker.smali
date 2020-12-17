.class public Lcom/meizu/common/widget/WeekdayPicker;
.super Landroid/widget/LinearLayout;
.source "WeekdayPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;,
        Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;
    }
.end annotation


# instance fields
.field private mBackgrouds:[Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDiffWeekStart:I

.field private mHeightDelay:I

.field private mLastChangedIndex:I

.field private mLastLastChangedIndex:I

.field private mOutSide:Z

.field private mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

.field private mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

.field private mSquareWidth:I

.field private mTexts:[Landroid/widget/TextView;

.field private mWeekStart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 71
    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    const-string v2, "-1"

    .line 73
    iput-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 76
    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 77
    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 81
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 67
    iput-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    const/4 p2, -0x1

    .line 70
    iput p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 71
    iput p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    const-string v1, "-1"

    .line 73
    iput-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 74
    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 76
    iput p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 77
    iput p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 87
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 67
    iput-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    const/4 p2, -0x1

    .line 70
    iput p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 71
    iput p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    const/4 p3, 0x0

    .line 72
    iput-boolean p3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    const-string v0, "-1"

    .line 73
    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 74
    iput p3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 76
    iput p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 77
    iput p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 93
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    return-void
.end method

.method private currentTouchIndex(F)I
    .registers 7

    .line 261
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 262
    div-int/lit8 v1, v0, 0x7

    int-to-float v1, v1

    .line 263
    iget v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    .line 265
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_1f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    int-to-float v0, v0

    sub-float p1, v0, p1

    :cond_1f
    div-float v0, p1, v1

    float-to-int v0, v0

    const/4 v3, -0x1

    const/4 v4, 0x7

    if-lt v0, v4, :cond_27

    return v3

    .line 273
    :cond_27
    iget v4, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    sub-int/2addr v0, v4

    if-gez v0, :cond_2e

    add-int/lit8 v0, v0, 0x7

    :cond_2e
    rem-float/2addr p1, v1

    cmpl-float v1, p1, v2

    if-ltz v1, :cond_3c

    sub-float/2addr p1, v2

    .line 279
    iget p0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_3c

    return v0

    :cond_3c
    return v3
.end method

.method private initView()V
    .registers 12

    .line 98
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_chooser_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 99
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    const/4 v0, 0x7

    new-array v2, v0, [Landroid/widget/ImageView;

    .line 101
    iput-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    new-array v2, v0, [Landroid/widget/TextView;

    .line 102
    iput-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    new-array v2, v0, [Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$string;->mc_monday:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/meizu/common/R$string;->mc_tuesday:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/meizu/common/R$string;->mc_wednesday:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/meizu/common/R$string;->mc_thursday:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    .line 108
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/meizu/common/R$string;->mc_friday:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v2, v7

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/meizu/common/R$string;->mc_saturday:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x5

    aput-object v3, v2, v8

    .line 110
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/meizu/common/R$string;->mc_sunday:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x6

    aput-object v3, v2, v9

    .line 112
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    const-string v10, "-2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    .line 114
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    goto :goto_aa

    .line 115
    :cond_92
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    const-string v10, "-1"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    .line 117
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 120
    :cond_aa
    :goto_aa
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 121
    iput v5, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_104

    .line 122
    :cond_b7
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 123
    iput v4, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_104

    .line 124
    :cond_c4
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    const-string v5, "3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 125
    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_104

    .line 126
    :cond_d1
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    const-string v5, "4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 127
    iput v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_104

    .line 128
    :cond_de
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    const-string v5, "5"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 129
    iput v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_104

    .line 130
    :cond_eb
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    const-string v5, "6"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 131
    iput v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_104

    .line 132
    :cond_f8
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    const-string v5, "7"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 133
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 136
    :cond_104
    :goto_104
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000  # 1.0f

    .line 137
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v3, 0x11

    .line 138
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 140
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    if-nez v3, :cond_11d

    .line 141
    new-instance v3, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-direct {v3, v4}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    .line 144
    :cond_11d
    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v3}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v3

    move v5, v4

    :goto_124
    if-ge v4, v0, :cond_1df

    .line 149
    iget-object v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/meizu/common/R$layout;->mc_weekday_picker_item:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 150
    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget v7, Lcom/meizu/common/R$id;->mc_chooser_text:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 153
    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget v8, Lcom/meizu/common/R$id;->mc_background_img:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const-string/jumbo v9, "unselected"

    if-eqz v3, :cond_1ae

    .line 157
    aget-boolean v10, v3, v4

    if-eqz v10, :cond_17b

    const-string/jumbo v9, "selected"

    .line 158
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_166

    .line 160
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_16b

    .line 162
    :cond_166
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on_disable:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    :goto_16b
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1c5

    .line 165
    :cond_17b
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_199

    .line 167
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1c5

    .line 170
    :cond_199
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off_disable:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 171
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected_disable:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1c5

    .line 175
    :cond_1ae
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 176
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 177
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    :goto_1c5
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aput-object v8, v9, v4

    .line 181
    iget-object v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aput-object v7, v8, v4

    .line 183
    iget v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    add-int/2addr v7, v4

    if-lt v7, v0, :cond_1d8

    .line 184
    invoke-virtual {p0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1db

    .line 187
    :cond_1d8
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1db
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_124

    :cond_1df
    return-void
.end method

.method private onBackgoundSelected(IZ)V
    .registers 9

    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    if-eqz v0, :cond_fe

    if-ltz p1, :cond_fe

    array-length v1, v0

    if-ge p1, v1, :cond_fe

    aget-object v1, v0, p1

    if-eqz v1, :cond_fe

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    if-nez v1, :cond_13

    goto/16 :goto_fe

    :cond_13
    const/4 v1, 0x0

    const-string/jumbo v2, "unselected"

    const/4 v3, 0x1

    const-string/jumbo v4, "selected"

    if-eqz p2, :cond_99

    .line 291
    iget p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    if-ne p2, p1, :cond_99

    if-ltz p2, :cond_99

    array-length v5, v0

    if-ge p2, v5, :cond_99

    iget p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v5, v0, p2

    if-eqz v5, :cond_99

    .line 294
    aget-object p2, v0, p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 295
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object p2, p2, v0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object p2, p2, v0

    sget v0, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 297
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    invoke-virtual {p2, v0, v1}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    goto :goto_99

    .line 300
    :cond_69
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object p2, p2, v0

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 301
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object p2, p2, v0

    sget v0, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 302
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    invoke-virtual {p2, v0, v3}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    .line 306
    :cond_99
    :goto_99
    iget p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    iput p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 307
    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 308
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d6

    .line 309
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 310
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object p2, p2, p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 311
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object p0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {p0, p1, v1}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    goto :goto_fe

    .line 314
    :cond_d6
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 315
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object p2, p2, p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 316
    iget-object p2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object p0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {p0, p1, v3}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    :cond_fe
    :goto_fe
    return-void
.end method

.method private updateView()V
    .registers 6

    .line 417
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    if-eqz v0, :cond_65

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    if-nez v1, :cond_9

    goto :goto_65

    .line 421
    :cond_9
    invoke-virtual {v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v0

    const/4 v1, 0x0

    :goto_e
    const/4 v2, 0x7

    if-ge v1, v2, :cond_65

    .line 423
    aget-boolean v2, v0, v1

    if-eqz v2, :cond_3c

    .line 424
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const-string/jumbo v3, "selected"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 425
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    sget v3, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_62

    .line 428
    :cond_3c
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const-string/jumbo v3, "unselected"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 429
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    sget v3, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 430
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_65
    :goto_65
    return-void
.end method


# virtual methods
.method public getSelectedArray()[Z
    .registers 1

    .line 412
    iget-object p0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getBooleanArray()[Z

    move-result-object p0

    return-object p0
.end method

.method public getSelectedDays()I
    .registers 1

    .line 403
    iget-object p0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getCoded()I

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 563
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 564
    const-class p0, Lcom/meizu/common/widget/WeekdayPicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 194
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    .line 197
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result p1

    if-nez p1, :cond_14

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_15

    :cond_14
    move v1, v2

    :cond_15
    return v1

    .line 200
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 203
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, 0x7

    if-eqz v0, :cond_a7

    const/4 v6, -0x1

    if-eq v0, v2, :cond_8e

    const/4 v7, 0x2

    if-eq v0, v7, :cond_34

    const/4 p1, 0x3

    if-eq v0, p1, :cond_8e

    goto/16 :goto_b9

    .line 217
    :cond_34
    iget-boolean v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    if-eqz v0, :cond_3e

    if-eqz v4, :cond_3d

    .line 219
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3d
    return v2

    .line 223
    :cond_3e
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_75

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_75

    neg-int v0, v7

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_75

    .line 224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_65

    goto :goto_75

    .line 236
    :cond_65
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/WeekdayPicker;->currentTouchIndex(F)I

    move-result p1

    if-ltz p1, :cond_b9

    if-ge p1, v5, :cond_b9

    .line 238
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    if-eq p1, v0, :cond_b9

    .line 239
    invoke-direct {p0, p1, v2}, Lcom/meizu/common/widget/WeekdayPicker;->onBackgoundSelected(IZ)V

    goto :goto_b9

    .line 225
    :cond_75
    :goto_75
    iput v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 226
    iput v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 227
    iget-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    if-eqz p1, :cond_86

    .line 228
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;->OnSelectChanged(I)V

    .line 230
    :cond_86
    iput-boolean v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    if-eqz v4, :cond_8d

    .line 232
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8d
    return v2

    .line 245
    :cond_8e
    iput-boolean v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    if-eqz v4, :cond_95

    .line 247
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 249
    :cond_95
    iput v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 250
    iput v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 251
    iget-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    if-eqz p1, :cond_b9

    .line 252
    iget-object p0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getCoded()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;->OnSelectChanged(I)V

    goto :goto_b9

    :cond_a7
    if-eqz v4, :cond_ac

    .line 208
    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 210
    :cond_ac
    iput-boolean v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 211
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/WeekdayPicker;->currentTouchIndex(F)I

    move-result p1

    if-ltz p1, :cond_b9

    if-ge p1, v5, :cond_b9

    .line 213
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/WeekdayPicker;->onBackgoundSelected(IZ)V

    :cond_b9
    :goto_b9
    return v2
.end method

.method public resetView()V
    .registers 1

    .line 325
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 326
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 556
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 557
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 558
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    const/4 v1, 0x7

    if-le p1, v1, :cond_7

    :cond_6
    move p1, v0

    .line 364
    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->resetView()V

    return-void
.end method

.method public setOnSelectChangedListener(Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    return-void
.end method

.method public setSelectedDays(I)V
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->setDays(I)V

    .line 394
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->updateView()V

    return-void
.end method
