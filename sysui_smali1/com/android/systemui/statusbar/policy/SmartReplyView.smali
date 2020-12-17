.class public Lcom/android/systemui/statusbar/policy/SmartReplyView;
.super Landroid/view/ViewGroup;
.source "SmartReplyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;
    }
.end annotation


# static fields
.field private static final DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEASURE_SPEC_ANY_LENGTH:I


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mBreakIterator:Ljava/text/BreakIterator;

.field private mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field private mCurrentBackgroundColor:I

.field private final mDefaultBackgroundColor:I

.field private final mDefaultStrokeColor:I

.field private final mDefaultTextColor:I

.field private final mDefaultTextColorDarkBg:I

.field private final mDoubleLineButtonPaddingHorizontal:I

.field private final mHeightUpperLimit:I

.field private final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private final mMinStrokeContrast:D

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mRippleColor:I

.field private final mRippleColorDarkBg:I

.field private final mSingleLineButtonPaddingHorizontal:I

.field private final mSingleToDoubleLineButtonWidthIncrease:I

.field private mSmartRepliesGeneratedByAssistant:Z

.field private mSmartReplyContainer:Landroid/view/View;

.field private final mSpacing:I

.field private final mStrokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 58
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    .line 60
    sget-object v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;

    sput-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    .line 121
    const-class v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 122
    const-class v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 123
    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 125
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$dimen;->smart_reply_button_max_height:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    .line 128
    sget v1, Lcom/android/systemui/R$color;->smart_reply_button_background:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 129
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    .line 130
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->smart_reply_button_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    .line 131
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->smart_reply_button_text_dark_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    .line 132
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->smart_reply_button_stroke:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    .line 133
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->notification_ripple_untinted_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    .line 134
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    .line 136
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    invoke-static {v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    .line 144
    sget-object v1, Lcom/android/systemui/R$styleable;->SmartReplyView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_89
    if-ge v1, p2, :cond_b5

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 149
    sget v7, Lcom/android/systemui/R$styleable;->SmartReplyView_spacing:I

    if-ne v6, v7, :cond_98

    .line 150
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_b2

    .line 151
    :cond_98
    sget v7, Lcom/android/systemui/R$styleable;->SmartReplyView_singleLineButtonPaddingHorizontal:I

    if-ne v6, v7, :cond_a1

    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto :goto_b2

    .line 153
    :cond_a1
    sget v7, Lcom/android/systemui/R$styleable;->SmartReplyView_doubleLineButtonPaddingHorizontal:I

    if-ne v6, v7, :cond_aa

    .line 154
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_b2

    .line 155
    :cond_aa
    sget v7, Lcom/android/systemui/R$styleable;->SmartReplyView_buttonStrokeWidth:I

    if-ne v6, v7, :cond_b2

    .line 156
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    :cond_b2
    :goto_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 159
    :cond_b5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    .line 162
    iput v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 163
    iput v4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    .line 164
    iput v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 165
    iput v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    .line 169
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->reallocateCandidateButtonQueueForSqueezing()V

    return-void
.end method

.method private estimateOptimalSqueezedButtonTextWidth(Landroid/widget/Button;)I
    .registers 15

    .line 629
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-virtual {p1}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_17

    .line 634
    :cond_f
    invoke-interface {v1, v0, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    :goto_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 636
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 638
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_34

    .line 639
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v2

    if-ne v2, v3, :cond_34

    return v3

    .line 645
    :cond_34
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 646
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2}, Ljava/text/BreakIterator;->current()I

    move-result v2

    const/4 v4, 0x0

    .line 647
    invoke-static {v0, v4, v2, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v5

    .line 649
    invoke-static {v0, v2, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v2

    .line 650
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_96

    const/4 v5, 0x1

    if-lez v2, :cond_54

    move v2, v5

    goto :goto_55

    :cond_54
    move v2, v4

    .line 656
    :goto_55
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMaxSqueezeRemeasureAttempts()I

    move-result v7

    move v8, v6

    move v6, v4

    :goto_5d
    if-ge v6, v7, :cond_95

    .line 659
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    if-eqz v2, :cond_68

    invoke-virtual {v9}, Ljava/text/BreakIterator;->previous()I

    move-result v9

    goto :goto_6c

    :cond_68
    invoke-virtual {v9}, Ljava/text/BreakIterator;->next()I

    move-result v9

    :goto_6c
    if-ne v9, v3, :cond_6f

    goto :goto_95

    .line 664
    :cond_6f
    invoke-static {v0, v4, v9, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v10

    .line 666
    invoke-static {v0, v9, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    .line 667
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    cmpg-float v12, v11, v8

    if-gez v12, :cond_95

    if-eqz v2, :cond_86

    cmpg-float v8, v10, v9

    if-gtz v8, :cond_8c

    goto :goto_8a

    :cond_86
    cmpl-float v8, v10, v9

    if-ltz v8, :cond_8c

    :goto_8a
    move v8, v5

    goto :goto_8d

    :cond_8c
    move v8, v4

    :goto_8d
    if-eqz v8, :cond_91

    move v6, v11

    goto :goto_96

    :cond_91
    add-int/lit8 v6, v6, 0x1

    move v8, v11

    goto :goto_5d

    :cond_95
    :goto_95
    move v6, v8

    :cond_96
    :goto_96
    float-to-double p0, v6

    .line 683
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2d

    .line 597
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 598
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 599
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2a

    instance-of v5, v3, Landroid/widget/Button;

    if-nez v5, :cond_21

    goto :goto_2a

    .line 602
    :cond_21
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$000(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    move-result-object v4

    if-ne v4, p1, :cond_2a

    .line 603
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2d
    return-object v0
.end method

.method private getActivityStarter()Lcom/android/systemui/plugins/ActivityStarter;
    .registers 2

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_e

    .line 889
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 891
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method private getLeftCompoundDrawableWidthWithPadding(Landroid/widget/Button;)I
    .registers 3

    .line 691
    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    .line 692
    aget-object p0, p0, v0

    if-nez p0, :cond_a

    return v0

    .line 695
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private gotEnoughSmartReplies(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 579
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 580
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 581
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    if-eqz v1, :cond_2d

    .line 585
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMinNumSystemGeneratedReplies()I

    move-result p0

    if-lt v1, p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method public static inflate(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .registers 3

    .line 258
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->smart_reply_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    return-object p0
.end method

.method static inflateActionButton(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/content/Context;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Z)Landroid/widget/Button;
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v8, p0

    move-object v6, p4

    .line 333
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    move v5, p3

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Notification$Action;

    .line 334
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->smart_action_button:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 336
    iget-object v0, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    move-object v1, p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$dimen;->smart_action_button_icon_size:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 344
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    .line 345
    invoke-virtual {v9, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 347
    new-instance v10, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/app/Notification$Action;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    if-eqz p8, :cond_54

    .line 356
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;

    iget-object v1, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 357
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getOnClickInitDelay()J

    move-result-wide v1

    invoke-direct {v0, v10, v1, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;-><init>(Landroid/view/View$OnClickListener;J)V

    move-object v10, v0

    .line 359
    :cond_54
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    invoke-virtual {v9}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 363
    sget-object v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$002(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-object v9
.end method

.method static inflateReplyButton(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Landroid/widget/Button;
    .registers 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v9, p0

    .line 266
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->smart_reply_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    move-object v2, p3

    .line 268
    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    aget-object v3, v0, p2

    .line 269
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    new-instance v11, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;

    move-object v0, v11

    move-object v1, p0

    move v4, p2

    move-object v5, v10

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Ljava/lang/CharSequence;ILandroid/widget/Button;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;)V

    .line 305
    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$zCSq2JAz-cY64WTEY4XQsF-yGXs;

    move-object/from16 v1, p5

    invoke-direct {v0, p0, v11, v1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$zCSq2JAz-cY64WTEY4XQsF-yGXs;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eqz p6, :cond_3a

    .line 308
    new-instance v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;

    iget-object v2, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 309
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getOnClickInitDelay()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;-><init>(Landroid/view/View$OnClickListener;J)V

    move-object v0, v1

    .line 311
    :cond_3a
    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 322
    iget v0, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    iget v1, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget v2, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    iget v3, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    iget v4, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    move-object p0, v10

    move p1, v0

    move p2, v1

    move p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    invoke-static/range {p0 .. p5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;IIIII)V

    return-object v10
.end method

.method static synthetic lambda$inflateActionButton$3(Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 6

    .line 351
    iget-boolean p4, p4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->fromAssistant:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/SmartReplyController;->smartActionClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Z)V

    .line 353
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p5, p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    return-void
.end method

.method static synthetic lambda$inflateActionButton$4(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/app/Notification$Action;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/view/View;)V
    .registers 16

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getActivityStarter()Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    iget-object p7, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v7, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$TA933H11Yl_oDGgX0f0ntr5xGgI;-><init>(Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 354
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 348
    invoke-interface {p0, p7, v7, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$inflateReplyButton$1(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Ljava/lang/CharSequence;ILandroid/widget/Button;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;)Z
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 272
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    .line 273
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v3

    .line 272
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getEffectiveEditChoicesBeforeSending(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2d

    .line 274
    new-instance v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    move-object/from16 v2, p2

    move/from16 v5, p3

    invoke-direct {v10, v2, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;-><init>(Ljava/lang/CharSequence;I)V

    .line 276
    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    new-array v7, v3, [Landroid/app/RemoteInput;

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    aput-object v8, v7, v4

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z

    return v4

    :cond_2d
    move-object/from16 v2, p2

    move/from16 v5, p3

    .line 282
    invoke-virtual/range {p4 .. p4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    .line 283
    invoke-static/range {p6 .. p6}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p3

    .line 282
    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/statusbar/SmartReplyController;->smartReplySent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILjava/lang/CharSequence;IZ)V

    .line 285
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 286
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    new-array v6, v3, [Landroid/app/RemoteInput;

    .line 288
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    aput-object v7, v6, v4

    invoke-static {v6, v2, v5}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 290
    invoke-static {v2, v3}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 291
    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHasSentReply()V

    .line 293
    :try_start_74
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v3, p7

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_7b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_74 .. :try_end_7b} :catch_7c

    goto :goto_84

    :catch_7c
    move-exception v0

    const-string v2, "SmartReplyView"

    const-string v3, "Unable to send smart reply"

    .line 295
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :goto_84
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return v4
.end method

.method static synthetic lambda$inflateReplyButton$2(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;)V
    .registers 4

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/view/View;Landroid/view/View;)I
    .registers 4

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method private markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 781
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 782
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 783
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$400(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 784
    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$402(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    goto :goto_4

    :cond_21
    return-void
.end method

.method private reallocateCandidateButtonQueueForSqueezing()V
    .registers 4

    .line 186
    new-instance v0, Ljava/util/PriorityQueue;

    .line 187
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    return-void
.end method

.method private remeasureButtonsIfNecessary(II)V
    .registers 13

    const/high16 v0, 0x40000000  # 2.0f

    .line 729
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 731
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_66

    .line 733
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 734
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 735
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_63

    .line 740
    :cond_1f
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 744
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$400(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I

    move-result v5

    const/4 v7, 0x3

    const v8, 0x7fffffff

    const/4 v9, 0x1

    if-ne v5, v7, :cond_31

    move v6, v8

    move v5, v9

    goto :goto_32

    :cond_31
    move v5, v2

    .line 751
    :goto_32
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    if-eq v7, p1, :cond_51

    if-eq v6, v8, :cond_45

    .line 754
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    if-ne p1, v5, :cond_42

    .line 756
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    sub-int/2addr v6, v5

    goto :goto_45

    .line 759
    :cond_42
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    add-int/2addr v6, v5

    .line 762
    :cond_45
    :goto_45
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 763
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 762
    invoke-virtual {v4, p1, v5, p1, v7}, Landroid/view/View;->setPadding(IIII)V

    move v5, v9

    .line 768
    :cond_51
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v7, p2, :cond_58

    move v5, v9

    :cond_58
    if-eqz v5, :cond_63

    const/high16 v5, -0x80000000

    .line 773
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_66
    return-void
.end method

.method private resetButtonsLayoutParams()V
    .registers 5

    .line 610
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1b

    .line 612
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 613
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 614
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    .line 615
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$402(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return-void
.end method

.method private static setButtonColors(Landroid/widget/Button;IIIII)V
    .registers 8

    .line 850
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 851
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_34

    .line 853
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 854
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 855
    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const/4 p4, 0x0

    .line 856
    invoke-virtual {v1, p4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 857
    instance-of v1, p4, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_31

    .line 858
    check-cast p4, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 859
    instance-of v1, p4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_31

    .line 860
    check-cast p4, Landroid/graphics/drawable/GradientDrawable;

    .line 861
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 862
    invoke-virtual {p4, p5, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 865
    :cond_31
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 867
    :cond_34
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private setCornerRadius(Landroid/widget/Button;F)V
    .registers 3

    .line 871
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 872
    instance-of p1, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_26

    .line 874
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 875
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    const/4 p1, 0x0

    .line 876
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 877
    instance-of p1, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_26

    .line 878
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 879
    instance-of p1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_26

    .line 880
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 881
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_26
    return-void
.end method

.method private squeezeButton(Landroid/widget/Button;I)I
    .registers 5

    .line 620
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->estimateOptimalSqueezedButtonTextWidth(Landroid/widget/Button;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return v1

    .line 624
    :cond_8
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->squeezeButtonToTextWidth(Landroid/widget/Button;II)I

    move-result p0

    return p0
.end method

.method private squeezeButtonToTextWidth(Landroid/widget/Button;II)I
    .registers 9

    .line 699
    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    .line 700
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    if-eq v1, v2, :cond_f

    .line 703
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    add-int/2addr v0, v1

    .line 707
    :cond_f
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    .line 708
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v4

    .line 707
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 709
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 711
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getLeftCompoundDrawableWidthWithPadding(Landroid/widget/Button;)I

    move-result p0

    add-int/2addr v1, p0

    const/high16 p0, -0x80000000

    .line 709
    invoke-static {v1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 712
    invoke-virtual {p1, p0, p2}, Landroid/widget/Button;->measure(II)V

    .line 714
    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p0

    .line 716
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 717
    invoke-virtual {p1}, Landroid/widget/Button;->getLineCount()I

    move-result p1

    if-gt p1, v2, :cond_4a

    if-lt p0, v0, :cond_44

    goto :goto_4a

    :cond_44
    const/4 p1, 0x1

    .line 721
    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$402(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    sub-int/2addr v0, p0

    return v0

    :cond_4a
    :goto_4a
    const/4 p0, 0x3

    .line 718
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$402(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addPreInflatedButtons(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 205
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 207
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->reallocateCandidateButtonQueueForSqueezing()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .line 820
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 821
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateDefaultLayoutParams()Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .registers 3

    .line 374
    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 379
    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .registers 4

    .line 369
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object v0
.end method

.method public getHeightUpperLimit()I
    .registers 1

    .line 178
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    return p0
.end method

.method public inflateRepliesFromRemoteInput(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2f

    .line 222
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    .line 223
    :goto_12
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_2b

    .line 225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, p0

    move v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .line 224
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflateReplyButton(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 228
    :cond_2b
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    :cond_2f
    return-object v0
.end method

.method public inflateSmartActions(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Z)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    move-object v9, p2

    .line 241
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v0, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v0, 0x0

    move v12, v0

    :goto_e
    if-ge v12, v11, :cond_36

    .line 244
    iget-object v0, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 245
    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_33

    .line 247
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, v12

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    .line 246
    invoke-static/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflateActionButton(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/content/Context;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_36
    return-object v10
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .line 791
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-ne p1, p5, :cond_9

    goto :goto_a

    :cond_9
    move p5, p3

    :goto_a
    sub-int/2addr p4, p2

    if-eqz p5, :cond_11

    .line 794
    iget p1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr p4, p1

    goto :goto_13

    :cond_11
    iget p4, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    .line 796
    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, p3

    :goto_18
    if-ge p2, p1, :cond_49

    .line 798
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 800
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_46

    .line 804
    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 805
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eqz p5, :cond_38

    sub-int v3, p4, v1

    goto :goto_39

    :cond_38
    move v3, p4

    :goto_39
    add-int v4, v3, v1

    .line 807
    invoke-virtual {v0, v3, p3, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 809
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    add-int/2addr v1, v0

    if-eqz p5, :cond_45

    sub-int/2addr p4, v1

    goto :goto_46

    :cond_45
    add-int/2addr p4, v1

    :goto_46
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_49
    return-void
.end method

.method protected onMeasure(II)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 384
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_e

    const v2, 0x7fffffff

    goto :goto_12

    .line 385
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 388
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resetButtonsLayoutParams()V

    .line 390
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "SmartReplyView"

    const-string v4, "Single line button queue leaked between onMeasure calls"

    .line 391
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    .line 395
    :cond_29
    new-instance v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    iget v4, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v5, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(III)V

    .line 406
    sget-object v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    move-result-object v4

    .line 407
    sget-object v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    move-result-object v5

    .line 408
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 416
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMaxNumActions()I

    move-result v9

    .line 419
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v12, v6

    move-object v11, v8

    move-object v8, v3

    move v3, v12

    :goto_5e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_160

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 420
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v15, -0x1

    if-eq v9, v15, :cond_83

    .line 422
    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$000(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    move-result-object v6

    sget-object v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v6, v15, :cond_83

    if-lt v3, v9, :cond_83

    move/from16 v16, v9

    move-object/from16 v17, v10

    goto/16 :goto_159

    .line 428
    :cond_83
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    move/from16 v16, v9

    iget v9, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    move-object/from16 v17, v10

    .line 429
    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 428
    invoke-virtual {v13, v6, v15, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 430
    sget v6, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    invoke-virtual {v13, v6, v1}, Landroid/view/View;->measure(II)V

    .line 432
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    move-object v6, v13

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getLineCount()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_159

    const/4 v15, 0x2

    if-le v9, v15, :cond_ad

    goto/16 :goto_159

    :cond_ad
    if-ne v9, v10, :cond_b4

    .line 441
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v10, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_b4
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    move-result-object v6

    if-nez v11, :cond_c7

    .line 446
    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$000(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    move-result-object v10

    sget-object v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v10, v15, :cond_c7

    .line 449
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    move-result-object v10

    move-object v11, v10

    :cond_c7
    if-nez v12, :cond_cb

    const/4 v10, 0x0

    goto :goto_cd

    .line 452
    :cond_cb
    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 453
    :goto_cd
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 454
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v18, v6

    .line 455
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    add-int/2addr v10, v15

    add-int/2addr v6, v10

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 456
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 457
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 460
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    if-ne v6, v10, :cond_f4

    const/4 v6, 0x2

    if-eq v9, v6, :cond_f2

    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v6, v2, :cond_f4

    :cond_f2
    const/4 v6, 0x1

    goto :goto_f5

    :cond_f4
    const/4 v6, 0x0

    :goto_f5
    if-eqz v6, :cond_105

    .line 465
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    add-int/lit8 v9, v12, 0x1

    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    mul-int/2addr v9, v10

    add-int/2addr v6, v9

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 467
    iget v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    .line 473
    :cond_105
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v6, v2, :cond_149

    .line 475
    :cond_109
    :goto_109
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v6, v2, :cond_136

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 476
    invoke-virtual {v6}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_136

    .line 477
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 478
    invoke-direct {v0, v6, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->squeezeButton(Landroid/widget/Button;I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_109

    .line 480
    iget v13, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 482
    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v6

    .line 481
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 483
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    sub-int/2addr v6, v9

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    goto :goto_109

    .line 489
    :cond_136
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v6, v2, :cond_145

    const/4 v6, 0x3

    .line 494
    invoke-direct {v0, v6, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    move/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    goto :goto_15d

    :cond_145
    const/4 v6, 0x2

    .line 504
    invoke-direct {v0, v6, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    :cond_149
    const/4 v6, 0x1

    .line 508
    invoke-static {v14, v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    add-int/lit8 v12, v12, 0x1

    .line 510
    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$000(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    move-result-object v6

    sget-object v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v6, v9, :cond_159

    add-int/lit8 v3, v3, 0x1

    :cond_159
    :goto_159
    move/from16 v9, v16

    move-object/from16 v10, v17

    :goto_15d
    const/4 v6, 0x0

    goto/16 :goto_5e

    .line 515
    :cond_160
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    if-eqz v2, :cond_186

    .line 516
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->gotEnoughSmartReplies(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_186

    .line 518
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_185

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 519
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v4, 0x0

    .line 520
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    goto :goto_16e

    :cond_185
    move-object v8, v11

    .line 529
    :cond_186
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    .line 532
    iget v2, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    iget v3, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->remeasureButtonsIfNecessary(II)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 540
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 541
    check-cast v4, Landroid/widget/Button;

    int-to-float v5, v2

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setCornerRadius(Landroid/widget/Button;F)V

    goto :goto_1a6

    .line 545
    :cond_1ba
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    iget v4, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v4, p1

    invoke-static {v3, v4}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v3

    .line 548
    invoke-static {v2, v1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v1

    .line 544
    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public resetSmartSuggestions(Landroid/view/View;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    .line 195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 196
    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    return-void
.end method

.method public setBackgroundTintColor(I)V
    .registers 13

    .line 825
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    if-ne p1, v0, :cond_5

    return-void

    .line 829
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 831
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    .line 834
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    goto :goto_14

    :cond_12
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    :goto_14
    const/high16 v2, -0x1000000

    or-int/2addr v2, p1

    .line 833
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    .line 836
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    invoke-static {v3, v2, v0, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result v2

    if-eqz v0, :cond_28

    .line 838
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    goto :goto_2a

    :cond_28
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    .line 840
    :goto_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v3, 0x0

    move v10, v3

    :goto_30
    if-ge v10, v9, :cond_44

    .line 842
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 843
    iget v8, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    move v4, p1

    move v5, v2

    move v6, v1

    move v7, v0

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;IIIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_44
    return-void
.end method
