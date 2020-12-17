.class Lcom/android/systemui/SwipeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V
    .registers 5

    .line 432
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/SwipeHelper$3;->val$canBeDismissed:Z

    iput-object p4, p0, Lcom/android/systemui/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 437
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper$3;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 442
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$canBeDismissed:Z

    invoke-static {p1, v0, v1}, Lcom/android/systemui/SwipeHelper;->access$300(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 443
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->access$400(Lcom/android/systemui/SwipeHelper;)Landroid/util/ArrayMap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 446
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 447
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p1

    goto :goto_23

    :cond_22
    move p1, v1

    .line 449
    :goto_23
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper$3;->mCancelled:Z

    if-eqz v0, :cond_29

    if-eqz p1, :cond_34

    .line 450
    :cond_29
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->access$500(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/android/systemui/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 452
    :cond_34
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_3b

    .line 453
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 455
    :cond_3b
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->access$600(Lcom/android/systemui/SwipeHelper;)Z

    move-result p1

    if-nez p1, :cond_49

    .line 456
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_49
    return-void
.end method
