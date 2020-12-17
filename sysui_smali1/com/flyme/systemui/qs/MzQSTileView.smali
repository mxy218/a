.class public Lcom/flyme/systemui/qs/MzQSTileView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "MzQSTileView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/MzQSTileView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private mClickPrimary:Landroid/view/View$OnClickListener;

.field private mClickSecondary:Landroid/view/View$OnClickListener;

.field private mClicked:Z

.field protected final mContext:Landroid/content/Context;

.field private mDual:Z

.field private mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

.field private mDualTileVerticalPaddingPx:I

.field private final mHandler:Lcom/flyme/systemui/qs/MzQSTileView$H;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private mIconSizePx:I

.field private mLabel:Landroid/widget/TextView;

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mTilePaddingBelowIconPx:I

.field private mTilePaddingTopPx:I

.field private mTileSpacingPx:I

.field private mTileState:Z

.field private final mTopBackgroundView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .registers 4

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/flyme/systemui/qs/MzQSTileView$H;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/MzQSTileView$H;-><init>(Lcom/flyme/systemui/qs/MzQSTileView;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mHandler:Lcom/flyme/systemui/qs/MzQSTileView$H;

    .line 61
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->updateResources()V

    .line 63
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->recreateLabel()V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 66
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTopBackgroundView:Landroid/view/View;

    .line 67
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    iput-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 70
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->updateTopPadding()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/qs/MzQSTileView;)Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private static exactly(I)I
    .registers 2

    const/high16 v0, 0x40000000  # 2.0f

    .line 209
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private labelView()Landroid/view/View;
    .registers 2

    .line 192
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDual:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    :goto_9
    return-object p0
.end method

.method static synthetic lambda$init$0(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .registers 2

    .line 365
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    return-void
.end method

.method static synthetic lambda$init$1(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .registers 2

    .line 365
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick()V

    return-void
.end method

.method static synthetic lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z
    .registers 2

    .line 366
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick()V

    const/4 p0, 0x1

    return p0
.end method

.method private static layout(Landroid/view/View;II)V
    .registers 5

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private recreateLabel()V
    .registers 12

    .line 99
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 100
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 102
    iput-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    goto :goto_12

    :cond_11
    move-object v0, v1

    .line 104
    :goto_12
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v2, :cond_28

    .line 105
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSDualTileLabel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    iput-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    move-object v1, v2

    .line 110
    :cond_28
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "sans-serif-medium"

    .line 111
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 112
    iget-boolean v5, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDual:Z

    const/4 v6, -0x1

    const v7, -0x4c000001

    const v8, 0x1020016

    const/4 v9, 0x1

    if-eqz v5, :cond_ad

    .line 113
    new-instance v5, Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v10, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/systemui/qs/QSDualTileLabel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 114
    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 115
    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    sget v8, Lcom/android/systemui/R$drawable;->btn_borderless_rect:I

    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/QSDualTileLabel;->setPartialBackgroundResource(I)V

    .line 116
    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    sget v8, Lcom/android/systemui/R$drawable;->qs_dual_tile_caret:I

    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/QSDualTileLabel;->setFirstLineCaret(I)V

    .line 117
    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextColor(I)V

    .line 118
    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    iget-object v4, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    sget v5, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    .line 121
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 120
    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 122
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v4, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    new-instance v4, Lcom/flyme/systemui/qs/MzQSTileView$1;

    invoke-direct {v4, p0}, Lcom/flyme/systemui/qs/MzQSTileView$1;-><init>(Lcom/flyme/systemui/qs/MzQSTileView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    if-eqz v0, :cond_95

    .line 131
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    :cond_95
    if-eqz v1, :cond_9c

    .line 134
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    :cond_9c
    sget v0, Lcom/android/systemui/R$dimen;->mz_tile_label_touch_height:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11b

    .line 139
    :cond_ad
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 141
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setId(I)V

    .line 142
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 144
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 145
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 147
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    .line 149
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 148
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 150
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    new-instance v3, Lcom/flyme/systemui/qs/MzQSTileView$2;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/qs/MzQSTileView$2;-><init>(Lcom/flyme/systemui/qs/MzQSTileView;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    if-eqz v0, :cond_10b

    .line 159
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_10b
    sget v0, Lcom/android/systemui/R$dimen;->mz_tile_label_height:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11b
    return-void
.end method

.method private setClickEnabled(Z)V
    .registers 7

    .line 311
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDual:Z

    const v1, -0x4c000001

    const v2, 0x5affffff

    if-eqz v0, :cond_35

    .line 312
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v0, :cond_41

    .line 314
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const/4 v3, 0x0

    if-eqz p1, :cond_1e

    sget v4, Lcom/android/systemui/R$drawable;->btn_borderless_rect:I

    goto :goto_1f

    :cond_1e
    move v4, v3

    :goto_1f
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSDualTileLabel;->setPartialBackgroundResource(I)V

    .line 316
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz p1, :cond_28

    sget v3, Lcom/android/systemui/R$drawable;->qs_dual_tile_caret:I

    :cond_28
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSDualTileLabel;->setFirstLineCaret(I)V

    .line 317
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextColor(I)V

    goto :goto_41

    .line 320
    :cond_35
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSoundEffectsEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/flyme/systemui/qs/QSTileAnimationView;

    if-eqz v0, :cond_56

    .line 325
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/qs/QSTileAnimationView;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/QSTileAnimationView;->setClickEnabled(Z)V

    :cond_56
    return-void
.end method

.method private updateResources()V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_1f

    .line 332
    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_icon_size_landscape:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_25

    .line 333
    :cond_1f
    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_25
    iput v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIconSizePx:I

    .line 334
    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTileSpacingPx:I

    if-eqz v1, :cond_38

    .line 335
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_padding_below_icon_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3e

    .line 336
    :cond_38
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_padding_below_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_3e
    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTilePaddingBelowIconPx:I

    .line 337
    sget v1, Lcom/android/systemui/R$dimen;->qs_dual_tile_padding_vertical:I

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualTileVerticalPaddingPx:I

    return-void
.end method

.method private updateTopPadding()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTilePaddingTopPx:I

    .line 81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 343
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 344
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDetailY()I
    .registers 1

    .line 276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    return p0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public bridge synthetic getIconWithBackground()Landroid/view/View;
    .registers 1

    .line 36
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->getIconWithBackground()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p0

    return-object p0
.end method

.method public getIconWithBackground()Lcom/android/systemui/plugins/qs/QSIconView;
    .registers 1

    .line 360
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 6

    .line 244
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-boolean v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDual:Z

    if-eq v0, v1, :cond_9

    .line 245
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/qs/MzQSTileView;->setDual(Z)Z

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 248
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDual:Z

    if-eqz v0, :cond_29

    .line 249
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 253
    :cond_29
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    :goto_35
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_3d

    :cond_3b
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_3d
    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mAccessibilityClass:Ljava/lang/String;

    .line 259
    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    const/4 v2, 0x0

    if-eqz v0, :cond_51

    .line 260
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 261
    iget-boolean v3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTileState:Z

    if-eq v3, v0, :cond_51

    .line 262
    iput-boolean v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mClicked:Z

    .line 263
    iput-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTileState:Z

    .line 267
    :cond_51
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz p1, :cond_56

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    invoke-direct {p0, v1}, Lcom/flyme/systemui/qs/MzQSTileView;->setClickEnabled(Z)V

    return-void
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 4

    .line 178
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    .line 179
    iput-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    .line 180
    iput-object p3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    .line 181
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTopBackgroundView:Landroid/view/View;

    new-instance p2, Lcom/flyme/systemui/qs/MzQSTileView$3;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/qs/MzQSTileView$3;-><init>(Lcom/flyme/systemui/qs/MzQSTileView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->recreateLabel()V

    return-void
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .registers 5

    .line 365
    new-instance v0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSTileView$IqjHk5th-F-NnCrpK4JwUxAK-uw;

    invoke-direct {v0, p1}, Lcom/flyme/systemui/qs/-$$Lambda$MzQSTileView$IqjHk5th-F-NnCrpK4JwUxAK-uw;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v1, Lcom/flyme/systemui/qs/-$$Lambda$MzQSTileView$vh_Rc6kHjnMQpKMETmleTC9nyjw;

    invoke-direct {v1, p1}, Lcom/flyme/systemui/qs/-$$Lambda$MzQSTileView$vh_Rc6kHjnMQpKMETmleTC9nyjw;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v2, Lcom/flyme/systemui/qs/-$$Lambda$MzQSTileView$-GwF6uhEavq1X0QP5zH_x-bLjWk;

    invoke-direct {v2, p1}, Lcom/flyme/systemui/qs/-$$Lambda$MzQSTileView$-GwF6uhEavq1X0QP5zH_x-bLjWk;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/flyme/systemui/qs/MzQSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 86
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->updateResources()V

    .line 88
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->updateTopPadding()V

    .line 89
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 90
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz p1, :cond_20

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 91
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    :cond_20
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x1

    .line 421
    invoke-direct {p0, v0}, Lcom/flyme/systemui/qs/MzQSTileView;->setClickEnabled(Z)V

    .line 422
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->refreshFont()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 405
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 406
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 407
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 408
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 409
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mClicked:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTileState:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_2c

    :cond_28
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2a
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTileState:Z

    .line 410
    :goto_2c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_35

    .line 411
    sget v1, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_37

    :cond_35
    sget v1, Lcom/android/systemui/R$string;->switch_bar_off:I

    :goto_37
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 412
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    :cond_41
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 379
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 382
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 383
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 384
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 385
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mClicked:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTileState:Z

    if-nez v1, :cond_2f

    move v0, v2

    goto :goto_2f

    :cond_2d
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTileState:Z

    .line 386
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_38

    .line 387
    sget v3, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_3a

    :cond_38
    sget v3, Lcom/android/systemui/R$string;->switch_bar_off:I

    :goto_3a
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 390
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 391
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 392
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 395
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    .line 396
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_long_click_tile:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 392
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_65
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 214
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 215
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 217
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTopBackgroundView:Landroid/view/View;

    iget p3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTileSpacingPx:I

    const/4 p4, 0x0

    invoke-static {p2, p4, p3}, Lcom/flyme/systemui/qs/MzQSTileView;->layout(Landroid/view/View;II)V

    .line 220
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTileSpacingPx:I

    add-int/2addr p2, p4

    .line 221
    iget p3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTilePaddingTopPx:I

    add-int/2addr p2, p3

    .line 222
    iget-object p3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    .line 223
    iget-object p3, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-static {p3, p1, p2}, Lcom/flyme/systemui/qs/MzQSTileView;->layout(Landroid/view/View;II)V

    .line 224
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    .line 225
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr p1, p2

    .line 226
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->labelView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p4, p1}, Lcom/flyme/systemui/qs/MzQSTileView;->layout(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 197
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 198
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 199
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIconSizePx:I

    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSTileView;->exactly(I)I

    move-result v1

    .line 200
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 201
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->labelView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->labelView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2}, Lcom/flyme/systemui/qs/MzQSTileView;->exactly(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V

    .line 202
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mIconSizePx:I

    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTilePaddingTopPx:I

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSTileView;->exactly(I)I

    move-result v1

    .line 204
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v2, p1, v1}, Landroid/view/View;->measure(II)V

    .line 205
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 3

    .line 271
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mHandler:Lcom/flyme/systemui/qs/MzQSTileView$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public performClick()Z
    .registers 2

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mClicked:Z

    .line 374
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result p0

    return p0
.end method

.method public refreshFont()V
    .registers 3

    .line 281
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 282
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDual:Z

    if-eqz v0, :cond_11

    .line 283
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2d

    .line 285
    :cond_11
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    goto :goto_2d

    :cond_17
    const/4 v0, 0x0

    const-string v1, "sans-serif-medium"

    .line 288
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 289
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDual:Z

    if-eqz v1, :cond_28

    .line 290
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2d

    .line 292
    :cond_28
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2d
    return-void
.end method

.method public setDual(Z)Z
    .registers 3

    .line 167
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDual:Z

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 168
    :goto_7
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mDual:Z

    if-eqz v0, :cond_e

    .line 170
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->recreateLabel()V

    .line 172
    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return v0
.end method

.method public setLongClick(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method
