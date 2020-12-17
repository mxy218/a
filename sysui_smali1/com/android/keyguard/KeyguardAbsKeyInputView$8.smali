.class Lcom/android/keyguard/KeyguardAbsKeyInputView$8;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPrivacyPasswordAndUnlock()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

.field final synthetic val$entry:Ljava/lang/String;

.field final synthetic val$matched:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;ZLjava/lang/String;)V
    .registers 4

    .line 744
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;->val$matched:Z

    iput-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;->val$entry:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 747
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/SystemModeUtils;->switchSystemMode(I)V

    .line 748
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;->val$matched:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;->val$entry:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le p0, v5, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v4

    :goto_1c
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    return-void
.end method
