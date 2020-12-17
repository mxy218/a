.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field final synthetic val$meizuPay:Z

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;

.field final synthetic val$right:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;Z)V
    .registers 5

    .line 834
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->val$right:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->val$onFinishedListener:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->val$meizuPay:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 837
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Z

    move-result p1

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 838
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1302(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z

    .line 839
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z

    .line 840
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->val$right:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->val$onFinishedListener:Ljava/lang/Runnable;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->val$meizuPay:Z

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1400(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;Z)V

    goto :goto_38

    .line 842
    :cond_28
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 843
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;

    .line 844
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$12;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_38
    return-void
.end method
