.class public Lcom/flyme/systemuitools/aod/view/AODDisplayView;
.super Landroid/widget/FrameLayout;
.source "AODDisplayView.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;


# instance fields
.field private final HORIZONTAL_POSITION:I

.field private TAG:Ljava/lang/String;

.field private final VERTICAL_POSITION:I

.field private mAodDiskClock:Lcom/flyme/systemuitools/aod/view/AODDiskClock;

.field private mAodNotification:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

.field private mContentLeft:[I

.field private mContentTop:[I

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mCoverByBlack:Z

.field private mDefPaddingBottom:I

.field private mDefPaddingLeft:I

.field private mDefPaddingLeftAndRight:I

.field private mDefPaddingRight:I

.field private mDefPaddingTop:I

.field private mDefPaddingTopAndBottom:I

.field private mDisplaySizeChange:Z

.field private mFingerprintIconAvaiable:Z

.field private mFirstTimeLayout:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mMusicPlaying:Z

.field private mMusicStateChange:Z

.field private mPosition:I

.field protected mPositionSimulateAlgorithm:Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;

.field private mStyleChange:Z

.field private mViewDefaultHeight:I

.field private mViewDefaultWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "AODDisplayView"

    .line 24
    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->TAG:Ljava/lang/String;

    const/16 p2, 0xb

    .line 25
    iput p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->HORIZONTAL_POSITION:I

    const/16 p2, 0x32

    .line 26
    iput p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->VERTICAL_POSITION:I

    const/16 p2, 0x64

    .line 27
    iput p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingLeftAndRight:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingTopAndBottom:I

    .line 28
    iput p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingLeft:I

    iput p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingRight:I

    iput p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingTop:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingBottom:I

    const/16 v0, 0x16

    new-array v0, v0, [I

    .line 30
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mContentLeft:[I

    new-array p2, p2, [I

    .line 31
    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mContentTop:[I

    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mFirstTimeLayout:Z

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mCoverByBlack:Z

    .line 51
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_padding_left_and_right:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingLeftAndRight:I

    .line 54
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_padding_top_and_bottom:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingTopAndBottom:I

    .line 56
    new-instance v1, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;

    invoke-direct {v1, p1}, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPositionSimulateAlgorithm:Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;

    .line 58
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_default_width:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultWidth:I

    .line 60
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_default_height0:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    .line 62
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->addCallBack(Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;)V

    .line 63
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->fingerprintAvaiable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mFingerprintIconAvaiable:Z

    .line 64
    sget p1, Lcom/android/systemui/R$dimen;->aod_display_padding_bottom_for_fingerprint:I

    .line 65
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingBottom:I

    .line 67
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->actInMzNightMode(I)V

    return-void
.end method

.method private fingerprintAvaiable()Z
    .registers 2

    const-string p0, "persist.sys.meizu.fingerprint"

    const/4 v0, 0x0

    .line 178
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private updateDefaultWidthAndHeight()V
    .registers 5

    .line 182
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    iget-boolean v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mMusicPlaying:Z

    if-eqz v1, :cond_1c

    .line 184
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_music_default_width:I

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultWidth:I

    .line 186
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_music_default_height:I

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    goto/16 :goto_97

    .line 189
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "aod_style"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 192
    sget v2, Lcom/android/systemui/R$dimen;->aod_display_view_default_width:I

    .line 193
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultWidth:I

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalStyleNoBG(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 197
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_default_height0:I

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    goto :goto_97

    :cond_4a
    const/4 v2, 0x4

    if-ne v1, v2, :cond_56

    .line 200
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_default_height2:I

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    goto :goto_97

    :cond_56
    const/16 v2, 0x8

    if-eq v1, v2, :cond_8f

    const/16 v2, 0x9

    if-eq v1, v2, :cond_8f

    const/16 v2, 0xa

    if-ne v1, v2, :cond_63

    goto :goto_8f

    .line 207
    :cond_63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalStyleWithBG(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 208
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_default_height4:I

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    goto :goto_97

    :cond_7a
    const/4 v2, 0x7

    if-ne v1, v2, :cond_86

    .line 211
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_default_height5:I

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    goto :goto_97

    .line 215
    :cond_86
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_default_height1:I

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    goto :goto_97

    .line 205
    :cond_8f
    :goto_8f
    sget v1, Lcom/android/systemui/R$dimen;->aod_display_view_default_height3:I

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    :goto_97
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 145
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mCoverByBlack:Z

    if-eqz p0, :cond_c

    const/high16 p0, -0x1000000

    .line 146
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_c
    return-void
.end method

.method public displaySizeChange()V
    .registers 2

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDisplaySizeChange:Z

    return-void
.end method

.method public musicStateChange(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mMusicStateChange:Z

    .line 170
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mMusicPlaying:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string p0, "Test"

    const-string v0, "aa onAttachedToWindow"

    .line 83
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    sget v0, Lcom/android/systemui/R$id;->aod_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mContentView:Landroid/widget/RelativeLayout;

    .line 75
    sget v0, Lcom/android/systemui/R$id;->disk_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/AODDiskClock;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mAodDiskClock:Lcom/flyme/systemuitools/aod/view/AODDiskClock;

    .line 76
    sget v0, Lcom/android/systemui/R$id;->aod_notification_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mAodNotification:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 90
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    .line 91
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p2

    .line 92
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->fingerprintAvaiable()Z

    move-result p3

    .line 93
    iget-object p4, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mFingerprintIconAvaiable:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mFingerprintIconAvaiable:Z

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "   currentFingerprintAvaiable:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget p4, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mLastWidth:I

    const/4 p5, 0x0

    if-ne p1, p4, :cond_3f

    iget p4, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mLastHeight:I

    if-eq p2, p4, :cond_3d

    goto :goto_3f

    :cond_3d
    move p4, p5

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 p4, 0x1

    .line 95
    :goto_40
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mFirstTimeLayout:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mStyleChange:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mMusicStateChange:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDisplaySizeChange:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mFingerprintIconAvaiable:Z

    if-ne v0, p3, :cond_56

    if-eqz p4, :cond_bd

    .line 96
    :cond_56
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mFirstTimeLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",style change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mStyleChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",music state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mMusicStateChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",size change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-boolean p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mFingerprintIconAvaiable:Z

    if-eqz p2, :cond_90

    if-nez p1, :cond_93

    .line 101
    :cond_90
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->updateDefaultWidthAndHeight()V

    .line 105
    :cond_93
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPositionSimulateAlgorithm:Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;

    if-nez p1, :cond_9b

    .line 106
    iget p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultWidth:I

    move v2, p3

    goto :goto_9c

    :cond_9b
    move v2, p1

    :goto_9c
    if-nez p2, :cond_a2

    .line 107
    iget p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    move v3, p3

    goto :goto_a3

    :cond_a2
    move v3, p2

    :goto_a3
    const/16 v4, 0xb

    const/16 v5, 0x32

    iget v6, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingTopAndBottom:I

    .line 109
    iget-boolean p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mFingerprintIconAvaiable:Z

    if-eqz p3, :cond_b1

    iget p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDefPaddingBottom:I

    move v7, p3

    goto :goto_b2

    :cond_b1
    move v7, v6

    .line 105
    :goto_b2
    invoke-virtual/range {v1 .. v7}, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->setUpForVerticalMove(IIIIII)V

    .line 111
    iput-boolean p5, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mFirstTimeLayout:Z

    .line 112
    iput-boolean p5, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mStyleChange:Z

    .line 113
    iput-boolean p5, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mMusicStateChange:Z

    .line 114
    iput-boolean p5, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mDisplaySizeChange:Z

    .line 116
    :cond_bd
    iget-object p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPositionSimulateAlgorithm:Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;

    iget p4, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPosition:I

    invoke-virtual {p3, p4}, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->getXOffset(I)I

    move-result p3

    .line 117
    iget-object p4, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPositionSimulateAlgorithm:Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;

    iget p5, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPosition:I

    invoke-virtual {p4, p5}, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->getYOffset(I)I

    move-result p4

    .line 119
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mLastWidth:I

    .line 120
    iput p2, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mLastHeight:I

    .line 122
    iget-object p5, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mContentView:Landroid/widget/RelativeLayout;

    add-int v0, p3, p1

    add-int v1, p4, p2

    invoke-virtual {p5, p3, p4, v0, v1}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 124
    iget-object p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "View width is "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height is "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mViewDefaultWidth is "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultWidth:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mViewDefaultHeight = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mViewDefaultHeight:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayout mPosition = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPosition:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", x = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPositionSimulateAlgorithm:Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;

    iget p4, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPosition:I

    .line 126
    invoke-virtual {p3, p4}, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->getXOffset(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", y = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPositionSimulateAlgorithm:Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;

    iget p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPosition:I

    .line 127
    invoke-virtual {p3, p0}, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->getYOffset(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationSettings(Z)V
    .registers 2

    return-void
.end method

.method public onStyleChange()V
    .registers 2

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mStyleChange:Z

    return-void
.end method

.method public refreshAODDisplay()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mAodDiskClock:Lcom/flyme/systemuitools/aod/view/AODDiskClock;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/view/AODDiskClock;->updateTime()V

    .line 138
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mAodNotification:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->refreshNotification()V

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->updateDateTime()V

    return-void
.end method

.method public updateContentPosition(I)V
    .registers 4

    .line 131
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPosition:I

    .line 132
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 133
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateContentPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->mPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
