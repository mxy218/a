.class public Lcom/meizu/common/widget/ContentToastLayout;
.super Landroid/widget/FrameLayout;
.source "ContentToastLayout.java"


# instance fields
.field private mActionIconView:Landroid/widget/ImageView;

.field private mActionTextAppearance:I

.field private mActionTextView:Landroid/widget/TextView;

.field private mActionViewBackground:Landroid/graphics/drawable/Drawable;

.field private mContainerLayout:Landroid/widget/LinearLayout;

.field private mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

.field private mLayoutBackground:Landroid/graphics/drawable/Drawable;

.field private mMaxIconSize:I

.field private mParentLayout:Landroid/widget/LinearLayout;

.field private mSeparatorView:Landroid/view/View;

.field private mText:Ljava/lang/String;

.field private mTitleTextAppearance:I

.field private mTitleView:Landroid/widget/TextView;

.field private mToastType:I

.field private mWarningIcon:Landroid/graphics/drawable/Drawable;

.field private mWarningView:Landroid/widget/ImageView;

.field private mWidgetLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 56
    sget v0, Lcom/meizu/common/R$attr;->mzContentToastLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    .line 49
    iput v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mToastType:I

    .line 62
    sget-object v0, Lcom/meizu/common/R$styleable;->mzContentToastLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 63
    sget p3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzActionTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextAppearance:I

    .line 64
    sget p3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzTitleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleTextAppearance:I

    .line 65
    sget p3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzContentToastBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    .line 66
    sget p3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzActionIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    sget p3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzActionViewBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionViewBackground:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42000000  # 32.0f

    mul-float/2addr p2, p3

    const/high16 p3, 0x3f000000  # 0.5f

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 70
    iput p2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 73
    sget p3, Lcom/meizu/common/R$layout;->mc_content_toast_layout:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    sget p2, Lcom/meizu/common/R$id;->mc_content_toast_parent:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    .line 75
    iget-object p2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1020018

    .line 76
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    const p2, 0x1020016

    .line 77
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    .line 78
    iget-object p2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    iget p3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleTextAppearance:I

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const p1, 0x1020006

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    .line 80
    sget p1, Lcom/meizu/common/R$id;->mc_toast_separator:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    .line 81
    sget p1, Lcom/meizu/common/R$id;->mc_content_toast_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 84
    sget p1, Lcom/meizu/common/R$id;->mz_action_text:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextView:Landroid/widget/TextView;

    .line 85
    sget p1, Lcom/meizu/common/R$id;->mz_action_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionIconView:Landroid/widget/ImageView;

    return-void
.end method

.method private ensureActionView()V
    .registers 5

    .line 166
    iget v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mToastType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    const/4 v3, 0x1

    if-eq v0, v3, :cond_19

    const/4 v3, 0x2

    if-eq v0, v3, :cond_e

    goto :goto_23

    .line 174
    :cond_e
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_23

    .line 170
    :cond_19
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_23
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 183
    const-class p0, Lcom/meizu/common/widget/ContentToastLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 151
    invoke-direct {p0}, Lcom/meizu/common/widget/ContentToastLayout;->ensureActionView()V

    .line 152
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 124
    invoke-direct {p0}, Lcom/meizu/common/widget/ContentToastLayout;->ensureActionView()V

    .line 125
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_29

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 128
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 129
    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    if-le v0, v2, :cond_1a

    int-to-float v3, v2

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v1, v0

    move v0, v2

    .line 134
    :cond_1a
    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    if-le v1, v2, :cond_25

    int-to-float v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    move v1, v2

    :cond_25
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    :cond_29
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setActionText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 161
    invoke-direct {p0}, Lcom/meizu/common/widget/ContentToastLayout;->ensureActionView()V

    .line 162
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContainerLayoutPadding(I)V
    .registers 3

    .line 220
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mContainerLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setIsShowSeparator(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 208
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 211
    :cond_9
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    .line 299
    iget-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setParentLayoutPadding(I)V
    .registers 3

    .line 228
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mText:Ljava/lang/String;

    .line 102
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleGravity(I)V
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    and-int/lit8 v1, p1, 0x70

    const/16 v2, 0x10

    if-eq v1, v2, :cond_23

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1d

    const/16 v2, 0x50

    if-eq v1, v2, :cond_17

    goto :goto_28

    :cond_17
    const/16 v1, 0xc

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    :cond_1d
    const/16 v1, 0xa

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_28

    :cond_23
    const/16 v1, 0xf

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_28
    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-eq p1, v1, :cond_42

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3c

    const/4 v1, 0x5

    if-eq p1, v1, :cond_36

    goto :goto_45

    :cond_36
    const/16 p1, 0xb

    .line 290
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_45

    :cond_3c
    const/16 p1, 0x9

    .line 284
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_45

    .line 287
    :cond_42
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 293
    :goto_45
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitleTextMaxLine(I)V
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setToastType(I)V
    .registers 5

    .line 236
    iput p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mToastType:I

    const/4 v0, 0x0

    if-eqz p1, :cond_6e

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_24

    .line 239
    iget-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleTextAppearance:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 240
    iget-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    :cond_24
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_76

    .line 251
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mz_ic_content_toast_warning:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

    .line 252
    iget-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mz_arrow_next_right_warning:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_content_toast_text_color_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_content_toast_bg_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_76

    .line 247
    :cond_6e
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_76
    return-void
.end method

.method public setWarningIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningIcon:Landroid/graphics/drawable/Drawable;

    .line 116
    iget-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
