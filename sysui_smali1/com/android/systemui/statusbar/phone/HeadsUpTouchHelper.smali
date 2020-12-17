.class public Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
.super Ljava/lang/Object;
.source "HeadsUpTouchHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

.field private mCollapseSnoozes:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mTouchSlop:F

.field private mTouchingHeadsUpView:Z

.field private mTrackingHeadsUp:Z

.field private mTrackingPointer:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 53
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    return-void
.end method

.method private endMotion()V
    .registers 2

    const/4 v0, -0x1

    .line 189
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    return-void
.end method

.method private setTrackingHeadsUp(Z)V
    .registers 3

    .line 153
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setTrackingHeadsUp(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method


# virtual methods
.method public getCollapseSnoozeState()Z
    .registers 1

    .line 201
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    return p0
.end method

.method public isTrackingHeadsUp()Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    return p0
.end method

.method public notifyFling(Z)V
    .registers 4

    if-eqz p1, :cond_58

    .line 159
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_58

    .line 160
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 161
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isDisturbForPop(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 162
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->snooze()V

    .line 164
    :cond_29
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 165
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result p1

    if-nez p1, :cond_58

    .line 166
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 167
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->snoozeNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)Z

    :cond_58
    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 68
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1b

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    move v0, v1

    .line 73
    :cond_1b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_ef

    if-eq v3, v4, :cond_cf

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5e

    const/4 v0, 0x3

    if-eq v3, v0, :cond_cf

    const/4 v0, 0x6

    if-eq v3, v0, :cond_37

    goto/16 :goto_143

    .line 97
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 98
    iget v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    if-ne v2, v0, :cond_143

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_4a

    move v4, v1

    .line 101
    :cond_4a
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    .line 102
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 103
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    goto/16 :goto_143

    .line 108
    :cond_5e
    iget p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    sub-float p1, v0, p1

    .line 110
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v3, :cond_143

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_143

    .line 111
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_143

    .line 112
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_8a

    move p1, v4

    goto :goto_8b

    :cond_8a
    move p1, v1

    .line 113
    :goto_8b
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    .line 114
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    if-eqz p1, :cond_92

    return v1

    .line 118
    :cond_92
    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    .line 120
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 121
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    int-to-float p1, p1

    .line 123
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    .line 122
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelScrimMinFraction(F)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v2, v0, v4, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandingFromPeek()V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->clearNotificationEffects()V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    return v4

    .line 138
    :cond_cf
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_eb

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v0, :cond_eb

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 141
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->shouldSwallowClick(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    return v4

    .line 146
    :cond_eb
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    goto :goto_143

    .line 77
    :cond_ef
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    .line 78
    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 79
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1, v2, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    .line 82
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_123

    .line 83
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 84
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_11f

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_11f

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_11f

    goto :goto_120

    :cond_11f
    move v4, v1

    :goto_120
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    goto :goto_143

    :cond_123
    if-nez p1, :cond_143

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_143

    .line 89
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_143

    .line 90
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 91
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 92
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    :cond_143
    :goto_143
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 178
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v2, 0x3

    if-eq p1, v2, :cond_11

    goto :goto_17

    .line 181
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    .line 182
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    :goto_17
    return v0
.end method
