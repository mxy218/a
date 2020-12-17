.class Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationViewState"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;)V
    .registers 2

    .line 3193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;-><init>()V

    return-void
.end method

.method private handleFixedTranslationZ(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 3

    .line 3209
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hasExpandingChild()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3210
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 3211
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    :cond_12
    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .registers 5

    .line 3228
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_17

    .line 3229
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3230
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 3233
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;->handleFixedTranslationZ(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 3234
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 3235
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->startChildAnimation(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    :cond_17
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .registers 4

    .line 3197
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_17

    .line 3198
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3199
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 3202
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;->handleFixedTranslationZ(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 3203
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 3204
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyChildrenState()V

    :cond_17
    return-void
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .registers 2

    .line 3217
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->onYTranslationAnimationFinished(Landroid/view/View;)V

    .line 3218
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_13

    .line 3219
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3220
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x0

    .line 3221
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_13
    return-void
.end method
