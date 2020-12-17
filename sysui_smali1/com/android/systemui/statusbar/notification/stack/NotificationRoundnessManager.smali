.class public Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
.super Ljava/lang/Object;
.source "NotificationRoundnessManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mAnimatedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mAppearFraction:F

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mExpanded:Z

.field private final mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private final mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private mRoundingChangedCallback:Ljava/lang/Runnable;

.field private final mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private final mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 55
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 56
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 57
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    new-array v0, v0, [Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 58
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method private getRoundness(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)F
    .registers 6

    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    if-nez v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz p2, :cond_1d

    return v1

    .line 136
    :cond_1d
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p2, :cond_26

    return v1

    .line 139
    :cond_26
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne p1, p2, :cond_32

    .line 142
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAppearFraction:F

    sub-float/2addr v1, p0

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    return p0

    .line 144
    :cond_32
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_41

    return v1

    :cond_41
    const/4 p0, 0x0

    return p0
.end method

.method private handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .registers 13

    .line 211
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_3e

    aget-object v4, p1, v2

    if-eqz p3, :cond_f

    .line 213
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v4

    goto :goto_13

    :cond_f
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v4

    :goto_13
    const/4 v5, 0x1

    if-eqz v4, :cond_3b

    .line 216
    array-length v6, p2

    move v7, v1

    :goto_18
    if-ge v7, v6, :cond_23

    aget-object v8, p2, v7

    if-ne v8, v4, :cond_20

    move v6, v5

    goto :goto_24

    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_23
    move v6, v1

    :goto_24
    if-nez v6, :cond_3b

    .line 225
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    move v3, v5

    goto :goto_37

    :cond_36
    move v3, v1

    .line 224
    :goto_37
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move v3, v5

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3e
    return v3
.end method

.method private handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .registers 13

    .line 178
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_52

    aget-object v4, p2, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_4f

    .line 182
    array-length v6, p1

    move v7, v1

    :goto_d
    if-ge v7, v6, :cond_3b

    aget-object v8, p1, v7

    if-eqz p3, :cond_18

    .line 184
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v8

    goto :goto_1c

    .line 185
    :cond_18
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v8

    :goto_1c
    if-ne v8, v4, :cond_38

    .line 188
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isFirstInSection()Z

    move-result v6

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v7

    if-ne v6, v7, :cond_36

    .line 190
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isLastInSection()Z

    move-result v6

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v7

    if-eq v6, v7, :cond_33

    goto :goto_36

    :cond_33
    move v7, v1

    move v6, v5

    goto :goto_3d

    :cond_36
    :goto_36
    move v6, v5

    goto :goto_3c

    :cond_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_3b
    move v6, v1

    :goto_3c
    move v7, v6

    :goto_3d
    if-eqz v6, :cond_41

    if-eqz v7, :cond_4f

    .line 199
    :cond_41
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 200
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    :cond_4e
    move v3, v5

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_52
    return v3
.end method

.method private isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 105
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    array-length v4, v3

    if-ge v1, v4, :cond_1b

    .line 106
    aget-object v4, v3, v1

    if-ne p1, v4, :cond_12

    if-nez p2, :cond_10

    if-lez v2, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0

    .line 109
    :cond_12
    aget-object v3, v3, v1

    if-eqz v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1b
    return v0
.end method

.method private isLastInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .registers 9

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ltz v0, :cond_1f

    .line 119
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    aget-object v5, v4, v0

    if-ne p1, v5, :cond_16

    if-nez p2, :cond_15

    if-lez v3, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :cond_15
    :goto_15
    return v1

    .line 122
    :cond_16
    aget-object v4, v4, v0

    if-eqz v4, :cond_1c

    add-int/lit8 v3, v3, 0x1

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_1f
    return v2
.end method

.method private updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V
    .registers 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void
.end method

.method private updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .registers 7

    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)F

    move-result v1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)F

    move-result v3

    .line 93
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundness(FZ)Z

    move-result v1

    .line 94
    invoke-virtual {p1, v3, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    move-result p2

    .line 95
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v3

    .line 96
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result p0

    .line 97
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFirstInSection(Z)V

    .line 98
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setLastInSection(Z)V

    if-nez v3, :cond_24

    if-eqz p0, :cond_29

    :cond_24
    if-nez v1, :cond_2a

    if-eqz p2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    :cond_2a
    :goto_2a
    return v0
.end method


# virtual methods
.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 64
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 3

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 69
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    return-void
.end method

.method public onHeadsupAnimatingAwayChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .registers 3

    const/4 p2, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    return-void
.end method

.method public setAnimatedChildren(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    return-void
.end method

.method public setExpanded(FF)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    move p1, v0

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 151
    :goto_9
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    .line 152
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAppearFraction:F

    .line 153
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_14

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    :cond_14
    return-void
.end method

.method public setOnRoundingChangedCallback(Ljava/lang/Runnable;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 242
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    .line 244
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    :cond_a
    return-void
.end method

.method public updateRoundedChildren([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2a

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    aget-object v4, v3, v1

    aput-object v4, v2, v1

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 163
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v2

    aput-object v2, v3, v1

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 166
    :cond_2a
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v1

    or-int/2addr v1, v0

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v3

    or-int/2addr v1, v3

    .line 168
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_4e

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4e
    return-void
.end method
