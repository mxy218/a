.class public Lcom/meizu/common/widget/GuidePopupWindow;
.super Landroid/widget/PopupWindow;
.source "GuidePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;,
        Lcom/meizu/common/widget/GuidePopupWindow$HandleView;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mArrowOffx:I

.field private mContext:Landroid/content/Context;

.field private mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

.field private mLayoutMode:I

.field private mOffX:I

.field private mOffY:I

.field private mOnCloseIconClickListener:Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;

.field private mParentView:Landroid/view/View;

.field private mPopX:I

.field private mPopY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x6

    .line 149
    iput p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    .line 171
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    .line 172
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 173
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 p2, 0x0

    .line 174
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/4 p3, -0x2

    .line 175
    invoke-virtual {p0, p3, p3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    const/4 p3, 0x2

    .line 176
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 177
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    sget-object p2, Lcom/meizu/common/R$styleable;->GuidePopupWindow:[I

    sget p3, Lcom/meizu/common/R$attr;->MeizuCommon_GuidePopupWindow:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 180
    sget p3, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundLeft:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 181
    sget p4, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundMidArrowDown:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 182
    sget v0, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundMidArrowUp:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    sget v1, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundRight:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 184
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_4f

    if-eqz p4, :cond_4f

    if-eqz v0, :cond_4f

    if-nez v1, :cond_77

    .line 187
    :cond_4f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$drawable;->mz_guide_left_color_blue:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/meizu/common/R$drawable;->mz_guide_middle_down_color_blue:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/meizu/common/R$drawable;->mz_guide_middle_up_color_blue:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meizu/common/R$drawable;->mz_guide_right_color_blue:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_77
    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    move-object v8, v1

    .line 193
    new-instance p1, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;-><init>(Lcom/meizu/common/widget/GuidePopupWindow;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    .line 194
    iget-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/GuidePopupWindow;)Landroid/view/View;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/GuidePopupWindow;[I)V
    .registers 2

    .line 117
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow;->doShow([I)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/GuidePopupWindow;)Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOnCloseIconClickListener:Lcom/meizu/common/widget/GuidePopupWindow$OnCloseIconClickListener;

    return-object p0
.end method

.method private computeGuidePosition([ILandroid/view/View;)V
    .registers 11

    if-nez p2, :cond_3

    return-void

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 337
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 340
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    div-int/2addr v2, v3

    new-array v4, v3, [I

    .line 344
    invoke-direct {p0, p2, v4}, Lcom/meizu/common/widget/GuidePopupWindow;->getAnchorPosition(Landroid/view/View;[I)V

    .line 347
    aget v5, p1, v3

    aget v6, p1, v1

    sub-int/2addr v5, v6

    if-lt v0, v5, :cond_46

    .line 351
    aget v0, p1, v1

    aget v2, v4, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 352
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$300(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v2

    mul-int/2addr v2, v3

    sub-int v2, v5, v2

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getCloseIconWidth()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v0, v2}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$400(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;I)V

    .line 353
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_68

    .line 355
    :cond_46
    aget v6, v4, v1

    add-int/2addr v6, v2

    aget v7, p1, v1

    if-gt v6, v7, :cond_55

    .line 357
    aget v0, p1, v1

    aget v2, v4, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto :goto_68

    .line 358
    :cond_55
    aget v6, v4, v1

    add-int/2addr v6, v2

    add-int/2addr v6, v0

    aget v7, p1, v3

    if-le v6, v7, :cond_66

    .line 360
    aget v2, p1, v3

    sub-int/2addr v2, v0

    aget v0, v4, v1

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto :goto_68

    .line 362
    :cond_66
    iput v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 367
    :goto_68
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    const/4 v2, 0x4

    const/4 v6, 0x1

    if-eq v0, v2, :cond_a9

    const/4 v2, 0x5

    if-eq v0, v2, :cond_a1

    .line 378
    aget v0, v4, v6

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v2

    add-int/2addr v0, v2

    aget v2, p1, v6

    if-ge v0, v2, :cond_8d

    .line 379
    iput v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 380
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowUp()V

    goto :goto_bc

    .line 382
    :cond_8d
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 383
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowDown()V

    goto :goto_bc

    .line 373
    :cond_a1
    iput v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 374
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowUp()V

    goto :goto_bc

    .line 369
    :cond_a9
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 370
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowDown()V

    .line 388
    :goto_bc
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    if-eq v0, v6, :cond_10c

    const/4 v2, 0x3

    if-eq v0, v3, :cond_f1

    if-eq v0, v2, :cond_c6

    goto :goto_11c

    .line 396
    :cond_c6
    aget v0, p1, v1

    iget-object v7, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/2addr v5, v3

    add-int/2addr v0, v5

    aget v1, v4, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 397
    aget v0, p1, v6

    aget v1, p1, v2

    aget p1, p1, v6

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/2addr v1, v3

    add-int/2addr v0, v1

    aget p1, v4, v6

    sub-int/2addr v0, p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    goto :goto_11c

    .line 393
    :cond_f1
    aget v0, p1, v6

    aget v1, p1, v2

    aget p1, p1, v6

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/2addr v1, v3

    add-int/2addr v0, v1

    aget p1, v4, v6

    sub-int/2addr v0, p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    goto :goto_11c

    .line 390
    :cond_10c
    aget p1, p1, v1

    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v5, v0

    div-int/2addr v5, v3

    add-int/2addr p1, v5

    aget v0, v4, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 403
    :goto_11c
    iget p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 404
    iget p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 407
    iget p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    neg-int p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v3

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowWidth()I

    move-result v0

    div-int/2addr v0, v3

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mArrowOffx:I

    add-int/2addr p1, v0

    .line 408
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundMidMinWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundRightMinWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 409
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundLeftMinWidth()I

    move-result v1

    if-le p1, v0, :cond_15c

    move p1, v0

    goto :goto_15f

    :cond_15c
    if-ge p1, v1, :cond_15f

    move p1, v1

    .line 415
    :cond_15f
    :goto_15f
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowPosition(I)V

    .line 418
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v6, :cond_173

    .line 419
    iget p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    :cond_173
    return-void
.end method

.method private doShow([I)V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 322
    iget-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private getAnchorPosition(Landroid/view/View;[I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 469
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    return-void
.end method

.method private getParentBound(Landroid/view/View;[I)V
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1d

    .line 792
    iget-object p0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 793
    aput v3, p2, v3

    .line 794
    aput v3, p2, v2

    .line 795
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput p1, p2, v1

    .line 796
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput p0, p2, v0

    goto :goto_3c

    :cond_1d
    new-array p0, v1, [I

    .line 799
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 800
    aget v4, p0, v3

    aput v4, p2, v3

    .line 801
    aget p0, p0, v2

    aput p0, p2, v2

    .line 802
    aget p0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p0, v3

    aput p0, p2, v1

    .line 803
    aget p0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    aput p0, p2, v0

    :goto_3c
    return-void
.end method

.method private tryShow([ILandroid/view/View;II)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 295
    :cond_3
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 296
    iput p3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 297
    iput p4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 300
    invoke-direct {p0, p2, p3}, Lcom/meizu/common/widget/GuidePopupWindow;->getAnchorPosition(Landroid/view/View;[I)V

    const/4 p2, 0x0

    .line 301
    aget p2, p3, p2

    if-eqz p2, :cond_1d

    const/4 p2, 0x1

    aget p2, p3, p2

    if-eqz p2, :cond_1d

    .line 303
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow;->doShow([I)V

    goto :goto_30

    .line 305
    :cond_1d
    iget-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 306
    new-instance p3, Lcom/meizu/common/widget/GuidePopupWindow$1;

    invoke-direct {p3, p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$1;-><init>(Lcom/meizu/common/widget/GuidePopupWindow;[I)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 316
    iget-object p0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_30
    return-void
.end method


# virtual methods
.method public setLayoutMode(I)V
    .registers 2

    .line 508
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 488
    iget-object p0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/view/View;II)V
    .registers 5

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 263
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mParentView:Landroid/view/View;

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->getParentBound(Landroid/view/View;[I)V

    .line 265
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/meizu/common/widget/GuidePopupWindow;->tryShow([ILandroid/view/View;II)V

    return-void
.end method

.method public update(IIIIZ)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    .line 532
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 536
    :cond_f
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method
