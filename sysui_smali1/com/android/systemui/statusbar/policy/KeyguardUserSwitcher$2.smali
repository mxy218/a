.class Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startAppearAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 180
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->access$102(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->access$202(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Z)Z

    return-void
.end method
