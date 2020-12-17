.class public Lcom/meizu/common/widget/CustomTimePicker;
.super Landroid/widget/FrameLayout;
.source "CustomTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomTimePicker$DayPicker;,
        Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;,
        Lcom/meizu/common/widget/CustomTimePicker$SavedState;,
        Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;
    }
.end annotation


# instance fields
.field private isLeapMonth:Z

.field private isLunar:Z

.field private mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private final mAmText:Ljava/lang/String;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mDay:I

.field private mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

.field private mDayUnit:Landroid/widget/TextView;

.field private mGregorianColor:I

.field private mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mHourUnit:Landroid/widget/TextView;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private mLunarColor:I

.field private mLunarMonthCount:I

.field private mLunarNormalTextSize:I

.field private mLunarSelectTextSize:I

.field private mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMinuteUnit:Landroid/widget/TextView;

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private mMonthOfDays:I

.field private mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

.field private mMonthUnit:Landroid/widget/TextView;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mOneScreenCount:I

.field private mPickerHolder:Landroid/widget/FrameLayout;

.field private final mPmText:Ljava/lang/String;

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarNormalTextSize:I

.field private mSolarSelectTextSize:I

.field private mUnSlectColor:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CustomTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/CustomTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 66
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    .line 67
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    const/4 p3, 0x1

    .line 68
    iput-boolean p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    .line 84
    iput-boolean p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    .line 85
    iput-boolean p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUpdateLock:Ljava/lang/Object;

    const/4 v0, 0x5

    .line 91
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    .line 198
    :try_start_27
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 199
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    .line 200
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_43} :catch_44

    goto :goto_50

    .line 202
    :catch_44
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    const/16 v1, 0x1e

    .line 203
    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    .line 204
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 208
    :goto_50
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_61

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    if-lt v1, v0, :cond_61

    sub-int/2addr v1, v0

    .line 209
    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 210
    iput-boolean p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    .line 214
    :cond_61
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 215
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 216
    aget-object p2, v0, p2

    iput-object p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmText:Ljava/lang/String;

    .line 217
    aget-object p2, v0, p3

    iput-object p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPmText:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$dimen;->mc_picker_selected_word_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    .line 229
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker;->inflateLayout()V

    const/4 p1, -0x1

    .line 230
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .registers 2

    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .registers 2

    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$1702(Lcom/meizu/common/widget/CustomTimePicker;Z)Z
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I

    return p0
.end method

.method static synthetic access$1802(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .registers 2

    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I

    return p1
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    return p0
.end method

.method static synthetic access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .registers 2

    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    return p1
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    return p0
.end method

.method static synthetic access$2002(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .registers 2

    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/CustomTimePicker;Z)Z
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    return p0
.end method

.method static synthetic access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/meizu/common/widget/CustomTimePicker;Ljava/util/Locale;)Ljava/util/Locale;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/meizu/common/widget/CustomTimePicker;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/Object;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUpdateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CustomTimePicker;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .registers 2

    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPmText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    return p0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/CustomTimePicker;I)Ljava/lang/String;
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomTimePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private doTabAnimate()V
    .registers 4

    .line 322
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    .line 323
    :goto_9
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V

    .line 324
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {p0, v0, v1, v0}, Lcom/meizu/common/widget/CustomTimePicker;->setTextColor(III)V

    return-void
.end method

.method private getLunarDays(I)Ljava/lang/String;
    .registers 3

    .line 729
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_day:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 731
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 735
    :cond_11
    aget-object p0, p0, p1

    return-object p0
.end method

.method private getMonthDays(IIZ)I
    .registers 5

    const/4 p0, 0x1

    if-eqz p3, :cond_12

    .line 645
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    if-ne p3, p2, :cond_d

    move v0, p0

    .line 651
    :cond_d
    invoke-static {p1, p2, v0}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result p0

    return p0

    .line 653
    :cond_12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/4 v0, 0x5

    .line 654
    invoke-virtual {p3, v0, p0}, Ljava/util/Calendar;->set(II)V

    .line 655
    invoke-virtual {p3, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    sub-int/2addr p2, p0

    .line 656
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 657
    invoke-virtual {p3, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method private getMonthIndex(I)I
    .registers 5

    .line 402
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    if-ltz p1, :cond_1a

    const/16 v2, 0xb

    if-le p1, v2, :cond_b

    goto :goto_1a

    .line 407
    :cond_b
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-lt p1, p0, :cond_16

    sub-int/2addr p1, p0

    add-int/2addr v0, p1

    goto :goto_1a

    :cond_16
    rsub-int/lit8 p0, p0, 0xc

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method private inflateLayout()V
    .registers 16

    .line 234
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 235
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 240
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    const/4 v0, 0x3

    .line 242
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    .line 243
    sget v1, Lcom/meizu/common/R$layout;->mc_custom_picker_24hour:I

    .line 244
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_select_h:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 246
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 248
    sget v1, Lcom/meizu/common/R$id;->picker_holder:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPickerHolder:Landroid/widget/FrameLayout;

    .line 249
    sget v1, Lcom/meizu/common/R$id;->mc_scroll_hour_text:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    .line 250
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v1, :cond_43

    .line 251
    sget v3, Lcom/meizu/common/R$string;->mc_date_time_hour:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 254
    :cond_43
    sget v1, Lcom/meizu/common/R$id;->mc_scroll_min_text:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    .line 255
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    if-eqz v1, :cond_56

    .line 256
    sget v3, Lcom/meizu/common/R$string;->mc_date_time_min:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 259
    :cond_56
    sget v1, Lcom/meizu/common/R$id;->mc_scroll_hour:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 260
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v4, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v1, 0x1

    invoke-direct {v4, p0, v1}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/high16 v5, -0x40800000  # -1.0f

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    iget-object v7, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 261
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_77

    const/16 v7, 0x18

    goto :goto_79

    :cond_77
    const/16 v7, 0xc

    :goto_79
    iget v8, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_87

    const/16 v10, 0x17

    goto :goto_89

    :cond_87
    const/16 v10, 0xb

    :goto_89
    const/4 v11, 0x1

    .line 260
    invoke-virtual/range {v3 .. v11}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 262
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 264
    sget v3, Lcom/meizu/common/R$id;->mc_scroll_min:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 265
    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v6, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v3, 0x2

    invoke-direct {v6, p0, v3}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/high16 v7, -0x40800000  # -1.0f

    iget v8, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    const/16 v9, 0x3c

    iget v10, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v11, 0x0

    const/16 v12, 0x3b

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v13}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 267
    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v5, v4}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 269
    sget v5, Lcom/meizu/common/R$id;->mc_scroll_ampm:I

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 270
    iget-object v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v7, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    invoke-direct {v7, p0, v0}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/high16 v8, -0x40800000  # -1.0f

    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    xor-int/lit8 v9, v0, 0x1

    const/4 v10, 0x2

    iget v11, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 272
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 273
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->mz_picker_selected_ampm_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 275
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/meizu/common/R$dimen;->mz_picker_unselected_ampm_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 272
    invoke-virtual {v0, v5, v6}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 277
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, v4}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 279
    sget v0, Lcom/meizu/common/R$id;->mc_column_ampm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 280
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_115

    const/16 v4, 0x8

    .line 281
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_119

    :cond_115
    const/4 v4, 0x0

    .line 283
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 286
    :goto_119
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_month_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_12c

    .line 288
    sget v4, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 291
    :cond_12c
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_day_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_13f

    .line 293
    sget v4, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 296
    :cond_13f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 297
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    .line 298
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    const/4 v3, 0x5

    .line 299
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    .line 301
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    .line 303
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_day:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    .line 304
    new-instance v4, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-direct {v4, p0, v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;-><init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    .line 305
    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    new-instance v6, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    invoke-direct {v6, p0, v3}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/4 v7, -0x1

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    add-int/lit8 v8, v0, -0x1

    iget v10, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    add-int/lit8 v11, v0, -0x1

    add-int/lit8 v12, v9, -0x1

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v13}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setData(Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;IIIIIIZ)V

    .line 307
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setSelectItemHeight(I)V

    .line 309
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_month:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    .line 310
    new-instance v1, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-direct {v1, p0, v0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;-><init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    .line 311
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000  # -1.0f

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthIndex(I)I

    move-result v6

    const/16 v7, 0xc

    iget v8, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v9, 0x0

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 313
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setSelectItemHeight(I)V

    .line 316
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker;->initTabView()V

    return-void
.end method

.method private initTabView()V
    .registers 3

    .line 329
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_lunar_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    .line 331
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_gregorian_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    .line 333
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_custom_date_picker_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    return-void
.end method

.method private setTabColor(IZZ)V
    .registers 4

    .line 343
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/meizu/common/R$color;->mc_custom_date_picker_unselected_tab_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    return-void
.end method


# virtual methods
.method public getCurrentHour()I
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 530
    iget p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    return p0

    .line 533
    :cond_b
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    if-eqz v0, :cond_12

    .line 534
    iget p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    return p0

    .line 536
    :cond_12
    iget p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    add-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 1

    .line 550
    iget p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTime([I)V
    .registers 8

    .line 419
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    .line 421
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    invoke-static {v0, v4, v5, v3}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v0

    .line 422
    aget v4, v0, v3

    aput v4, p1, v3

    .line 423
    aget v3, v0, v2

    aput v3, p1, v2

    .line 424
    aget v0, v0, v1

    aput v0, p1, v1

    goto :goto_2a

    .line 426
    :cond_1e
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    aput v0, p1, v3

    .line 427
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    aput v0, p1, v2

    .line 428
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    aput v0, p1, v1

    :goto_2a
    const/4 v0, 0x3

    .line 431
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x4

    .line 432
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x5

    .line 433
    iget-boolean p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    aput p0, p1, v0

    return-void
.end method

.method public getTimeMillis()J
    .registers 9

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 438
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker;->getTime([I)V

    .line 440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x0

    .line 441
    aget v2, v0, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    sub-int/2addr v3, v1

    const/4 v1, 0x2

    aget v4, v0, v1

    const/4 v1, 0x3

    aget v5, v0, v1

    const/4 v1, 0x4

    aget v6, v0, v1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 442
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public is24HourView()Z
    .registers 1

    .line 543
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1217
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1219
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_select_h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1221
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_picker_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1223
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setSelectItemHeight(I)V

    .line 1224
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setSelectItemHeight(I)V

    .line 1225
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 1226
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 1228
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPickerHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1229
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1230
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1231
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1232
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPickerHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 1238
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1239
    const-class p0, Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 12

    .line 517
    check-cast p1, Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .line 518
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 519
    invoke-static {p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1000(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1100(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    .line 520
    invoke-static {p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1200(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v4

    invoke-static {p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1300(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v5

    invoke-static {p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1400(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v6

    invoke-static {p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1500(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_30

    move v7, v2

    goto :goto_31

    :cond_30
    move v7, v1

    :goto_31
    invoke-static {p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1600(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-ne v0, v2, :cond_39

    move v8, v2

    goto :goto_3a

    :cond_39
    move v8, v1

    :goto_3a
    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZZ)V

    .line 521
    invoke-static {p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1500(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-ne v0, v2, :cond_48

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    goto :goto_4a

    :cond_48
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    .line 522
    :goto_4a
    invoke-static {p1}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1500(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result p1

    if-ne p1, v2, :cond_51

    goto :goto_52

    :cond_51
    move v2, v1

    :goto_52
    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 12

    .line 511
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 512
    new-instance v10, Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    iget-boolean v7, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    iget-boolean v8, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIIIZZLcom/meizu/common/widget/CustomTimePicker$1;)V

    return-object v10
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .line 572
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_6

    return-void

    .line 577
    :cond_6
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 579
    :try_start_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 584
    :goto_19
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_2a

    .line 585
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v0

    .line 586
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    .line 590
    :cond_2a
    iget-boolean p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-eqz p1, :cond_4f

    .line 591
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 592
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 593
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 595
    iget p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    .line 596
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V

    goto :goto_6a

    .line 598
    :cond_4f
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 599
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 600
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 602
    iget p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    .line 606
    :goto_6a
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v0, p1, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextColor(II)V

    .line 607
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v0, p1, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextColor(II)V

    .line 608
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v0, p1, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 609
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v0, p1, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 610
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v0, p1, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 612
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 613
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 615
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 557
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v1

    if-ne v0, v1, :cond_d

    goto :goto_1c

    .line 560
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 4

    .line 565
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v0

    .line 566
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    return-void
.end method

.method public setLunar(Z)V
    .registers 14

    .line 662
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker;->doTabAnimate()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 666
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 667
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v3, v2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getMonth([I)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v0, v5

    .line 668
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getCurrentItem()I

    move-result v3

    add-int/2addr v3, v5

    aput v3, v0, v1

    const/4 v3, 0x3

    aput v4, v0, v3

    if-eqz p1, :cond_30

    .line 672
    aget v3, v0, v4

    aget v6, v0, v5

    aget v0, v0, v1

    invoke-static {v3, v6, v0}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v0

    goto :goto_41

    .line 674
    :cond_30
    aget v3, v0, v4

    aget v6, v0, v5

    aget v0, v0, v1

    aget v7, v2, v5

    if-ne v7, v5, :cond_3c

    move v7, v5

    goto :goto_3d

    :cond_3c
    move v7, v4

    :goto_3d
    invoke-static {v3, v6, v0, v7}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v0

    .line 678
    :goto_41
    aget v7, v0, v4

    aget v8, v0, v5

    aget v9, v0, v1

    aget v0, v2, v5

    if-ne v0, v5, :cond_4d

    move v11, v5

    goto :goto_4e

    :cond_4d
    move v11, v4

    :goto_4e
    move-object v6, p0

    move v10, p1

    invoke-virtual/range {v6 .. v11}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZ)V

    return-void
.end method

.method public setTextColor(III)V
    .registers 5

    .line 629
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextColor(II)V

    .line 630
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextColor(II)V

    .line 631
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 632
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 633
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz v0, :cond_1b

    .line 634
    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 637
    :cond_1b
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateDate(IIIZZ)V
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 710
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZZ)V

    return-void
.end method

.method public updateDate(IIIZZZ)V
    .registers 8

    .line 683
    iput-boolean p4, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    .line 684
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    .line 685
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    .line 686
    iput p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    .line 688
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    invoke-virtual {p1, p2, p3, v0, p5}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setMonth(IIIZ)V

    .line 690
    iget p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthOfDays:I

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, p2, p3, p4}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result p2

    if-eq p1, p2, :cond_36

    .line 691
    iget p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, p1, p2, p4}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthOfDays:I

    .line 692
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, p2, p3, p4}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->refreshCount(I)V

    .line 694
    :cond_36
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2, p6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setCurrentItem(IZ)V

    .line 696
    iget-boolean p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-eqz p1, :cond_5c

    .line 697
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 698
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 699
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_75

    .line 701
    :cond_5c
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 702
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 703
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_75
    return-void
.end method

.method public updateTime(IIZ)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_e

    .line 362
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    if-eq v2, p1, :cond_c

    .line 364
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    move p1, v1

    goto :goto_24

    :cond_c
    move p1, v0

    goto :goto_24

    .line 367
    :cond_e
    iput-boolean v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    .line 368
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    if-eq v2, p1, :cond_18

    .line 370
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    move p1, v1

    goto :goto_19

    :cond_18
    move p1, v0

    .line 372
    :goto_19
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_24

    sub-int/2addr v2, v3

    .line 373
    iput v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 374
    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    .line 378
    :cond_24
    :goto_24
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    if-eq v2, p2, :cond_2b

    .line 380
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    move v0, v1

    .line 383
    :cond_2b
    iget-object p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p3, p2, :cond_3c

    .line 384
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 385
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker;->inflateLayout()V

    :cond_3c
    if-eqz p1, :cond_45

    .line 389
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    invoke-virtual {p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    :cond_45
    if-eqz v0, :cond_4e

    .line 392
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    invoke-virtual {p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 394
    :cond_4e
    iget-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz p1, :cond_58

    .line 395
    iget-boolean p0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    xor-int/2addr p0, v1

    invoke-virtual {p1, p0}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    :cond_58
    return-void
.end method
