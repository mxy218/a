.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private mDotPadding:I

.field private mIconDotFrameWidth:I

.field private mIgnoredSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsUnderflow:Z

.field private mShouldRestrictIcons:Z

.field private mStaticDotDiameter:I

.field private mUnderflowStart:I

.field private mUnderflowWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 437
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>()V

    const-wide/16 v1, 0xc8

    .line 444
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 446
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;-><init>()V

    .line 453
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 455
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;-><init>()V

    .line 463
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 71
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 75
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->initDimens()V

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method private applyIconStates()V
    .registers 4

    const/4 v0, 0x0

    .line 344
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 345
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 346
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 348
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private calculateIconTranslations()V
    .registers 14

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 270
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 271
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    .line 272
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateIconTranslations: start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " underflow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusIconContainer"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v3, -0x1

    :goto_44
    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ltz v4, :cond_a6

    .line 279
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 280
    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 281
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v10

    .line 283
    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v11

    if-eqz v11, :cond_83

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v11

    if-nez v11, :cond_83

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 284
    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6c

    goto :goto_83

    .line 290
    :cond_6c
    iput v7, v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 291
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    iput v6, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 292
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 294
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v1, v6

    goto :goto_a3

    .line 285
    :cond_83
    :goto_83
    iput v6, v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skipping child ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") not visible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a3
    add-int/lit8 v4, v4, -0x1

    goto :goto_44

    .line 298
    :cond_a6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0xa

    if-gt v1, v4, :cond_b1

    goto :goto_b3

    :cond_b1
    const/16 v4, 0x9

    .line 301
    :goto_b3
    iput v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    move v8, v7

    :goto_b8
    const/4 v9, -0x1

    if-ltz v1, :cond_ea

    .line 305
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 307
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-eqz v11, :cond_d1

    iget v11, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v12, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v12, v12

    add-float/2addr v12, v2

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_eb

    :cond_d1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v11, :cond_d8

    if-lt v8, v4, :cond_d8

    goto :goto_eb

    .line 312
    :cond_d8
    iget v9, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_b8

    :cond_ea
    move v1, v9

    :cond_eb
    :goto_eb
    if-eq v1, v9, :cond_116

    .line 318
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    add-int/2addr v2, v4

    .line 319
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v4, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    sub-int/2addr v4, v8

    move v8, v4

    move v4, v7

    :goto_fc
    if-ltz v1, :cond_116

    .line 321
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    if-ge v4, v5, :cond_111

    int-to-float v10, v8

    .line 323
    iput v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 324
    iput v5, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    sub-int/2addr v8, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_113

    .line 328
    :cond_111
    iput v6, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    :goto_113
    add-int/lit8 v1, v1, -0x1

    goto :goto_fc

    .line 334
    :cond_116
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_135

    :goto_11c
    if-ge v7, v3, :cond_135

    .line 336
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 337
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    .line 338
    iget v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float v4, v0, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    add-int/lit8 v7, v7, 0x1

    goto :goto_11c

    :cond_135
    return-void
.end method

.method private static getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    .registers 2

    .line 368
    sget v0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    return-object p0
.end method

.method private static getViewTotalMeasuredWidth(Landroid/view/View;)I
    .registers 3

    .line 372
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getViewTotalWidth(Landroid/view/View;)I
    .registers 3

    .line 376
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private initDimens()V
    .registers 4

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_icon_dot_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_dot_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 106
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    .line 107
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    return-void
.end method

.method private resetViewStates()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 354
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 355
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 356
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_1c

    .line 361
    :cond_13
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    const/high16 v2, 0x3f800000  # 1.0f

    .line 362
    iput v2, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 363
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    return-void
.end method


# virtual methods
.method public isRestrictingIcons()Z
    .registers 1

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 130
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .line 112
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    move p4, p3

    .line 115
    :goto_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_28

    .line 116
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 117
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 118
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sub-float v2, p1, v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 120
    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    .line 123
    :cond_28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->resetViewStates()V

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->calculateIconTranslations()V

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->applyIconStates()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_3d

    .line 154
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 155
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v5

    if-nez v5, :cond_3a

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 156
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 157
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 161
    :cond_3d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_49

    move v4, v3

    goto :goto_4b

    :cond_49
    const/16 v4, 0x9

    .line 163
    :goto_4b
    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v6

    .line 167
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 168
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_5d

    if-le v1, v3, :cond_5d

    move v3, v8

    goto :goto_5e

    :cond_5d
    move v3, v2

    :goto_5e
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    move v3, v2

    move v7, v8

    .line 169
    :goto_62
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_94

    .line 171
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    sub-int v10, v1, v3

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 172
    invoke-virtual {p0, v9, v6, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 173
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v10, :cond_8c

    if-ge v3, v4, :cond_85

    if-eqz v7, :cond_85

    .line 175
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v9

    goto :goto_90

    :cond_85
    if-eqz v7, :cond_91

    .line 178
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v5, v7

    move v7, v2

    goto :goto_91

    .line 182
    :cond_8c
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v9

    :goto_90
    add-int/2addr v5, v9

    :cond_91
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_94
    const/high16 v1, 0x40000000  # 2.0f

    if-ne v0, v1, :cond_a8

    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-nez v0, :cond_a0

    if-le v5, p1, :cond_a0

    .line 188
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 190
    :cond_a0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_b9

    :cond_a8
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_b1

    if-le v5, p1, :cond_b1

    .line 193
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    goto :goto_b2

    :cond_b1
    move p1, v5

    .line 196
    :goto_b2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :goto_b9
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    .line 202
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 203
    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;-><init>()V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 205
    sget v0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 3

    .line 210
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 211
    sget p0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setShouldRestrictIcons(Z)V
    .registers 2

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return-void
.end method
