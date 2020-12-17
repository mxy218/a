.class public Lcom/meizu/common/widget/DayTimeDatePicker;
.super Landroid/widget/FrameLayout;
.source "DayTimeDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;,
        Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;,
        Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;
    }
.end annotation


# instance fields
.field private isLunar:Z

.field private mDay:I

.field private mDayString:Ljava/lang/String;

.field private mEndCal:Ljava/util/Calendar;

.field private mEndYear:I

.field mGregorianDays:[Ljava/lang/String;

.field private mHour:I

.field private mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

.field mHourTexts:[Ljava/lang/String;

.field private mHourUnit:Landroid/widget/TextView;

.field private mIsAccessibilityEnable:Z

.field private mIsDrawLine:Z

.field mIsLayoutRtl:Z

.field mLeap:Ljava/lang/String;

.field private mLeapMonthUnit:Landroid/widget/TextView;

.field private mLineOneHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineTwoHeight:I

.field mLunarMouths:[Ljava/lang/String;

.field mLunardays:[Ljava/lang/String;

.field private mMin:I

.field private mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

.field mMinTexts:[Ljava/lang/String;

.field private mMinUnit:Landroid/widget/TextView;

.field private mMonth:I

.field private mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMonthOfDays:I

.field private mMonthString:Ljava/lang/String;

.field private mNormalItemHeight:F

.field private mNumTpyeface:Landroid/graphics/Typeface;

.field private mNumberNormalTextSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberSelectTextSize:I

.field private mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

.field private mOneScreenCount:I

.field private mPickerHolder:Landroid/widget/LinearLayout;

.field private mSelectItemHeight:F

.field private mStartCal:Ljava/util/Calendar;

.field private mStartYear:I

.field private mWidthPadding:I

.field private mWordNormalTextSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mWordSelectTextSize:I

.field private mYear:I

.field private mZhTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 426
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 430
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 434
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v3, 0x0

    .line 66
    iput-boolean v3, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    const/4 v0, 0x5

    .line 95
    iput v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mOneScreenCount:I

    .line 112
    iput-boolean v3, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsAccessibilityEnable:Z

    .line 118
    iput-boolean v3, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsLayoutRtl:Z

    const-string/jumbo v4, "sans-serif-medium"

    .line 437
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mZhTypeface:Landroid/graphics/Typeface;

    const-string v4, "DINPro-medium"

    .line 438
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    .line 440
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordNormalTextSizes:Ljava/util/List;

    .line 441
    iget-object v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size_one:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size_two:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mc_picker_selected_word_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordSelectTextSize:I

    .line 444
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    .line 445
    iget-object v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_one:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_two:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberSelectTextSize:I

    const/16 v4, 0x76c

    .line 449
    iput v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartYear:I

    const/16 v4, 0x833

    .line 450
    iput v4, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndYear:I

    const/16 v4, 0x64

    new-array v5, v4, [Ljava/lang/String;

    .line 452
    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourTexts:[Ljava/lang/String;

    move v5, v3

    :goto_a3
    const-string v6, "0"

    const/16 v7, 0x9

    if-ge v5, v4, :cond_cd

    .line 454
    iget-object v8, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourTexts:[Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    if-gt v5, v7, :cond_ca

    .line 456
    iget-object v7, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourTexts:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourTexts:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    :cond_ca
    add-int/lit8 v5, v5, 0x1

    goto :goto_a3

    .line 460
    :cond_cd
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeap:Ljava/lang/String;

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthString:Ljava/lang/String;

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mDayString:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/String;

    .line 464
    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinTexts:[Ljava/lang/String;

    move v5, v3

    :goto_f6
    if-ge v5, v4, :cond_11c

    .line 466
    iget-object v8, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinTexts:[Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    if-gt v5, v7, :cond_119

    .line 468
    iget-object v8, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinTexts:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinTexts:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    :cond_119
    add-int/lit8 v5, v5, 0x1

    goto :goto_f6

    .line 472
    :cond_11c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v8, Lcom/meizu/common/R$layout;->mc_date_picker_day_time_layout:I

    invoke-static {v5, v8, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 474
    sget v5, Lcom/meizu/common/R$id;->mc_scroll_month_leap:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    .line 475
    iget-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    if-eqz v5, :cond_13f

    .line 476
    iget-object v8, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeap:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    :cond_13f
    sget v5, Lcom/meizu/common/R$id;->mc_scroll_hour_text:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    .line 481
    iget-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v5, :cond_152

    .line 482
    sget v8, Lcom/meizu/common/R$string;->mc_date_time_hour:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 485
    :cond_152
    sget v5, Lcom/meizu/common/R$id;->mc_scroll_min_text:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    .line 486
    iget-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    if-eqz v5, :cond_165

    .line 487
    sget v8, Lcom/meizu/common/R$string;->mc_date_time_min:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 491
    :cond_165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v8, 0x1

    .line 492
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    const/4 v9, 0x2

    .line 493
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 494
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    const/4 v5, 0x0

    .line 495
    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    .line 497
    sget v5, Lcom/meizu/common/R$id;->mc_column_parent:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    .line 499
    sget v5, Lcom/meizu/common/R$id;->mc_scroll_day:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 500
    iget-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v9, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mZhTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v9}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 502
    iget v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mSelectItemHeight:F

    const/4 v9, 0x0

    cmpl-float v10, v5, v9

    if-eqz v10, :cond_1b1

    iget v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mNormalItemHeight:F

    cmpl-float v11, v10, v9

    if-eqz v11, :cond_1b1

    .line 503
    iget-object v11, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    float-to-int v5, v5

    int-to-float v5, v5

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v11, v5, v10}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 507
    :cond_1b1
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->resetMonthDayData()V

    .line 509
    sget v5, Lcom/meizu/common/R$id;->mc_scroll_hour:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 510
    iget-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v10}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 511
    iget v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mSelectItemHeight:F

    cmpl-float v10, v5, v9

    if-eqz v10, :cond_1da

    iget v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mNormalItemHeight:F

    cmpl-float v11, v10, v9

    if-eqz v11, :cond_1da

    .line 512
    iget-object v11, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    float-to-int v5, v5

    int-to-float v5, v5

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v11, v5, v10}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 516
    :cond_1da
    iget-object v12, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v13, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;

    const/4 v5, 0x4

    invoke-direct {v13, v1, v5}, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;I)V

    const/high16 v14, -0x40800000  # -1.0f

    iget v15, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    const/16 v16, 0x18

    iget v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mOneScreenCount:I

    const/16 v18, 0x0

    const/16 v19, 0x17

    const/16 v20, 0x1

    move/from16 v17, v5

    invoke-virtual/range {v12 .. v20}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 519
    sget v5, Lcom/meizu/common/R$id;->mc_scroll_min:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 520
    iget v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mSelectItemHeight:F

    cmpl-float v10, v5, v9

    if-eqz v10, :cond_214

    iget v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mNormalItemHeight:F

    cmpl-float v9, v10, v9

    if-eqz v9, :cond_214

    .line 521
    iget-object v9, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    float-to-int v5, v5

    int-to-float v5, v5

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v5, v10}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 524
    :cond_214
    iget-object v11, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v12, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;

    invoke-direct {v12, v1, v0}, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;I)V

    const/high16 v13, -0x40800000  # -1.0f

    iget v14, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    const/16 v15, 0x3c

    iget v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mOneScreenCount:I

    const/16 v17, 0x0

    const/16 v18, 0x3b

    const/16 v19, 0x1

    move/from16 v16, v0

    invoke-virtual/range {v11 .. v19}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->refreshTextPreference()V

    .line 529
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd"

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 531
    :try_start_239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    .line 532
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartYear:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-01-01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_25b
    .catch Ljava/text/ParseException; {:try_start_239 .. :try_end_25b} :catch_25c

    goto :goto_260

    :catch_25c
    move-exception v0

    .line 534
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 537
    :goto_260
    :try_start_260
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    .line 538
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndYear:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-12-31"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_282
    .catch Ljava/text/ParseException; {:try_start_260 .. :try_end_282} :catch_283

    goto :goto_287

    :catch_283
    move-exception v0

    .line 540
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 543
    :goto_287
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->adjustLayout4FocusedPosition()V

    .line 546
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    .line 547
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 548
    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 549
    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 550
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 551
    iget-object v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    div-float/2addr v10, v9

    sub-float/2addr v9, v5

    mul-float/2addr v10, v9

    const v5, 0x3fa66666  # 1.3f

    div-float/2addr v10, v5

    .line 552
    iget-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    int-to-float v0, v0

    sub-float/2addr v0, v10

    float-to-int v0, v0

    iget-object v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    .line 553
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    iget-object v11, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    .line 552
    invoke-virtual {v5, v9, v0, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 554
    iget-object v5, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    iget-object v10, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    .line 555
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    iget-object v11, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    .line 554
    invoke-virtual {v5, v9, v0, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2e7

    .line 558
    invoke-virtual {v1, v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->setEnabled(Z)V

    .line 561
    :cond_2e7
    iput v3, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineOneHeight:I

    .line 562
    iput v3, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineTwoHeight:I

    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_width_padding:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mWidthPadding:I

    .line 564
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    .line 566
    sget-object v0, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 567
    sget v5, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_gregorian_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 569
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 570
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 572
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_stroke_width:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 573
    iput-boolean v3, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsDrawLine:Z

    .line 574
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_day:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunardays:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    .line 578
    iput-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    :goto_352
    if-ge v3, v4, :cond_386

    .line 580
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result v0

    if-eqz v0, :cond_36a

    .line 582
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    :cond_36a
    if-gt v3, v7, :cond_383

    .line 585
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    :cond_383
    add-int/lit8 v3, v3, 0x1

    goto :goto_352

    .line 589
    :cond_386
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "mx4pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ae

    .line 590
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DayTimeDatePicker$1;

    invoke-direct {v3, v1}, Lcom/meizu/common/widget/DayTimeDatePicker$1;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;)V

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 600
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DayTimeDatePicker$2;

    invoke-direct {v3, v1}, Lcom/meizu/common/widget/DayTimeDatePicker$2;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;)V

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 610
    iget-object v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DayTimeDatePicker$3;

    invoke-direct {v3, v1}, Lcom/meizu/common/widget/DayTimeDatePicker$3;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;)V

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    :cond_3ae
    const-string v0, "accessibility"

    .line 622
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3be

    .line 624
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsAccessibilityEnable:Z

    :cond_3be
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/DayTimeDatePicker;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDayString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    return p0
.end method

.method static synthetic access$1102(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    return p0
.end method

.method static synthetic access$1202(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    return p0
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/DayTimeDatePicker;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->resetMonthDayData()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/DayTimeDatePicker;)Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/DayTimeDatePicker;I)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->sendAccessibilityEvents(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthNumFromPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/DayTimeDatePicker;II[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/DayTimeDatePicker;->getLunarMonth(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getDayNumFromPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/DayTimeDatePicker;)Z
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    return p0
.end method

.method static synthetic access$902(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    return p1
.end method

.method private adjustLayout4FocusedPosition()V
    .registers 3

    .line 1066
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_hour_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    .line 1067
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 1068
    sget v1, Lcom/meizu/common/R$string;->mc_date_time_hour:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1071
    :cond_13
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_min_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    .line 1072
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    if-eqz p0, :cond_26

    .line 1073
    sget v0, Lcom/meizu/common/R$string;->mc_date_time_min:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_26
    return-void
.end method

.method private getCurrentCalendar()Ljava/util/Calendar;
    .registers 4

    .line 1056
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 1057
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1058
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1059
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private getDayNumFromPosition(I)I
    .registers 7

    .line 391
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthBeforeMonthDays()I

    move-result v0

    .line 392
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthBeforeMonthDays()I

    move-result v1

    add-int/2addr v1, v0

    .line 393
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 394
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthAfterMonthDays()I

    move-result v3

    add-int/2addr v3, v2

    .line 395
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthAfterMonthDays()I

    move-result p0

    add-int/2addr p0, v3

    const/4 v4, 0x1

    if-ge p1, v0, :cond_21

    :goto_1f
    add-int/2addr v4, p1

    goto :goto_39

    :cond_21
    if-lt p1, v0, :cond_27

    if-ge p1, v1, :cond_27

    sub-int/2addr p1, v0

    goto :goto_1f

    :cond_27
    if-lt p1, v1, :cond_2d

    if-ge p1, v2, :cond_2d

    sub-int/2addr p1, v1

    goto :goto_1f

    :cond_2d
    if-lt p1, v2, :cond_33

    if-ge p1, v3, :cond_33

    sub-int/2addr p1, v2

    goto :goto_1f

    :cond_33
    if-lt p1, v3, :cond_39

    if-ge p1, p0, :cond_39

    sub-int/2addr p1, v3

    goto :goto_1f

    :cond_39
    :goto_39
    return v4
.end method

.method private getDaysPosition()I
    .registers 3

    .line 347
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthBeforeMonthDays()I

    move-result v0

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthBeforeMonthDays()I

    move-result v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getLunarMonth(II[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1215
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result p0

    if-eqz p0, :cond_f

    if-le p2, p0, :cond_f

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p2, p2, -0x1

    .line 1219
    aget-object p0, p3, p2

    goto :goto_1b

    :cond_f
    add-int/lit8 p0, p2, -0x1

    .line 1222
    array-length p1, p3

    if-lt p0, p1, :cond_17

    .line 1223
    array-length p0, p3

    add-int/lit8 p2, p0, -0x1

    :cond_17
    add-int/lit8 p2, p2, -0x1

    .line 1225
    aget-object p0, p3, p2

    :goto_1b
    return-object p0
.end method

.method private getMonthDays()I
    .registers 5

    .line 986
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 987
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 988
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-static {v2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    if-ne v2, v0, :cond_13

    move v3, v1

    :cond_13
    if-eqz v2, :cond_1b

    if-eqz v2, :cond_1d

    .line 994
    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    if-ge v1, v2, :cond_1d

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 998
    :cond_1d
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-static {p0, v0, v3}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result p0

    return p0

    .line 1000
    :cond_24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    .line 1001
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1002
    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    .line 1003
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 1004
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method private getMonthDays(II)I
    .registers 8

    .line 1010
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3a

    iget-object v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    if-eqz v4, :cond_3a

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_19

    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-gt v0, p2, :cond_39

    :cond_19
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    .line 1011
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-gt v0, p1, :cond_39

    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    .line 1012
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_31

    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, p2, :cond_39

    :cond_31
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    .line 1013
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, p1, :cond_3a

    :cond_39
    return v1

    .line 1016
    :cond_3a
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    const/4 v4, 0x5

    if-eqz v0, :cond_5b

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_5b

    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_5b

    .line 1018
    iget-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 1019
    :cond_5b
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    if-eqz v0, :cond_8a

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_8a

    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_8a

    .line 1021
    iget-boolean p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz p1, :cond_83

    .line 1023
    iget-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 p2, 0x1e

    if-le p1, p2, :cond_7c

    goto :goto_82

    :cond_7c
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    :goto_82
    return p2

    .line 1026
    :cond_83
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    .line 1030
    :cond_8a
    iget-boolean p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz p0, :cond_a4

    .line 1033
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result p0

    if-eqz p0, :cond_97

    if-ne p0, p2, :cond_97

    move v1, v3

    :cond_97
    if-eqz p0, :cond_9d

    if-eqz p0, :cond_9f

    if-ge p2, p0, :cond_9f

    :cond_9d
    add-int/lit8 p2, p2, 0x1

    .line 1043
    :cond_9f
    invoke-static {p1, p2, v1}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result p0

    return p0

    .line 1046
    :cond_a4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 1047
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1048
    invoke-virtual {p0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 1049
    invoke-virtual {p0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1051
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method private getMonthDaysCount()I
    .registers 4

    .line 336
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthBeforeMonthDays()I

    move-result v0

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthBeforeMonthDays()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 337
    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthAfterMonthDays()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthAfterMonthDays()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getMonthNumFromPosition(I)I
    .registers 7

    .line 358
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthBeforeMonthDays()I

    move-result v0

    .line 359
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthBeforeMonthDays()I

    move-result v1

    add-int/2addr v1, v0

    .line 360
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 361
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthAfterMonthDays()I

    move-result v3

    add-int/2addr v3, v2

    .line 362
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthAfterMonthDays()I

    move-result v4

    add-int/2addr v4, v3

    if-ge p1, v0, :cond_23

    .line 366
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 p0, p0, -0x2

    goto :goto_46

    :cond_23
    if-lt p1, v0, :cond_2c

    if-ge p1, v1, :cond_2c

    .line 369
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 p0, p0, -0x1

    goto :goto_46

    :cond_2c
    if-lt p1, v1, :cond_33

    if-ge p1, v2, :cond_33

    .line 372
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    goto :goto_46

    :cond_33
    if-lt p1, v2, :cond_3c

    if-ge p1, v3, :cond_3c

    .line 375
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 p0, p0, 0x1

    goto :goto_46

    :cond_3c
    if-lt p1, v3, :cond_45

    if-ge p1, v4, :cond_45

    .line 378
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 p0, p0, 0x2

    goto :goto_46

    :cond_45
    const/4 p0, 0x0

    :goto_46
    return p0
.end method

.method private getOneMonthAfterMonthDays()I
    .registers 4

    .line 306
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_17

    .line 308
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result p0

    goto :goto_28

    .line 311
    :cond_17
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result p0

    :goto_28
    return p0
.end method

.method private getOneMonthBeforeMonthDays()I
    .registers 5

    .line 277
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    .line 279
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result p0

    goto :goto_1c

    .line 282
    :cond_d
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v0, v1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v3, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result p0

    :goto_1c
    return p0
.end method

.method private getTimeText(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 1131
    :cond_9
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1128
    :cond_10
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTwoMonthAfterMonthDays()I
    .registers 4

    .line 321
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-gt v0, v1, :cond_17

    .line 323
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result p0

    goto :goto_28

    .line 326
    :cond_17
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result p0

    :goto_28
    return p0
.end method

.method private getTwoMonthBeforeMonthDays()I
    .registers 5

    .line 291
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    .line 293
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result p0

    goto :goto_1d

    .line 296
    :cond_d
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v0, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v3, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result p0

    :goto_1d
    return p0
.end method

.method private getYearMonths(I)I
    .registers 3

    .line 705
    iget-boolean p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    const/16 v0, 0xc

    if-eqz p0, :cond_f

    .line 706
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/16 v0, 0xd

    :cond_f
    :goto_f
    return v0
.end method

.method private isLeapMonth(I)Z
    .registers 4

    .line 675
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 678
    :cond_8
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-static {p0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result p0

    if-nez p0, :cond_15

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1a

    return v1

    :cond_15
    const/16 v0, 0xd

    if-lt p1, v0, :cond_1a

    return v1

    :cond_1a
    if-eqz p0, :cond_23

    add-int/lit8 v0, p0, -0x1

    if-le p1, v0, :cond_23

    if-ne p1, p0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method private isZh()Z
    .registers 2

    .line 1191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1192
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "zh"

    .line 1193
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private refreshTextPreference()V
    .registers 4

    .line 1197
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1198
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1199
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mZhTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2d

    .line 1201
    :cond_1c
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1202
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1205
    :goto_2d
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1206
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1208
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1209
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private resetMonthDayData()V
    .registers 10

    .line 267
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDaysCount()I

    move-result v4

    .line 268
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getDaysPosition()I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v2, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;I)V

    add-int/lit8 v3, v0, -0x1

    iget v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOneScreenCount:I

    add-int/lit8 v7, v4, -0x1

    const/high16 p0, -0x40800000  # -1.0f

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    return-void
.end method

.method private sendAccessibilityEvents(I)V
    .registers 4

    .line 1169
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsAccessibilityEnable:Z

    if-eqz v0, :cond_33

    .line 1170
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->setContentDescription()V

    const/4 v0, 0x5

    const/4 v1, 0x4

    if-ne p1, v0, :cond_17

    .line 1172
    sget p1, Lcom/meizu/common/R$id;->mc_column_min_Layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 1174
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_33

    :cond_17
    if-ne p1, v1, :cond_25

    .line 1177
    sget p1, Lcom/meizu/common/R$id;->mc_column_hour_Layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 1179
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_33

    :cond_25
    const/4 v0, 0x6

    if-ne p1, v0, :cond_33

    .line 1182
    sget p1, Lcom/meizu/common/R$id;->mc_column_day_Layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 1184
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_33
    :goto_33
    return-void
.end method

.method private setContentDescription()V
    .registers 7

    .line 1140
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsAccessibilityEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b1

    .line 1145
    sget v0, Lcom/meizu/common/R$id;->mc_column_min_Layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1146
    sget v2, Lcom/meizu/common/R$id;->mc_column_day_Layout:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1147
    sget v3, Lcom/meizu/common/R$id;->mc_column_hour_Layout:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    .line 1151
    invoke-direct {p0, v5}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v4, "二十"

    const-string/jumbo v5, "廿十"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v5, "廿"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_7d

    .line 1154
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "上下滚动设置分，当前日期是"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7d
    if-eqz v2, :cond_97

    .line 1158
    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "上下滚动设置日，当前日期是"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_97
    if-eqz v3, :cond_b1

    .line 1162
    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "上下滚动设置时，当前日期是"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b1
    return-void
.end method

.method private setDayRange(I)V
    .registers 2

    return-void
.end method

.method private setLeapUnitVisibility(I)V
    .registers 3

    .line 1233
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->isLeapMonth(I)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1234
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    .line 1236
    :cond_13
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1a
    return-void
.end method

.method private setMonthRange(I)V
    .registers 2

    return-void
.end method

.method private updateDate(IIIIIZ)V
    .registers 8

    .line 656
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartYear:I

    if-ge p1, v0, :cond_5

    goto :goto_6

    :cond_5
    move v0, p1

    :goto_6
    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    .line 657
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndYear:I

    if-le p1, v0, :cond_d

    move p1, v0

    :cond_d
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    const/16 p1, 0xb

    if-le p2, p1, :cond_14

    goto :goto_15

    :cond_14
    move p1, p2

    .line 658
    :goto_15
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 659
    iput p3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    .line 660
    iput p4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    .line 661
    iput p5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    .line 663
    iget-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget p2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    invoke-virtual {p1, p2, p6}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 664
    iget-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget p2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    invoke-virtual {p1, p2, p6}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 666
    iget p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthOfDays:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDaysCount()I

    move-result p2

    if-eq p1, p2, :cond_40

    .line 667
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDaysCount()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthOfDays:I

    .line 668
    iget-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget p2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthOfDays:I

    invoke-virtual {p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 671
    :cond_40
    iget-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getDaysPosition()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0, p6}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 802
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCurrentHour()I
    .registers 1

    .line 1316
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    return p0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 1

    .line 1320
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getDayOfMonth()I
    .registers 1

    .line 879
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    return p0
.end method

.method public getLunarDays(I)Ljava/lang/String;
    .registers 3

    .line 696
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunardays:[Ljava/lang/String;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 700
    :cond_9
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getMinUnit()Landroid/widget/TextView;
    .registers 1

    .line 1114
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    return-object p0
.end method

.method public getMonth()I
    .registers 1

    .line 875
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    return p0
.end method

.method public getYear()I
    .registers 1

    .line 871
    iget p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    return p0
.end method

.method public isLunar()Z
    .registers 1

    .line 982
    iget-boolean p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 714
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 716
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsDrawLine:Z

    if-eqz v0, :cond_31

    .line 717
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 718
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWidthPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 719
    div-int/lit8 v0, v0, 0x2

    int-to-float v8, v0

    .line 720
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineOneHeight:I

    int-to-float v4, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v6, v2

    iget-object v7, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v8

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 721
    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineTwoHeight:I

    int-to-float v4, v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_31
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 638
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 639
    const-class p0, Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 813
    check-cast p1, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;

    .line 814
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 815
    invoke-virtual {p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->getYear()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    .line 816
    invoke-virtual {p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 817
    invoke-virtual {p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->getDay()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    .line 807
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 808
    new-instance v6, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/meizu/common/widget/DayTimeDatePicker$1;)V

    return-object v6
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 884
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_5

    :cond_5
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 10

    if-eqz p1, :cond_1d

    .line 1298
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getCurrentHour()I

    move-result v1

    if-ne v0, v1, :cond_d

    goto :goto_1d

    .line 1302
    :cond_d
    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIII)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 8

    .line 1307
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getCurrentHour()I

    move-result v4

    .line 1308
    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIII)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 630
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 633
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setIsDrawFading(Z)V
    .registers 3

    .line 1118
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1119
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1120
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    return-void
.end method

.method public setIsDrawLine(Z)V
    .registers 2

    .line 730
    iput-boolean p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsDrawLine:Z

    return-void
.end method

.method public setLunar(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 978
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->setLunar(ZZ)V

    return-void
.end method

.method public setLunar(ZZ)V
    .registers 14

    .line 938
    iput-boolean p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 940
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 941
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aput v0, p1, v2

    .line 942
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    const/4 v3, 0x2

    aput v0, p1, v3

    const/4 v0, 0x3

    aput v1, p1, v0

    .line 946
    aget v4, p1, v1

    .line 947
    aget v5, p1, v1

    invoke-static {v5}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v5

    .line 948
    aget v6, p1, v1

    sub-int/2addr v6, v2

    invoke-static {v6}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v6

    .line 949
    iget-boolean v7, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz v7, :cond_57

    .line 950
    aget v7, p1, v1

    aget v8, p1, v2

    aget p1, p1, v3

    invoke-static {v7, v8, p1}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object p1

    .line 951
    aget v7, p1, v1

    if-eq v4, v7, :cond_43

    if-eqz v6, :cond_43

    aget v7, p1, v0

    if-eq v7, v2, :cond_51

    aget v7, p1, v2

    if-gt v7, v6, :cond_51

    :cond_43
    aget v6, p1, v1

    if-ne v4, v6, :cond_7e

    if-eqz v5, :cond_7e

    aget v0, p1, v0

    if-eq v0, v2, :cond_51

    aget v0, p1, v2

    if-le v0, v5, :cond_7e

    .line 954
    :cond_51
    aget v0, p1, v2

    add-int/2addr v0, v2

    aput v0, p1, v2

    goto :goto_7e

    :cond_57
    if-eqz v5, :cond_73

    .line 960
    aget v0, p1, v2

    if-lt v5, v0, :cond_5e

    goto :goto_73

    :cond_5e
    add-int/2addr v5, v2

    .line 962
    aget v0, p1, v2

    if-ne v5, v0, :cond_68

    .line 963
    aget v0, p1, v2

    sub-int/2addr v0, v2

    move v4, v2

    goto :goto_76

    .line 965
    :cond_68
    aget v0, p1, v2

    if-ge v5, v0, :cond_70

    .line 966
    aget v0, p1, v2

    sub-int/2addr v0, v2

    goto :goto_75

    :cond_70
    move v0, v1

    move v4, v0

    goto :goto_76

    .line 961
    :cond_73
    :goto_73
    aget v0, p1, v2

    :goto_75
    move v4, v1

    .line 969
    :goto_76
    aget v5, p1, v1

    aget p1, p1, v3

    invoke-static {v5, v0, p1, v4}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object p1

    .line 972
    :cond_7e
    :goto_7e
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->refreshTextPreference()V

    .line 973
    aget v5, p1, v1

    aget v0, p1, v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_8b

    const/16 v0, 0xc

    goto :goto_8e

    :cond_8b
    aget v0, p1, v2

    sub-int/2addr v0, v2

    :goto_8e
    move v6, v0

    aget v7, p1, v3

    iget v8, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    iget v9, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    move-object v4, p0

    move v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIIIZ)V

    .line 974
    iget p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->setLeapUnitVisibility(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;)V
    .registers 2

    .line 726
    iput-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    return-void
.end method

.method public updateDate(IIIII)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 651
    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIIIZ)V

    return-void
.end method
