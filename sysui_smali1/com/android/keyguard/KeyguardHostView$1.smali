.class Lcom/android/keyguard/KeyguardHostView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrustGrantedWithFlags(II)V
    .registers 7

    .line 72
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_7

    return-void

    .line 73
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 74
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    move v1, v3

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    move v3, v2

    :goto_25
    if-nez v1, :cond_29

    if-eqz v3, :cond_4d

    .line 81
    :cond_29
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_46

    if-nez v0, :cond_37

    if-eqz v3, :cond_46

    :cond_37
    if-nez v0, :cond_40

    const-string p1, "KeyguardViewBase"

    const-string v0, "TrustAgent dismissed Keyguard."

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_40
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0, v2, p2}, Lcom/android/keyguard/KeyguardHostView;->dismiss(ZI)Z

    goto :goto_4d

    .line 90
    :cond_46
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->playTrustedSound()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    return-void
.end method
