.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field final synthetic val$meizuPay:Z

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;

.field final synthetic val$right:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;ZZ)V
    .registers 5

    .line 782
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->val$onFinishedListener:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->val$right:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->val$meizuPay:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 787
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 792
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->mCancelled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 793
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 794
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;

    .line 795
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_3b

    .line 797
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 798
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->val$right:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->val$onFinishedListener:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->val$meizuPay:Z

    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;Z)V

    goto :goto_3b

    .line 800
    :cond_29
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 801
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 802
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;

    .line 807
    :cond_3b
    :goto_3b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z

    return-void
.end method
