.class public Lcom/android/systemui/qs/QSDualTileLabel;
.super Landroid/widget/LinearLayout;
.source "QSDualTileLabel.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFirstLine:Landroid/widget/TextView;

.field private final mFirstLineCaret:Landroid/widget/ImageView;

.field private final mFirstLineCaretPaddingLeft:I

.field private final mFirstLineLayout:Landroid/widget/LinearLayout;

.field private final mHorizontalPaddingPx:I

.field private final mSecondLine:Landroid/widget/TextView;

.field private mText:Ljava/lang/String;

.field private final mUpdateText:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 245
    new-instance v0, Lcom/android/systemui/qs/QSDualTileLabel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDualTileLabel$2;-><init>(Lcom/android/systemui/qs/QSDualTileLabel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_dual_tile_padding_horizontal:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->initTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    .line 81
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    const/high16 v0, 0x40400000  # 3.0f

    .line 82
    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaretPaddingLeft:I

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->initFirstLine()V

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->initTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 87
    iget-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    iget-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    new-instance p1, Lcom/android/systemui/qs/QSDualTileLabel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDualTileLabel$1;-><init>(Lcom/android/systemui/qs/QSDualTileLabel;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->updateText()V

    return-void
.end method

.method private initFirstLine()V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/qs/QSDualTileLabel;->newLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->mz_tile_label_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaretPaddingLeft:I

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 270
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x31

    .line 277
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private initTextView()Landroid/widget/TextView;
    .registers 3

    .line 122
    new-instance v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 123
    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x10

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 126
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setClickable(Z)V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 130
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object v0
.end method

.method private static newLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 281
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 282
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f800000  # 1.0f

    .line 283
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-object v0
.end method

.method private rescheduleUpdateText()V
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateText()V
    .registers 7

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 191
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 193
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaretPaddingLeft:I

    add-int/2addr v0, v3

    goto :goto_34

    .line 195
    :cond_32
    iget v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaretPaddingLeft:I

    .line 196
    :goto_34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    sub-int/2addr v3, v4

    .line 197
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 198
    iget-object v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_6f

    .line 202
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 203
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaretPaddingLeft:I

    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 204
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_80

    .line 206
    :cond_6f
    iget-object v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 207
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaretPaddingLeft:I

    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 208
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 211
    :goto_80
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public setFirstLineCaret(I)V
    .registers 4

    if-eqz p1, :cond_f

    .line 293
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 294
    :goto_10
    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_20

    .line 296
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 299
    :cond_20
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    return-void
.end method

.method public setPartialBackgroundResource(I)V
    .registers 2

    .line 289
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 136
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 138
    :cond_11
    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    if-nez p1, :cond_10

    .line 161
    iget-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    return-void

    .line 167
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    return-void
.end method
