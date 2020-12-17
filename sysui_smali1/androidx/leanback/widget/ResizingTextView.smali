.class Landroidx/leanback/widget/ResizingTextView;
.super Landroid/widget/TextView;
.source "ResizingTextView.java"


# instance fields
.field private mDefaultLineSpacingExtra:F

.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingTop:I

.field private mDefaultTextSize:I

.field private mDefaultsInitialized:Z

.field private mIsResized:Z

.field private mMaintainLineSpacing:Z

.field private mResizedPaddingAdjustmentBottom:I

.field private mResizedPaddingAdjustmentTop:I

.field private mResizedTextSize:I

.field private mTriggerConditions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010084

    .line 82
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Landroidx/leanback/widget/ResizingTextView;->mIsResized:Z

    .line 48
    iput-boolean v0, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    .line 56
    sget-object v1, Landroidx/leanback/R$styleable;->lbResizingTextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    :try_start_e
    sget p2, Landroidx/leanback/R$styleable;->lbResizingTextView_resizeTrigger:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ResizingTextView;->mTriggerConditions:I

    .line 62
    sget p2, Landroidx/leanback/R$styleable;->lbResizingTextView_resizedTextSize:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ResizingTextView;->mResizedTextSize:I

    .line 64
    sget p2, Landroidx/leanback/R$styleable;->lbResizingTextView_maintainLineSpacing:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    .line 66
    sget p2, Landroidx/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentTop:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    .line 68
    sget p2, Landroidx/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentBottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_3c

    .line 71
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_3c
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private setPaddingTopAndBottom(II)V
    .registers 5

    .line 270
    invoke-virtual {p0}, Landroid/widget/TextView;->isPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 271
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_1d

    .line 273
    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_1d
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 9

    .line 198
    iget-boolean v0, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_20

    .line 199
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    .line 200
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    .line 201
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    .line 202
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    .line 203
    iput-boolean v1, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    .line 208
    :cond_20
    iget v0, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    iget v0, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 210
    iget v0, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v3, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v0, v3}, Landroidx/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 212
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 216
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 218
    iget v3, p0, Landroidx/leanback/widget/ResizingTextView;->mTriggerConditions:I

    and-int/2addr v3, v1

    if-lez v3, :cond_53

    .line 219
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 220
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v3

    if-le v3, v1, :cond_53

    if-ne v0, v3, :cond_53

    move v0, v1

    goto :goto_54

    :cond_53
    move v0, v2

    .line 227
    :goto_54
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, -0x1

    if-eqz v0, :cond_9f

    .line 230
    iget v5, p0, Landroidx/leanback/widget/ResizingTextView;->mResizedTextSize:I

    if-eq v5, v4, :cond_67

    if-eq v3, v5, :cond_67

    int-to-float v3, v5

    .line 231
    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    move v2, v1

    .line 235
    :cond_67
    iget v3, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    iget v4, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Landroidx/leanback/widget/ResizingTextView;->mResizedTextSize:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 237
    iget-boolean v4, p0, Landroidx/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v4, :cond_85

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_85

    .line 238
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    move v2, v1

    .line 241
    :cond_85
    iget v3, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v4, p0, Landroidx/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    add-int/2addr v3, v4

    .line 242
    iget v4, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    iget v5, p0, Landroidx/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I

    add-int/2addr v4, v5

    .line 243
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    if-ne v5, v3, :cond_9b

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    if-eq v5, v4, :cond_d3

    .line 244
    :cond_9b
    invoke-direct {p0, v3, v4}, Landroidx/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    goto :goto_dc

    .line 249
    :cond_9f
    iget v5, p0, Landroidx/leanback/widget/ResizingTextView;->mResizedTextSize:I

    if-eq v5, v4, :cond_ac

    iget v4, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    if-eq v3, v4, :cond_ac

    int-to-float v3, v4

    .line 250
    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    move v2, v1

    .line 253
    :cond_ac
    iget-boolean v3, p0, Landroidx/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v3, :cond_c2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    iget v4, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_c2

    .line 254
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    invoke-virtual {p0, v4, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    move v2, v1

    .line 257
    :cond_c2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget v4, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    if-ne v3, v4, :cond_d5

    .line 258
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    if-eq v3, v4, :cond_d3

    goto :goto_d5

    :cond_d3
    move v1, v2

    goto :goto_dc

    .line 259
    :cond_d5
    :goto_d5
    iget v2, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v3, p0, Landroidx/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v2, v3}, Landroidx/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 263
    :goto_dc
    iput-boolean v0, p0, Landroidx/leanback/widget/ResizingTextView;->mIsResized:Z

    if-eqz v1, :cond_e3

    .line 265
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_e3
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    .line 284
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 283
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method
