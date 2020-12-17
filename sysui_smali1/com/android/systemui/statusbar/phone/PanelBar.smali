.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PanelBar"


# instance fields
.field private mBouncerShowing:Z

.field private mExpanded:Z

.field mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field protected mPanelFraction:F

.field private mState:I

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 197
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p1

    if-nez p1, :cond_10

    .line 198
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    const/4 p1, 0x1

    goto :goto_1e

    .line 201
    :cond_10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews(Z)V

    const/4 p1, 0x0

    .line 202
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 203
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 207
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantCollapse()V

    move p1, v1

    :goto_1e
    if-nez p1, :cond_2a

    .line 211
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz p1, :cond_2a

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_2a
    return-void
.end method

.method public getExpansionFraction()F
    .registers 1

    .line 104
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    return p0
.end method

.method public go(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method

.method public isClosed()Z
    .registers 1

    .line 224
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isExpanded()Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    return p0
.end method

.method public onClosingFinished()V
    .registers 1

    return-void
.end method

.method public onExpandingFinished()V
    .registers 1

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onPanelCollapsed()V
    .registers 1

    return-void
.end method

.method public onPanelFullyOpened()V
    .registers 1

    return-void
.end method

.method public onPanelPeeked()V
    .registers 1

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    if-eqz p1, :cond_24

    .line 66
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_7

    goto :goto_24

    .line 71
    :cond_7
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "panel_bar_super_parcelable"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string/jumbo v0, "state"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    :cond_23
    return-void

    .line 67
    :cond_24
    :goto_24
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "panel_bar_super_parcelable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_33

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_32

    .line 128
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    .line 128
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v2

    .line 134
    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8e

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v0, :cond_61

    .line 138
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "onTouch: no panel for touch at (%d,%d)"

    .line 138
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 142
    :cond_61
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_8e

    .line 147
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    .line 147
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 153
    :cond_8e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz p0, :cond_98

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_99

    :cond_98
    move v2, v3

    :cond_99
    return v2
.end method

.method public onTrackingStarted()V
    .registers 2

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public onTrackingStopped(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public panelEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public panelExpansionChanged(FZ)V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 168
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_25

    .line 173
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p2, :cond_17

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 178
    :cond_17
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p2

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_22

    goto :goto_23

    :cond_22
    move p1, v1

    :goto_23
    move p2, v1

    goto :goto_27

    :cond_25
    move p2, p1

    move p1, v1

    :goto_27
    if-eqz p1, :cond_35

    .line 182
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p1, :cond_35

    const/4 p1, 0x2

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_45

    :cond_35
    if-eqz p2, :cond_45

    .line 185
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p1, :cond_45

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz p1, :cond_45

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_45
    :goto_45
    return-void
.end method

.method public panelExpansionChangedInKeyguardShade(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V
    .registers 7

    .line 256
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 p2, 0x0

    if-nez p3, :cond_16

    .line 257
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x4

    goto :goto_17

    :cond_16
    :goto_16
    move v0, p2

    :goto_17
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 258
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 259
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setFullyCollapsedOnKeyguardShade(Z)V

    .line 260
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    goto :goto_32

    .line 262
    :cond_29
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_32

    move p3, v2

    :cond_32
    :goto_32
    if-eqz p3, :cond_4c

    .line 268
    iget p3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p3, :cond_3e

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 273
    :cond_3e
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p1

    const/high16 p3, 0x3f800000  # 1.0f

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_49

    goto :goto_4a

    :cond_49
    move v2, p2

    :goto_4a
    move p1, p2

    goto :goto_4e

    :cond_4c
    move p1, v2

    move v2, p2

    :goto_4e
    if-eqz v2, :cond_5c

    .line 277
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p3, :cond_5c

    const/4 p1, 0x2

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_68

    :cond_5c
    if-eqz p1, :cond_68

    .line 280
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p1, :cond_68

    .line 281
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_68
    :goto_68
    return-void
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method public setBouncerShowing(Z)V
    .registers 2

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 97
    :goto_7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_11
    return-void
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 89
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    return-void
.end method

.method protected shouldPanelBeVisible()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method protected updateVisibility()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->shouldPanelBeVisible()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x4

    :goto_b
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
