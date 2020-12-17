.class public Lcom/meizu/common/datetimepicker/date/SimpleMonthView;
.super Lcom/meizu/common/datetimepicker/date/MonthView;
.source "SimpleMonthView.java"


# instance fields
.field private isShowLunar:Z

.field private leap:Ljava/lang/String;

.field private mLunarValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mLunardays:[Ljava/lang/String;

.field private mMonthText:Ljava/lang/String;

.field private mRadius:F

.field private mouths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/common/datetimepicker/date/MonthView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isShowLunar:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarValue:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunardays:[Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->leap:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mouths:[Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthText:Ljava/lang/String;

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    .line 48
    invoke-static {p1, v0, v1}, Lcom/meizu/common/util/ScreenUtil;->dip2px(Landroid/content/Context;D)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mRadius:F

    return-void
.end method

.method private getLunarDays(I)Ljava/lang/String;
    .registers 3

    .line 53
    iget-object p0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunardays:[Ljava/lang/String;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_9
    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method public drawMonthDay(Landroid/graphics/Canvas;IIIFFFFFF)V
    .registers 15

    .line 70
    invoke-virtual {p0, p2, p3, p4}, Lcom/meizu/common/datetimepicker/date/MonthView;->isOutOfRange(III)Z

    move-result p7

    if-eqz p7, :cond_1c

    .line 71
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mDisabledDayTextColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mDisabledDayTextColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mDisabledDayTextColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7e

    .line 74
    :cond_1c
    iget p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectedDay:I

    if-ne p7, p4, :cond_3d

    .line 75
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectDayColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectDayColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectPaintAlpha:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectDayColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7e

    .line 79
    :cond_3d
    iget-boolean p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mHasToday:Z

    if-eqz p7, :cond_62

    iget p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mToday:I

    if-ne p7, p4, :cond_62

    .line 80
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mTodayNumberColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mTodayNumberColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectPaintAlpha:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7e

    .line 85
    :cond_62
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mDayTextColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mLunarColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mLunarPaintAlpha:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    iget-object p7, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindColor:I

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    :goto_7e
    invoke-virtual {p0, p4}, Lcom/meizu/common/datetimepicker/date/MonthView;->isEventRemindDay(I)Z

    move-result p7

    .line 92
    iget p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mGregorianMarginTop:I

    int-to-float p8, p8

    add-float/2addr p6, p8

    .line 93
    iget-boolean p8, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isShowLunar:Z

    if-eqz p8, :cond_b5

    .line 94
    iget-object p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthNumFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p8, p8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p8, p8

    add-float/2addr p8, p6

    iget p10, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mPaddingOffset:I

    int-to-float p10, p10

    add-float/2addr p8, p10

    iget-object p10, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthLunarLabelFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, p10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    sub-float/2addr p8, v0

    iget p10, p10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v0, p10

    sub-float/2addr p8, v0

    if-eqz p7, :cond_af

    .line 96
    iget v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventDotMarginTop:I

    int-to-float v1, v0

    add-float/2addr v1, p8

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindRadios:F

    add-float/2addr v1, v2

    int-to-float v3, p10

    add-float/2addr v1, v3

    int-to-float p10, p10

    add-float/2addr p10, p8

    int-to-float v0, v0

    add-float/2addr p10, v0

    add-float/2addr p10, v2

    goto :goto_c9

    :cond_af
    int-to-float v0, p10

    add-float v1, p8, v0

    int-to-float p10, p10

    add-float/2addr p10, p8

    goto :goto_c9

    :cond_b5
    if-eqz p7, :cond_c6

    .line 105
    iget-object p8, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthNumFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p8, p8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p8, p8

    add-float/2addr p8, p6

    iget p10, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventDotMarginTop:I

    int-to-float p10, p10

    add-float/2addr p8, p10

    iget p10, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindRadios:F

    add-float/2addr p8, p10

    move v1, p8

    goto :goto_c7

    :cond_c6
    move v1, p6

    :goto_c7
    move p8, p6

    move p10, v1

    .line 112
    :goto_c9
    iget v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectedDay:I

    if-ne v0, p4, :cond_f5

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 114
    iput p9, v0, Landroid/graphics/RectF;->top:F

    .line 115
    iget p9, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mBgMarginTop:I

    int-to-float p9, p9

    add-float/2addr p10, p9

    iput p10, v0, Landroid/graphics/RectF;->bottom:F

    if-eqz p7, :cond_e3

    .line 117
    iget p9, v0, Landroid/graphics/RectF;->bottom:F

    iget p10, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindRadios:F

    add-float/2addr p9, p10

    iput p9, v0, Landroid/graphics/RectF;->bottom:F

    .line 119
    :cond_e3
    iget p9, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mBgPaddingLeftRight:I

    int-to-float p10, p9

    sub-float p10, p5, p10

    iput p10, v0, Landroid/graphics/RectF;->left:F

    int-to-float p9, p9

    add-float/2addr p9, p5

    .line 120
    iput p9, v0, Landroid/graphics/RectF;->right:F

    .line 121
    iget p9, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mRadius:F

    iget-object p10, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p9, p9, p10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 124
    :cond_f5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p9

    const/4 p10, 0x1

    new-array v0, p10, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p9, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p9

    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p9, p5, p6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 126
    iget-boolean p6, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isShowLunar:Z

    if-eqz p6, :cond_1ae

    const/4 p6, 0x4

    new-array p6, p6, [I

    aput p2, p6, v3

    add-int/2addr p3, p10

    aput p3, p6, p10

    const/4 p3, 0x2

    aput p4, p6, p3

    const/4 p9, 0x3

    aput v3, p6, p9

    .line 133
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarValue:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 135
    iget-object p6, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarValue:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p6, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    goto :goto_14d

    .line 138
    :cond_139
    aget v0, p6, v3

    aget v2, p6, p10

    aget p6, p6, p3

    invoke-static {v0, v2, p6}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object p6

    .line 139
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarValue:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p4, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p4, p6

    .line 143
    :goto_14d
    aget p6, p4, p3

    if-ne p6, p10, :cond_194

    .line 145
    invoke-static {p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result p2

    .line 146
    aget p3, p4, p10

    if-ne p3, p2, :cond_17b

    aget p2, p4, p9

    if-ne p2, p10, :cond_17b

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->leap:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mouths:[Ljava/lang/String;

    aget p4, p4, p10

    sub-int/2addr p4, p10

    aget-object p3, p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_19b

    .line 149
    :cond_17b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mouths:[Ljava/lang/String;

    aget p4, p4, p10

    sub-int/2addr p4, p10

    aget-object p3, p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_19b

    .line 153
    :cond_194
    aget p2, p4, p3

    sub-int/2addr p2, p10

    invoke-direct {p0, p2}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->getLunarDays(I)Ljava/lang/String;

    move-result-object p2

    .line 156
    :goto_19b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    new-array p4, p10, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "%s"

    invoke-static {p3, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, p8, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1ae
    if-eqz p7, :cond_1d5

    .line 161
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 162
    iget p3, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindRadios:F

    const/high16 p4, 0x40000000  # 2.0f

    div-float p6, p3, p4

    sub-float p6, v1, p6

    iput p6, p2, Landroid/graphics/RectF;->top:F

    div-float p6, p3, p4

    add-float/2addr v1, p6

    .line 163
    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 164
    iget p6, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindWidth:F

    div-float p7, p6, p4

    sub-float p7, p5, p7

    iput p7, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr p6, p4

    add-float/2addr p5, p6

    .line 165
    iput p5, p2, Landroid/graphics/RectF;->right:F

    .line 166
    iget-object p0, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1d5
    return-void
.end method

.method protected drawMonthNums(Landroid/graphics/Canvas;)V
    .registers 18

    move-object/from16 v11, p0

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v0

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/datetimepicker/date/MonthView;->findDayOffset()I

    move-result v1

    const/4 v12, 0x1

    move v15, v0

    move v14, v1

    move v13, v12

    .line 177
    :goto_e
    iget v0, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumCells:I

    if-gt v13, v0, :cond_84

    .line 179
    iget-boolean v0, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->isRTL:Z

    if-eqz v0, :cond_2f

    .line 181
    iget-object v0, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mTempRect:Landroid/graphics/RectF;

    iget v1, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumDays:I

    sub-int/2addr v1, v14

    sub-int/2addr v1, v12

    iget v2, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mCellWidth:I

    mul-int/2addr v1, v2

    iget v3, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mEdgePadding:I

    add-int/2addr v1, v3

    iget v3, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mOffsetX:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 182
    iget v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_44

    .line 185
    :cond_2f
    iget-object v0, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mTempRect:Landroid/graphics/RectF;

    iget v1, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mCellWidth:I

    mul-int v2, v14, v1

    iget v3, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mEdgePadding:I

    add-int/2addr v2, v3

    iget v3, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mOffsetX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 186
    iget v2, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 188
    :goto_44
    iget-object v0, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mTempRect:Landroid/graphics/RectF;

    int-to-float v1, v15

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 189
    iget v1, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mRowHeight:I

    add-int/2addr v1, v15

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 192
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonthNumFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v2, v2

    sub-float v6, v1, v2

    .line 194
    iget v2, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mYear:I

    iget v3, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonth:I

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v0, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mTempRect:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget v9, v0, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    invoke-virtual/range {v0 .. v10}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->drawMonthDay(Landroid/graphics/Canvas;IIIFFFFFF)V

    add-int/lit8 v14, v14, 0x1

    .line 199
    iget v0, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumDays:I

    if-ne v14, v0, :cond_81

    const/4 v0, 0x0

    .line 201
    iget v1, v11, Lcom/meizu/common/datetimepicker/date/MonthView;->mRowHeight:I

    add-int/2addr v15, v1

    move v14, v0

    :cond_81
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_84
    return-void
.end method

.method public setShowLunar(Z)V
    .registers 2

    .line 208
    iput-boolean p1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isShowLunar:Z

    return-void
.end method
