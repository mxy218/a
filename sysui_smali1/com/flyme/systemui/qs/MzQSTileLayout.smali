.class public Lcom/flyme/systemui/qs/MzQSTileLayout;
.super Landroid/view/ViewGroup;
.source "MzQSTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;
.implements Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;
.implements Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;
    }
.end annotation


# static fields
.field private static DEFAULT_SWAP_DELAY:I = 0x190

.field private static DEFAULT_SWAP_DURATION:I = 0xfa

.field private static final GESTURE_TOUCH_SLOP:I


# instance fields
.field private final DEBUG_TILE_MOVEMENT:Z

.field private final QS_TILE_ROW_VISIBLE_LIMIT_MAX:I

.field private final QS_TILE_ROW_VISIBLE_LIMIT_MIN:I

.field private final TITLE_ANIMATION_DURATION:I

.field private mAllTilesNum:I

.field private mAnimatingToCloseCustomize:Z

.field private mAnimatingToOpenCustomize:Z

.field private mBrightnessView:Landroid/view/View;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCollapsedTilesRows:I

.field private mColumns:I

.field private mCurrentVisibleIndex:I

.field private mDelayStartSwapTwoViewsPos:Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;

.field private mDragPosition:I

.field private mDragging:Z

.field private mDropPosition:I

.field private mEnabledTilesNum:I

.field private mEnabledTilesRows:I

.field private mExpanded:Z

.field private mExpansion:F

.field private mFirstX:F

.field private mFirstY:F

.field private mHeaderHeight:I

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsCustomize:Z

.field private mIsFlingUp:Z

.field private mIsMoving:Z

.field private mIsPerformExitEdit:Z

.field private mKeyguardShowing:Z

.field private mListening:Z

.field private mMoveTileAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mNavigationBarBottomHeight:I

.field private mPanelPaddingSide:I

.field private mPanelPaddingTop:I

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

.field private mQSPanelEditHeight:I

.field private mQSPanelEditInterpolator:Landroid/view/animation/Interpolator;

.field private mQSPanelEditMaxHeight:I

.field private mQSPanelNormalHeight:I

.field private final mQSTilesEditBackground:Landroid/view/View;

.field private mQSTilesEditBackgroundMarginTop:I

.field private mQSTilesEditBackgroundPaddingTop:I

.field private final mQSTilesEditTips:Landroid/widget/TextView;

.field private mQSTilesEditTipsHeight:I

.field private mQSTilesEditTipsMarginBottom:I

.field private mRealDefaultDisplayX:I

.field private mRealDefaultDisplayY:I

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRows:I

.field private mTileViewDragListener:Landroid/view/View$OnDragListener;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    sput v0, Lcom/flyme/systemui/qs/MzQSTileLayout;->GESTURE_TOUCH_SLOP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 54
    iput-boolean p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->DEBUG_TILE_MOVEMENT:Z

    const/4 v0, 0x3

    .line 55
    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->QS_TILE_ROW_VISIBLE_LIMIT_MAX:I

    .line 56
    iput p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->QS_TILE_ROW_VISIBLE_LIMIT_MIN:I

    const/16 p2, 0xc8

    .line 57
    iput p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->TITLE_ANIMATION_DURATION:I

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 68
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae  # 0.22f

    const v1, 0x3e947ae1  # 0.29f

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditInterpolator:Landroid/view/animation/Interpolator;

    const/4 p2, 0x5

    .line 70
    iput p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    const/4 p2, 0x0

    .line 75
    iput p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesNum:I

    .line 76
    iput p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesRows:I

    .line 77
    iput p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCollapsedTilesRows:I

    const/16 v0, 0xe

    .line 90
    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    .line 96
    iput-boolean p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragging:Z

    .line 97
    iput-boolean p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsMoving:Z

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    .line 101
    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    .line 601
    new-instance v0, Lcom/flyme/systemui/qs/MzQSTileLayout$5;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout$5;-><init>(Lcom/flyme/systemui/qs/MzQSTileLayout;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mMoveTileAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 625
    new-instance v0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout$6;-><init>(Lcom/flyme/systemui/qs/MzQSTileLayout;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mTileViewDragListener:Landroid/view/View$OnDragListener;

    const-string/jumbo v0, "window"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 116
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->qs_tiles_edit_background:I

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    .line 118
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->qs_tiles_edit_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTips:Landroid/widget/TextView;

    .line 119
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    new-instance p1, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;

    invoke-direct {p1, p0, p0, p0, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;-><init>(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/ViewGroup;Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDelayStartSwapTwoViewsPos:Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;

    .line 122
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDelayStartSwapTwoViewsPos:Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;

    sget v0, Lcom/flyme/systemui/qs/MzQSTileLayout;->DEFAULT_SWAP_DELAY:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->setSwapDelay(J)V

    .line 123
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDelayStartSwapTwoViewsPos:Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;

    sget v0, Lcom/flyme/systemui/qs/MzQSTileLayout;->DEFAULT_SWAP_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->setSwapDuration(J)V

    .line 124
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 126
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mTileViewDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/flyme/systemui/qs/MzQSTileLayout;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    return p0
.end method

.method static synthetic access$1100(Lcom/flyme/systemui/qs/MzQSTileLayout;IIZ)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->onMoveEnd(IIZ)V

    return-void
.end method

.method static synthetic access$1202(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragging:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getTileIndex(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/flyme/systemui/qs/MzQSTileLayout;I)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->checkTileEditText(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    return p0
.end method

.method static synthetic access$1600(Lcom/flyme/systemui/qs/MzQSTileLayout;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    return p0
.end method

.method static synthetic access$1700(Lcom/flyme/systemui/qs/MzQSTileLayout;I)I
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getRowByTileIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/flyme/systemui/qs/MzQSTileLayout;)Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDelayStartSwapTwoViewsPos:Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/flyme/systemui/qs/MzQSTileLayout;II)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->doMoveTileAnimation(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/flyme/systemui/qs/MzQSTileLayout;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/flyme/systemui/qs/MzQSTileLayout;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditHeight:I

    return p1
.end method

.method static synthetic access$2100(Lcom/flyme/systemui/qs/MzQSTileLayout;I)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->addToVisibleEnd(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/flyme/systemui/qs/MzQSTileLayout;)Ljava/util/ArrayList;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/widget/TextView;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/qs/MzQSTileLayout;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditMaxHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/qs/MzQSTileLayout;FII)I
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->interpolate(FII)I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsCustomize:Z

    return p1
.end method

.method static synthetic access$602(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mAnimatingToOpenCustomize:Z

    return p1
.end method

.method static synthetic access$702(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mAnimatingToCloseCustomize:Z

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/systemui/qs/MzQSTileLayout;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsMoving:Z

    return p0
.end method

.method static synthetic access$802(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsMoving:Z

    return p1
.end method

.method static synthetic access$900(Lcom/flyme/systemui/qs/MzQSTileLayout;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    return p0
.end method

.method static synthetic access$902(Lcom/flyme/systemui/qs/MzQSTileLayout;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    return p1
.end method

.method private addToVisibleEnd(I)V
    .registers 12

    .line 985
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    if-gt p1, v0, :cond_5

    return-void

    .line 987
    :cond_5
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 988
    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToVisibleEnd,mDragPosition = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MzQSTileLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 994
    iget v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    int-to-float v3, v3

    goto :goto_34

    :cond_33
    move v3, v2

    .line 996
    :goto_34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_44

    .line 998
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    invoke-direct {p0, v0, v2, v3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_44
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    add-int/2addr v0, v1

    :goto_47
    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-gt v0, v5, :cond_8c

    .line 1002
    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v5, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-le v0, p1, :cond_80

    .line 1006
    iget-object v6, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v6, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 1007
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f800000  # 1.0f

    mul-float/2addr v7, v8

    .line 1008
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v9

    sub-float/2addr v6, v9

    mul-float/2addr v6, v8

    add-float/2addr v6, v3

    goto :goto_82

    :cond_80
    move v7, v2

    move v6, v3

    .line 1014
    :goto_82
    invoke-direct {p0, v5, v7, v6}, Lcom/flyme/systemui/qs/MzQSTileLayout;->newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 1016
    :cond_8c
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1017
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xc8

    .line 1018
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1019
    new-instance v0, Lcom/flyme/systemui/qs/MzQSTileLayout$7;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout$7;-><init>(Lcom/flyme/systemui/qs/MzQSTileLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1042
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private calculateQSValue()V
    .registers 7

    .line 484
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesNum:I

    .line 485
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mAllTilesNum:I

    .line 486
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesNum:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v0, v2

    iget v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesRows:I

    .line 487
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesRows:I

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mAllTilesNum:I

    iget v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesNum:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double/2addr v4, v2

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    int-to-double v1, v1

    div-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRows:I

    .line 488
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getRealHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getDesiredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditMaxHeight:I

    .line 489
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditMaxHeight:I

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditHeight:I

    return-void
.end method

.method private checkTileEditText(I)V
    .registers 6

    .line 805
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTips:Landroid/widget/TextView;

    if-eqz v0, :cond_31

    .line 806
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    mul-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_16

    if-gt p1, v1, :cond_16

    .line 808
    sget p0, Lcom/android/systemui/R$string;->qs_tiles_edit_tips_text_min:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_31

    .line 809
    :cond_16
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_2a

    if-le p1, v0, :cond_2a

    .line 811
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTips:Landroid/widget/TextView;

    sget p1, Lcom/android/systemui/R$string;->qs_tiles_edit_tips_text_max:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_31

    .line 813
    :cond_2a
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTips:Landroid/widget/TextView;

    sget p1, Lcom/android/systemui/R$string;->qs_tiles_edit_tips_text:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_31
    :goto_31
    return-void
.end method

.method private doMoveTileAnimation(II)V
    .registers 16

    .line 819
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    .line 820
    iput p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    .line 823
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doMoveTileAnimation,mDropPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mDragPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MzQSTileLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    if-ne p1, v1, :cond_2d

    return-void

    .line 827
    :cond_2d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ",yValue = "

    const-string v6, ",xValue = "

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x1

    if-gt v1, v2, :cond_165

    iget v9, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    if-le v9, v2, :cond_165

    add-int/2addr v1, v8

    .line 830
    :goto_46
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    if-gt v1, p2, :cond_9e

    .line 831
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 833
    iget-object p2, p2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 834
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 836
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, v7

    .line 837
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v10

    sub-float/2addr v2, v10

    mul-float/2addr v2, v7

    .line 839
    invoke-direct {p0, p2, v9, v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doHide,topTile item = "

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 845
    :cond_9e
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    rem-int/2addr p2, v1

    if-nez p2, :cond_a5

    move p2, v8

    goto :goto_a6

    :cond_a5
    move p2, v3

    :goto_a6
    if-eqz p2, :cond_ae

    .line 847
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    goto :goto_af

    :cond_ae
    move v1, v4

    :goto_af
    if-eqz p2, :cond_ba

    .line 850
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    invoke-direct {p0, p2, v4, v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_ba
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    add-int/2addr p2, v8

    :goto_bd
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    if-gt p2, v2, :cond_30b

    .line 854
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 857
    iget v9, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    if-lt p2, v9, :cond_138

    .line 858
    iget-object v9, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 859
    iget-object v10, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    if-ne p2, v10, :cond_116

    .line 860
    iget v10, v9, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    add-int/lit8 v11, v10, 0x1

    iget v12, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    sub-int/2addr v12, v8

    if-gt v11, v12, :cond_fe

    add-int/lit8 v10, v10, 0x1

    .line 861
    invoke-direct {p0, v10}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getColumnLeft(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, v7

    move v10, v9

    move v9, v4

    goto :goto_136

    .line 864
    :cond_fe
    invoke-direct {p0, v3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getColumnLeft(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v7

    .line 865
    iget v9, v9, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    add-int/2addr v9, v8

    invoke-direct {p0, v9}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getRowTop(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v11

    goto :goto_134

    .line 868
    :cond_116
    iget-object v9, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v10, p2, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v9, v9, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 869
    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v7

    .line 870
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v11

    :goto_134
    sub-float/2addr v9, v11

    mul-float/2addr v9, v7

    :goto_136
    add-float/2addr v9, v1

    goto :goto_13a

    :cond_138
    move v9, v1

    move v10, v4

    .line 877
    :goto_13a
    invoke-direct {p0, v2, v10, v9}, Lcom/flyme/systemui/qs/MzQSTileLayout;->newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHide,bottomTile item = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_bd

    .line 882
    :cond_165
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    if-gt v1, v2, :cond_25b

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    if-le v1, v2, :cond_25b

    .line 884
    :goto_16f
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v8

    if-ge v1, p2, :cond_1cb

    .line 885
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 887
    iget-object p2, p2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 889
    iget-object v9, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v9, v9, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 890
    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v7

    .line 891
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v11

    sub-float/2addr v9, v11

    mul-float/2addr v9, v7

    .line 893
    invoke-direct {p0, p2, v10, v9}, Lcom/flyme/systemui/qs/MzQSTileLayout;->newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doShow,bottomTile  item = "

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_16f

    .line 899
    :cond_1cb
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDropPosition:I

    :goto_1cd
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    if-gt p2, v1, :cond_30b

    .line 900
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 902
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 904
    iget v9, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    if-ne p2, v9, :cond_210

    .line 905
    iget v9, v1, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    add-int/lit8 v10, v9, 0x1

    iget v11, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    sub-int/2addr v11, v8

    if-gt v10, v11, :cond_1f8

    add-int/lit8 v9, v9, 0x1

    .line 906
    invoke-direct {p0, v9}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getColumnLeft(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v9

    sub-float/2addr v1, v9

    mul-float/2addr v1, v7

    move v9, v1

    move v1, v4

    goto :goto_230

    .line 909
    :cond_1f8
    invoke-direct {p0, v3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getColumnLeft(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, v7

    .line 910
    iget v1, v1, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    add-int/2addr v1, v8

    invoke-direct {p0, v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getRowTop(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v10

    goto :goto_22e

    .line 913
    :cond_210
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v9, p2, 0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 914
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, v7

    .line 915
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v10

    :goto_22e
    sub-float/2addr v1, v10

    mul-float/2addr v1, v7

    .line 918
    :goto_230
    invoke-direct {p0, v2, v9, v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doShow,topTile item = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1cd

    .line 924
    :cond_25b
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    const-string v2, "item = "

    if-ge p2, v1, :cond_2b6

    .line 925
    :goto_261
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragPosition:I

    if-ge p2, v1, :cond_30b

    .line 926
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 928
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 929
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 930
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    .line 931
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v9

    sub-float/2addr v3, v9

    mul-float/2addr v3, v7

    .line 933
    invoke-direct {p0, v1, v8, v3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v4

    goto :goto_261

    :cond_2b6
    add-int/2addr v1, v8

    :goto_2b7
    if-gt v1, p2, :cond_30b

    .line 940
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 942
    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 943
    iget-object v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v4, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 945
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    .line 946
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v9

    sub-float/2addr v4, v9

    mul-float/2addr v4, v7

    .line 948
    invoke-direct {p0, v3, v8, v4}, Lcom/flyme/systemui/qs/MzQSTileLayout;->newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b7

    .line 956
    :cond_30b
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 957
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xc8

    .line 958
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 959
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mMoveTileAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 960
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static exactly(I)I
    .registers 2

    const/high16 v0, 0x40000000  # 2.0f

    .line 495
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getColumnLeft(I)I
    .registers 9

    .line 970
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 971
    :goto_a
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getPanelWidth()I

    move-result v2

    .line 972
    iget v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    .line 973
    iget v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellWidth:I

    mul-int v5, v4, v3

    sub-int v5, v2, v5

    .line 974
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingSide:I

    mul-int/lit8 v6, p0, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v3, v1

    div-int/2addr v5, v3

    mul-int v1, p1, v4

    mul-int/2addr p1, v5

    add-int/2addr v1, p1

    add-int/2addr v1, p0

    if-eqz v0, :cond_27

    sub-int/2addr v2, v1

    sub-int v1, v2, v4

    :cond_27
    return v1
.end method

.method private getDesiredHeight()I
    .registers 3

    .line 500
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRealDefaultDisplayY:I

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mHeaderHeight:I

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mKeyguardShowing:Z

    if-eqz v1, :cond_b

    const/4 p0, 0x0

    goto :goto_d

    :cond_b
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mNavigationBarBottomHeight:I

    :goto_d
    sub-int/2addr v0, p0

    return v0
.end method

.method private getPanelWidth()I
    .registers 1

    .line 509
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getPanelWidth()I

    move-result p0

    return p0
.end method

.method private getRealHeight()I
    .registers 3

    .line 505
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRows:I

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackgroundPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTipsMarginBottom:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTipsHeight:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getRowByTileIndex(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 800
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    rem-int v0, p1, p0

    if-nez v0, :cond_a

    div-int/2addr p1, p0

    goto :goto_d

    .line 801
    :cond_a
    div-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    :goto_d
    return p1
.end method

.method private getRowTop(I)I
    .registers 3

    .line 513
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesRows:I

    if-ge p1, v0, :cond_b

    .line 514
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingTop:I

    :goto_9
    add-int/2addr p1, p0

    return p1

    .line 516
    :cond_b
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackgroundPaddingTop:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTipsMarginBottom:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTipsHeight:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingTop:I

    goto :goto_9
.end method

.method private getTileIndex(Landroid/view/View;)I
    .registers 4

    .line 787
    instance-of v0, p1, Lcom/flyme/systemui/qs/MzQSTileView;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 788
    :goto_5
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 789
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 790
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-ne v1, p1, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    const/4 v0, -0x1

    :goto_1e
    return v0
.end method

.method private interpolate(FII)I
    .registers 4

    const/high16 p0, 0x3f800000  # 1.0f

    sub-float/2addr p0, p1

    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private isExpanded()Z
    .registers 1

    .line 522
    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mExpanded:Z

    return p0
.end method

.method private isInBlankArea(FF)Z
    .registers 9

    float-to-double p1, p2

    .line 530
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTipsHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTipsMarginBottom:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mAllTilesNum:I

    iget v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesNum:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 531
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    iget p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    int-to-double v4, p0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    cmpl-double p0, p1, v0

    if-lez p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method private newTranslateAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .registers 10

    const/4 p0, 0x2

    new-array v0, p0, [Landroid/animation/PropertyValuesHolder;

    .line 964
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, p0, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    aput p2, v2, v5

    .line 965
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, v0, v4

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array p0, p0, [F

    aput v3, p0, v4

    aput p3, p0, v5

    .line 966
    invoke-static {p2, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    aput-object p0, v0, v5

    .line 964
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private onMoveEnd(IIZ)V
    .registers 15

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMoveEnd ：from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzQSTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p2, :cond_3f

    if-nez p3, :cond_3f

    return-void

    .line 1050
    :cond_3f
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1051
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1053
    iget-boolean v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragging:Z

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-nez v3, :cond_85

    iget-object v3, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v7, :cond_6b

    iget-object v3, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v6

    if-nez v3, :cond_85

    .line 1054
    :cond_6b
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v9, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    sget v10, Lcom/android/systemui/R$id;->qs_tile_enabled_tag:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1056
    iget-object v3, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1057
    iget-object v3, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1059
    :cond_85
    iget-boolean v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragging:Z

    if-nez v3, :cond_b5

    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v7, :cond_9b

    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v6

    if-nez v3, :cond_b5

    .line 1060
    :cond_9b
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v6, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    sget v7, Lcom/android/systemui/R$id;->qs_tile_enabled_tag:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1062
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1063
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1066
    :cond_b5
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1067
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1069
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->updateRecordsWhenMove(IIZ)V

    .line 1072
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1075
    iget-object p3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Lcom/android/systemui/qs/QSTileHost;->moveTile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget-object p3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    invoke-virtual {p3, v0}, Lcom/android/systemui/qs/QSTileHost;->setCurrentVisibleIndex(I)V

    if-le p1, p2, :cond_f1

    :goto_df
    if-lt p1, p2, :cond_103

    .line 1083
    iget-object p3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p3, p3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p3}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_df

    :cond_f1
    :goto_f1
    if-gt p1, p2, :cond_103

    .line 1087
    iget-object p3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p3, p3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p3}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_f1

    .line 1090
    :cond_103
    iget-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragging:Z

    if-eqz p1, :cond_10a

    .line 1091
    invoke-direct {p0, p2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->checkTileEditText(I)V

    :cond_10a
    const-string p0, "onMoveEnd end"

    .line 1094
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateRecordsWhenMove(IIZ)V
    .registers 9

    if-ne p1, p2, :cond_5

    if-nez p3, :cond_5

    return-void

    .line 1100
    :cond_5
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1103
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1104
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    if-gt p1, v2, :cond_1d

    if-le p2, v2, :cond_1d

    add-int/lit8 v2, p2, -0x1

    goto :goto_1e

    :cond_1d
    move v2, p2

    :goto_1e
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1108
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    if-gt p1, v0, :cond_2c

    if-le p2, v0, :cond_2c

    add-int/lit8 v0, v0, -0x1

    .line 1109
    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    goto :goto_3a

    .line 1110
    :cond_2c
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    if-le p1, v0, :cond_32

    if-le p2, v0, :cond_34

    :cond_32
    if-eqz p3, :cond_3a

    .line 1111
    :cond_34
    iget p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    .line 1114
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->calculateQSValue()V

    .line 1119
    iget p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesNum:I

    .line 1120
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, -0x1

    move v1, p1

    move p1, p3

    move v0, p1

    :goto_49
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1121
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_60

    goto :goto_49

    :cond_60
    if-eq p1, p3, :cond_6e

    .line 1123
    iget v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_6e

    if-nez v1, :cond_6b

    goto :goto_6e

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_6e
    :goto_6e
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 1129
    :goto_71
    iput p1, v2, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    .line 1130
    iput v0, v2, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_49

    :cond_78
    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 256
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mTileViewDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 257
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 258
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->updateResources()Z

    return-void
.end method

.method public getSwappableChildLeftTop(Landroid/view/View;)Landroid/graphics/Point;
    .registers 7

    .line 770
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getTileIndex(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 771
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getPanelWidth()I

    move-result v0

    .line 772
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    .line 773
    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellWidth:I

    mul-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 774
    iget v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingSide:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v0, v4

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    .line 775
    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    add-int/2addr v2, v0

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    .line 776
    iget p1, p1, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getRowTop(I)I

    move-result p0

    .line 778
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 779
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 780
    iput p0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method

.method public isAnimatingToCloseCustomize()Z
    .registers 1

    .line 455
    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mAnimatingToCloseCustomize:Z

    return p0
.end method

.method public isAnimatingToOpenCustomize()Z
    .registers 1

    .line 451
    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mAnimatingToOpenCustomize:Z

    return p0
.end method

.method public isQSPanelEditAnimating()Z
    .registers 1

    .line 526
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isQsCustomize()Z
    .registers 1

    .line 447
    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsCustomize:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 131
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mNavigationBarBottomHeight:I

    .line 132
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->calculateQSValue()V

    .line 133
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 1146
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 1147
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->updateResources()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    .line 171
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getPanelWidth()I

    move-result p1

    .line 172
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    .line 173
    iget p3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellWidth:I

    mul-int p4, p3, p2

    sub-int p4, p1, p4

    .line 174
    iget p5, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingSide:I

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    const/4 p5, 0x1

    sub-int/2addr p2, p5

    div-int/2addr p4, p2

    .line 175
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRealDefaultDisplayX:I

    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getPanelWidth()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p5, :cond_25

    goto :goto_26

    :cond_25
    move p5, v1

    .line 177
    :goto_26
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 178
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    goto :goto_2c

    .line 181
    :cond_43
    iget v3, v2, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    invoke-direct {p0, v3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getRowTop(I)I

    move-result v3

    .line 182
    iget v4, v2, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    mul-int v5, v4, p3

    mul-int/2addr v4, p4

    add-int/2addr v5, v4

    iget v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingSide:I

    add-int/2addr v5, v4

    .line 184
    iget-object v4, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    if-eqz p5, :cond_5f

    sub-int v5, p1, v5

    sub-int v4, v5, v4

    goto :goto_63

    :cond_5f
    add-int/2addr v4, v5

    move v9, v5

    move v5, v4

    move v4, v9

    .line 192
    :goto_63
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isQsCustomize()Z

    move-result v6

    if-nez v6, :cond_ac

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isAnimatingToOpenCustomize()Z

    move-result v6

    if-eqz v6, :cond_70

    goto :goto_ac

    .line 197
    :cond_70
    iget v6, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelNormalHeight:I

    iget-object v7, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_a6

    .line 198
    iget-object v6, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    .line 199
    iget-object v7, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v7

    if-nez v7, :cond_9e

    .line 200
    iget-object v6, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    iget v7, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelNormalHeight:I

    iget-object v8, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 202
    :cond_9e
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    add-int/2addr v4, p2

    add-int/2addr v5, p2

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_2c

    .line 204
    :cond_a6
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_2c

    .line 193
    :cond_ac
    :goto_ac
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    add-int/2addr v4, p2

    add-int/2addr v5, p2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_2c

    .line 208
    :cond_ba
    iget p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesRows:I

    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    mul-int/2addr p1, p2

    .line 210
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    iget p3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackgroundMarginTop:I

    add-int/2addr p1, p3

    iget p3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingTop:I

    add-int/2addr p1, p3

    iget p3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRealDefaultDisplayX:I

    iget p4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditMaxHeight:I

    mul-int/lit8 p4, p4, 0x2

    invoke-virtual {p2, v1, p1, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 213
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .line 138
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 142
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesNum:I

    .line 143
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    move v3, p2

    move p2, v1

    move v2, p2

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 144
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2c

    goto :goto_15

    :cond_2c
    if-eq p2, v1, :cond_3a

    .line 145
    iget v5, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mColumns:I

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_3a

    if-nez v3, :cond_37

    goto :goto_3a

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_3a
    :goto_3a
    add-int/lit8 p2, p2, 0x1

    const/4 v2, 0x0

    .line 151
    :goto_3d
    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    .line 152
    iput v2, v4, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    .line 154
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 155
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 156
    iget-object v4, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v5, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellWidth:I

    invoke-static {v5}, Lcom/flyme/systemui/qs/MzQSTileLayout;->exactly(I)I

    move-result v5

    iget v6, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    invoke-static {v6}, Lcom/flyme/systemui/qs/MzQSTileLayout;->exactly(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->measure(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 162
    :cond_60
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingTop:I

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesRows:I

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 163
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isQsCustomize()Z

    move-result v0

    if-nez v0, :cond_74

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isQSPanelEditAnimating()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 164
    :cond_74
    iget p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditHeight:I

    .line 166
    :cond_76
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSwapEnd(Landroid/view/View;Landroid/view/View;)V
    .registers 12

    .line 718
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getTileIndex(Landroid/view/View;)I

    move-result p1

    .line 719
    invoke-direct {p0, p2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getTileIndex(Landroid/view/View;)I

    move-result p2

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwapEnd ：fromIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",toIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzQSTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 724
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 726
    iget-boolean v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragging:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-nez v2, :cond_6c

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_6c

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_6c

    .line 727
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    sget v8, Lcom/android/systemui/R$id;->qs_tile_enabled_tag:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 729
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 730
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 732
    :cond_6c
    iget-boolean v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mDragging:Z

    if-nez v2, :cond_98

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_98

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_98

    .line 733
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    sget v6, Lcom/android/systemui/R$id;->qs_tile_enabled_tag:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 735
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 736
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 740
    :cond_98
    iget v2, v0, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    .line 741
    iget v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    .line 742
    iget v4, v1, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    iput v4, v0, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    .line 743
    iget v4, v1, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    iput v4, v0, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    .line 744
    iput v2, v1, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    .line 745
    iput v3, v1, Lcom/android/systemui/qs/QSPanel$Record;->col:I

    .line 748
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 755
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->swapTile(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object p0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 765
    iget-object p0, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 218
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isQsCustomize()Z

    move-result v0

    if-nez v0, :cond_b

    .line 219
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 221
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    if-eq v0, v1, :cond_4d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4d

    goto/16 :goto_93

    .line 231
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mFirstY:F

    sub-float/2addr v0, v4

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mFirstX:F

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 233
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 234
    iget-boolean v5, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsFlingUp:Z

    if-eqz v5, :cond_93

    cmpg-float p1, p1, v4

    if-gez p1, :cond_93

    sget p1, Lcom/flyme/systemui/qs/MzQSTileLayout;->GESTURE_TOUCH_SLOP:I

    mul-int/2addr p1, v3

    int-to-float p1, p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_93

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_93

    .line 235
    iput-boolean v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsPerformExitEdit:Z

    .line 236
    iput-boolean v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsFlingUp:Z

    goto :goto_93

    .line 241
    :cond_4d
    iget-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsPerformExitEdit:Z

    if-eqz p1, :cond_56

    .line 242
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSPanel;->showCustomize(Z)V

    .line 244
    :cond_56
    iput-boolean v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsPerformExitEdit:Z

    .line 245
    iput-boolean v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsFlingUp:Z

    .line 246
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_93

    .line 223
    :cond_62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mFirstX:F

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mFirstY:F

    .line 225
    iget p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mFirstX:F

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mFirstY:F

    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isInBlankArea(FF)Z

    move-result p1

    if-eqz p1, :cond_86

    iget p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRealDefaultDisplayY:I

    int-to-float p1, p1

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mFirstY:F

    sub-float/2addr p1, v0

    sget v0, Lcom/flyme/systemui/qs/MzQSTileLayout;->GESTURE_TOUCH_SLOP:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_86

    move v2, v1

    :cond_86
    iput-boolean v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsFlingUp:Z

    .line 226
    iget-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsFlingUp:Z

    if-eqz p1, :cond_93

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 249
    :cond_93
    :goto_93
    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mIsFlingUp:Z

    return p0
.end method

.method public removeAllViews()V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 271
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_6

    .line 273
    :cond_19
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 265
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 266
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->updateResources()Z

    return-void
.end method

.method public setBrightnessView(Landroid/view/View;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    return-void
.end method

.method public setExpanded(Z)V
    .registers 2

    .line 459
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mExpanded:Z

    return-void
.end method

.method public setExpansion(F)V
    .registers 2

    .line 322
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mExpansion:F

    .line 323
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setGridContentAlpha(ZI)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 463
    :goto_2
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_29

    .line 464
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 465
    iget v4, v2, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    if-le v4, p2, :cond_21

    .line 466
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-eqz p1, :cond_1d

    move v3, v0

    :cond_1d
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_26

    .line 468
    :cond_21
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 471
    :cond_29
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isQsCustomize()Z

    move-result v1

    if-nez v1, :cond_39

    .line 472
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    move v0, v3

    :goto_35
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_46

    .line 473
    :cond_39
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesRows:I

    if-ge p2, v1, :cond_46

    .line 474
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackground:Landroid/view/View;

    if-eqz p1, :cond_42

    goto :goto_43

    :cond_42
    move v0, v3

    :goto_43
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_46
    :goto_46
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 342
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getCurrentVisibleIndex()I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCurrentVisibleIndex:I

    .line 343
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->calculateQSValue()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 2

    .line 479
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mKeyguardShowing:Z

    .line 480
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->calculateQSValue()V

    return-void
.end method

.method public setListening(Z)V
    .registers 4

    .line 328
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 329
    :cond_5
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mListening:Z

    .line 330
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 331
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_d

    :cond_21
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method

.method public setQSPanelNormalHeight(I)V
    .registers 3

    .line 1137
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelNormalHeight:I

    if-eq v0, p1, :cond_9

    .line 1138
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelNormalHeight:I

    .line 1139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setVisibleViewScale(F)V
    .registers 8

    .line 1151
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesNum:I

    .line 1152
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1153
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_8

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_23

    goto :goto_8

    .line 1154
    :cond_23
    iget v3, v2, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    invoke-direct {p0, v3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->getRowTop(I)I

    move-result v3

    .line 1155
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isQsCustomize()Z

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4d

    iget v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelNormalHeight:I

    iget-object v5, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    .line 1156
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_4d

    .line 1157
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 1158
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_8

    .line 1160
    :cond_4d
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 1161
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_8

    .line 1164
    :cond_5a
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1165
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public showQsCustomize(Z)Z
    .registers 10

    .line 355
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 358
    :cond_c
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mAnimatingToOpenCustomize:Z

    xor-int/lit8 v0, p1, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mAnimatingToCloseCustomize:Z

    .line 360
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->fireShowingTilesEdit(Z)V

    .line 361
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingTop:I

    .line 362
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_22

    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCollapsedTilesRows:I

    goto :goto_24

    :cond_22
    iget v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mEnabledTilesRows:I

    :goto_24
    iget v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 363
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    if-nez p1, :cond_2f

    .line 364
    sget v3, Lcom/android/systemui/R$animator;->qs_container_normal_in_animator:I

    goto :goto_31

    :cond_2f
    sget v3, Lcom/android/systemui/R$animator;->qs_container_normal_out_animator:I

    .line 363
    :goto_31
    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    if-eqz p1, :cond_3f

    const-wide/16 v3, 0x0

    goto :goto_41

    :cond_3f
    const-wide/16 v3, 0x64

    .line 366
    :goto_41
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 367
    new-instance v3, Lcom/flyme/systemui/qs/MzQSTileLayout$1;

    invoke-direct {v3, p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout$1;-><init>(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_52

    const/4 v4, 0x0

    goto :goto_53

    :cond_52
    move v4, v3

    :goto_53
    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v4, v6, v1

    sub-float v4, v3, v4

    const/4 v7, 0x1

    aput v4, v6, v7

    .line 388
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 389
    iget-object v6, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 390
    new-instance v6, Lcom/flyme/systemui/qs/MzQSTileLayout$2;

    invoke-direct {v6, p0, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout$2;-><init>(Lcom/flyme/systemui/qs/MzQSTileLayout;I)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 399
    new-instance v0, Lcom/flyme/systemui/qs/MzQSTileLayout$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout$3;-><init>(Lcom/flyme/systemui/qs/MzQSTileLayout;)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 415
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    .line 416
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/flyme/systemui/qs/MzQSTileLayout$4;

    invoke-direct {v6, p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout$4;-><init>(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mExpanded:Z

    if-eqz v0, :cond_97

    .line 434
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v5, [Landroid/animation/Animator;

    aput-object v4, v0, v1

    aput-object v2, v0, v7

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_aa

    .line 436
    :cond_97
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 437
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mBrightnessView:Landroid/view/View;

    if-nez p1, :cond_a1

    goto :goto_a2

    :cond_a1
    const/4 v1, 0x4

    :goto_a2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 441
    :goto_aa
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return v7
.end method

.method public updateResources()Z
    .registers 4

    .line 284
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_54

    .line 287
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_height_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    .line 288
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_width_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellWidth:I

    .line 289
    sget v1, Lcom/android/systemui/R$dimen;->qs_padding_side_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingSide:I

    .line 290
    sget v1, Lcom/android/systemui/R$dimen;->qs_padding_top_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingTop:I

    .line 291
    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_background_margin_top_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackgroundMarginTop:I

    .line 292
    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_background_padding_top_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackgroundPaddingTop:I

    .line 293
    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_tips_margin_bottom_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTipsMarginBottom:I

    .line 294
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_header_height_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mHeaderHeight:I

    goto :goto_94

    .line 296
    :cond_54
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_height_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellHeight:I

    .line 297
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCellWidth:I

    .line 298
    sget v1, Lcom/android/systemui/R$dimen;->qs_padding_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingSide:I

    .line 299
    sget v1, Lcom/android/systemui/R$dimen;->qs_padding_top_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mPanelPaddingTop:I

    .line 300
    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_background_margin_top_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackgroundMarginTop:I

    .line 301
    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_background_padding_top_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditBackgroundPaddingTop:I

    .line 302
    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_tips_margin_bottom_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTipsMarginBottom:I

    .line 303
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mHeaderHeight:I

    .line 305
    :goto_94
    sget v1, Lcom/android/systemui/R$integer;->quick_settings_num_rows_collapsed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mCollapsedTilesRows:I

    .line 306
    sget v1, Lcom/android/systemui/R$dimen;->qs_tiles_edit_tips_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSTilesEditTipsHeight:I

    .line 307
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditMaxHeight:I

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mQSPanelEditHeight:I

    .line 309
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 311
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRealDefaultDisplayY:I

    .line 312
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout;->mRealDefaultDisplayX:I

    .line 314
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->calculateQSValue()V

    .line 316
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return v2
.end method
