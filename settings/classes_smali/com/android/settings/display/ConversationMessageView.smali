.class public Lcom/android/settings/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private mContactIconView:Landroid/widget/TextView;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private mMessageBubble:Landroid/widget/LinearLayout;

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private final mTimestampText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    sget-object p3, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x3

    .line 72
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    const/4 p4, 0x4

    .line 73
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    const/4 p4, 0x5

    .line 74
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 76
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    .line 77
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    .line 79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d008d

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d008c

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 260
    :cond_12
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private updateTextAppearance()V
    .registers 4

    .line 242
    iget-boolean v0, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_8

    const v0, 0x7f06016b

    goto :goto_b

    :cond_8
    const v0, 0x7f06016c

    .line 244
    :goto_b
    iget-boolean v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v1, :cond_13

    const v1, 0x7f0602c2

    goto :goto_16

    :cond_13
    const v1, 0x7f0602c3

    .line 246
    :goto_16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 248
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 250
    iget-object p0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateViewAppearance()V
    .registers 12

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070325

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070329

    .line 186
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f07032a

    .line 188
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f070328

    .line 190
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 195
    iget-boolean v5, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v5, :cond_26

    add-int/2addr v1, v2

    goto :goto_2a

    :cond_26
    add-int/2addr v1, v2

    move v10, v2

    move v2, v1

    move v1, v10

    .line 204
    :goto_2a
    iget-boolean v5, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v5, :cond_32

    const v5, 0x800013

    goto :goto_35

    :cond_32
    const v5, 0x800015

    :goto_35
    const v6, 0x7f070327

    .line 206
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f070326

    .line 208
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 212
    iget-boolean v7, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v7, :cond_4b

    const v7, 0x7f0803c4

    goto :goto_4e

    :cond_4b
    const v7, 0x7f0803c5

    .line 214
    :goto_4e
    iget-boolean v8, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v8, :cond_56

    const v8, 0x7f060165

    goto :goto_59

    :cond_56
    const v8, 0x7f060166

    .line 216
    :goto_59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 219
    invoke-virtual {v9, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 220
    invoke-virtual {v9, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 218
    invoke-static {v9, v7, v8}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 221
    iget-object v8, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 225
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    add-int/2addr v3, v0

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_81

    .line 229
    :cond_7b
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    add-int/2addr v3, v0

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 235
    :goto_81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v6, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateTextAppearance()V

    return-void
.end method

.method private updateViewContent()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p0, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    invoke-static {v2, v0, p0}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    const v0, 0x7f0a0436

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    const v0, 0x7f0a043a

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0439

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0438

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    const v0, 0x7f0a01b6

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 91
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewContent()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .line 130
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 132
    iget-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    .line 133
    iget-object p5, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    .line 134
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p4, p2

    sub-int p2, p4, p3

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 136
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 142
    iget-boolean v2, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v2, :cond_37

    if-eqz p1, :cond_32

    .line 144
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p1

    goto :goto_44

    .line 147
    :cond_32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    goto :goto_3d

    :cond_37
    if-eqz p1, :cond_40

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    :goto_3d
    add-int p1, p4, p3

    goto :goto_48

    .line 155
    :cond_40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p1

    :goto_44
    sub-int/2addr p4, p1

    sub-int/2addr p4, p3

    sub-int p1, p4, p2

    .line 160
    :goto_48
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    add-int/2addr p3, p4

    add-int/2addr p5, v0

    invoke-virtual {v2, p4, v0, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 162
    iget-object p0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    add-int/2addr p2, p1

    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 96
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewAppearance()V

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 p2, 0x0

    .line 100
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 101
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 103
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 104
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, 0x40000000  # 2.0f

    .line 104
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 107
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070325

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 115
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sub-int/2addr v1, p2

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr v1, p2

    const/high16 p2, -0x80000000

    .line 117
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 120
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 122
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 123
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 122
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method
