.class Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->swapContent(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

.field final synthetic val$blockingHelper:Landroid/view/View;

.field final synthetic val$confirmation:Landroid/view/ViewGroup;

.field final synthetic val$isUndo:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;ZLandroid/view/ViewGroup;)V
    .registers 5

    .line 697
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$blockingHelper:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$isUndo:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$confirmation:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 698
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 702
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 707
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->mCancelled:Z

    if-nez p1, :cond_1d

    .line 708
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$blockingHelper:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$isUndo:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$confirmation:Landroid/view/ViewGroup;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->val$isUndo:Z

    if-eqz p0, :cond_1a

    move v1, v2

    :cond_1a
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1d
    return-void
.end method
