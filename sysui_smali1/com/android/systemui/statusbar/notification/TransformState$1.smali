.class Lcom/android/systemui/statusbar/notification/TransformState$1;
.super Ljava/lang/Object;
.source "TransformState.java"

# interfaces
.implements Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/TransformState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClippingStateChanged(Landroid/view/View;Z)V
    .registers 3

    .line 64
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_17

    .line 65
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_d

    const/4 p0, 0x1

    .line 67
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    goto :goto_17

    .line 68
    :cond_d
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x0

    .line 69
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    :cond_17
    :goto_17
    return-void
.end method

.method public shouldFinish(Landroid/view/View;)Z
    .registers 2

    .line 55
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_d

    .line 56
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method
