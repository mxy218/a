.class Lcom/android/systemui/statusbar/StatusBarIconView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;

.field final synthetic val$runRunnable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;ZLjava/lang/Runnable;)V
    .registers 4

    .line 838
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$runRunnable:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 841
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$402(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 842
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$runRunnable:Z

    if-eqz p1, :cond_11

    .line 843
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$300(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method
