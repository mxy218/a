.class Lcom/android/keyguard/KeyguardAbsKeyInputView$11;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .registers 2

    .line 986
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$11;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 989
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$11;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/SystemModeUtils;->switchSystemMode(I)V

    .line 990
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$11;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    invoke-virtual {v0}, Lcom/meizu/keyguard/SystemModeUtils;->enterGuestMode()V

    .line 992
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$11;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 993
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$11;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-interface {p0, v3, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    return-void
.end method
