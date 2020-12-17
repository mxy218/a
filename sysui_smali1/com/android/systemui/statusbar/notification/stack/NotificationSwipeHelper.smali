.class Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;
.super Lcom/android/systemui/SwipeHelper;
.source "NotificationSwipeHelper.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;
    }
.end annotation


# static fields
.field protected static final COVER_MENU_DELAY:J = 0xfa0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field private mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field private final mFalsingCheck:Ljava/lang/Runnable;

.field private mIsExpanded:Z

.field private mMenuExposedView:Landroid/view/View;

.field private final mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field private mPulsing:Z

.field private mTranslatingParentView:Landroid/view/View;


# direct methods
.method constructor <init>(ILcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;Lcom/android/systemui/plugins/FalsingManager;)V
    .registers 6

    .line 58
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V

    .line 59
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 61
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    return-void
.end method

.method private handleSwipeFromClosedState(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .registers 14

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 199
    invoke-interface {p4, p3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isTowardsMenu(F)Z

    move-result v1

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getEscapeVelocity()F

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_18

    move v2, v3

    goto :goto_19

    :cond_18
    move v2, v4

    .line 202
    :goto_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    .line 203
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->canBeDismissed()Z

    move-result v7

    if-nez v7, :cond_31

    const-wide/high16 v7, 0x4069000000000000L  # 200.0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_31

    move v5, v3

    goto :goto_32

    :cond_31
    move v5, v4

    :goto_32
    if-eqz v1, :cond_38

    if-nez v0, :cond_38

    move v6, v3

    goto :goto_39

    :cond_38
    move v6, v4

    :goto_39
    if-eqz v2, :cond_40

    if-eqz v5, :cond_3e

    goto :goto_40

    :cond_3e
    move v5, v4

    goto :goto_41

    :cond_40
    :goto_40
    move v5, v3

    .line 208
    :goto_41
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->swipedEnoughToShowMenu(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Z

    move-result v7

    if-eqz v7, :cond_4b

    if-eqz v5, :cond_4b

    move v5, v3

    goto :goto_4c

    :cond_4b
    move v5, v4

    :goto_4c
    if-eqz v2, :cond_54

    if-nez v1, :cond_54

    if-nez v0, :cond_54

    move v0, v3

    goto :goto_55

    :cond_54
    move v0, v4

    .line 211
    :goto_55
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldShowGutsOnSnapOpen()Z

    move-result v2

    if-nez v2, :cond_66

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mIsExpanded:Z

    if-eqz v2, :cond_64

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mPulsing:Z

    if-nez v2, :cond_64

    goto :goto_66

    :cond_64
    move v2, v4

    goto :goto_67

    :cond_66
    :goto_66
    move v2, v3

    :goto_67
    if-nez v5, :cond_70

    if-eqz v0, :cond_6e

    if-eqz v2, :cond_6e

    goto :goto_70

    :cond_6e
    move v0, v4

    goto :goto_71

    :cond_70
    :goto_70
    move v0, v3

    .line 215
    :goto_71
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    move-result v2

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_7e

    if-eqz v0, :cond_7e

    goto :goto_7f

    :cond_7e
    move v3, v4

    :goto_7f
    if-nez v6, :cond_83

    if-eqz v3, :cond_8c

    :cond_83
    if-eqz v2, :cond_8c

    .line 221
    invoke-virtual {p0, p2, v2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapOpen(Landroid/view/View;IF)V

    .line 222
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapOpen()V

    goto :goto_a1

    .line 223
    :cond_8c
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9b

    if-nez v1, :cond_9b

    .line 224
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    .line 225
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onDismiss()V

    goto :goto_a1

    .line 227
    :cond_9b
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 228
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    :goto_a1
    return-void
.end method

.method private handleSwipeFromOpenState(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .registers 6

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 237
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isWithinSnapMenuThreshold()Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p1, :cond_17

    .line 241
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapOpen()V

    .line 242
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    move-result p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapOpen(Landroid/view/View;IF)V

    goto :goto_2c

    :cond_17
    if-eqz p1, :cond_26

    .line 243
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldSnapBack()Z

    move-result p1

    if-nez p1, :cond_26

    .line 245
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    .line 246
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onDismiss()V

    goto :goto_2c

    .line 248
    :cond_26
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 249
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    :goto_2c
    return-void
.end method

.method public static isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 426
    :cond_4
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v1, :cond_10

    .line 427
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    goto :goto_14

    .line 428
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 429
    :goto_14
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 430
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    float-to-int p0, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 432
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 433
    aget v0, v3, v0

    const/4 v4, 0x1

    .line 434
    aget v3, v3, v4

    .line 435
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    add-int/2addr v1, v3

    invoke-direct {v4, v0, v3, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 436
    invoke-virtual {v4, v2, p0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private swipedEnoughToShowMenu(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Z
    .registers 2

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->swipedFarEnough()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isSwipedEnoughToShowMenu()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public clearCurrentMenuRow()V
    .registers 2

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    return-void
.end method

.method public clearExposedMenuView()V
    .registers 2

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setExposedMenuView(Landroid/view/View;)V

    return-void
.end method

.method public clearTranslatingParentView()V
    .registers 2

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setTranslatingParentView(Landroid/view/View;)V

    return-void
.end method

.method public dismiss(Landroid/view/View;F)V
    .registers 4

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->swipedFastEnough()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 355
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    return-void
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .registers 4

    .line 256
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->superDismissChild(Landroid/view/View;FZ)V

    .line 257
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->shouldDismissQuickly()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 260
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->handleChildViewDismissed(Landroid/view/View;)V

    .line 262
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onDismiss()V

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    return-void
.end method

.method public getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p0
.end method

.method protected getEscapeVelocity()F
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 372
    invoke-super {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result p0

    return p0
.end method

.method public getExposedMenuView()Landroid/view/View;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    return-object p0
.end method

.method protected getFalsingCheck()Ljava/lang/Runnable;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    return-object p0
.end method

.method protected getHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getMinDismissVelocity()F
    .registers 1

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getEscapeVelocity()F

    move-result p0

    return p0
.end method

.method public getTranslatingParentView()Landroid/view/View;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    return-object p0
.end method

.method public getTranslation(Landroid/view/View;)F
    .registers 2

    .line 323
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_b

    .line 324
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .registers 5

    .line 307
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_b

    .line 308
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 310
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->superGetViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method protected handleMenuCoveredOrDismissed()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getExposedMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 293
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    if-ne v0, v1, :cond_d

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->clearExposedMenuView()V

    :cond_d
    return-void
.end method

.method protected handleMenuRowSwipe(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 173
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldShowMenu()Z

    move-result v0

    if-nez v0, :cond_17

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 178
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    goto :goto_16

    .line 180
    :cond_10
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 181
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    :goto_16
    return-void

    .line 186
    :cond_17
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isSnappedAndOnSameSide()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleSwipeFromOpenState(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    goto :goto_24

    .line 192
    :cond_21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleSwipeFromClosedState(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    :goto_24
    return-void
.end method

.method public handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .registers 5

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p4

    if-eqz p4, :cond_e

    .line 163
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEnd()V

    .line 164
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuRowSwipe(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method protected initializeRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 136
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 137
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz p1, :cond_1e

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchStart()V

    :cond_1e
    return-void
.end method

.method protected onChildSnappedBack(Landroid/view/View;F)V
    .registers 4

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_f

    .line 111
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->clearCurrentMenuRow()V

    :cond_f
    return-void
.end method

.method public onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 121
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchStart()V

    .line 123
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->clearCurrentMenuRow()V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getFalsingCheck()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 129
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_27

    .line 130
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->initializeRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_27
    return-void
.end method

.method public onMenuShown(Landroid/view/View;)V
    .registers 4

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslatingParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setExposedMenuView(Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    invoke-interface {v0}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getFalsingCheck()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getFalsingCheck()Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_28
    return-void
.end method

.method public onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .registers 5

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getFalsingCheck()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 154
    invoke-interface {p0, p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchMove(F)V

    :cond_14
    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .registers 4

    .line 403
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->shouldResetMenu(Z)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 406
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getExposedMenuView()Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 411
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_28

    .line 413
    :cond_19
    instance-of p1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_28

    .line 414
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 415
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p1

    if-nez p1, :cond_28

    .line 416
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    .line 419
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->clearExposedMenuView()V

    return-void
.end method

.method public setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-void
.end method

.method public setExposedMenuView(Landroid/view/View;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    return-void
.end method

.method public setIsExpanded(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mIsExpanded:Z

    return-void
.end method

.method public setPulsing(Z)V
    .registers 2

    .line 441
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mPulsing:Z

    return-void
.end method

.method protected setTranslatingParentView(Landroid/view/View;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    return-void
.end method

.method public setTranslation(Landroid/view/View;F)V
    .registers 3

    .line 316
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_9

    .line 317
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setTranslation(F)V

    :cond_9
    return-void
.end method

.method protected shouldResetMenu(Z)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    if-eqz v0, :cond_d

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    if-ne v0, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method

.method public snapChild(Landroid/view/View;FF)V
    .registers 4

    .line 278
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->superSnapChild(Landroid/view/View;FF)V

    .line 279
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    invoke-interface {p3, p1}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_10

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    :cond_10
    return-void
.end method

.method protected snapClosed(Landroid/view/View;F)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    return-void
.end method

.method public snapOpen(Landroid/view/View;IF)V
    .registers 4

    int-to-float p2, p2

    .line 361
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    return-void
.end method

.method public snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .registers 3

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onSnooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method protected superDismissChild(Landroid/view/View;FZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    return-void
.end method

.method protected superGetViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 301
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method protected superSnapChild(Landroid/view/View;FF)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 273
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    return-void
.end method

.method protected swipedFarEnough()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 350
    invoke-super {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result p0

    return p0
.end method

.method public swipedFarEnough(FF)Z
    .registers 3

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->swipedFarEnough()Z

    move-result p0

    return p0
.end method

.method protected swipedFastEnough()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 339
    invoke-super {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result p0

    return p0
.end method

.method public swipedFastEnough(FF)Z
    .registers 3

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->swipedFastEnough()Z

    move-result p0

    return p0
.end method
