.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .registers 2

    .line 933
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$15;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 936
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$15;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 937
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$15;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$102(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z

    .line 938
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$15;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;

    .line 939
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$15;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$1600(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
