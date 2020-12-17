.class Lcom/android/keyguard/KeyguardAbsKeyInputView$1;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

.field final synthetic val$entry:[B

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I[B)V
    .registers 4

    .line 209
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$userId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$entry:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 267
    :cond_1a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$entry:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public onChecked(ZI)V
    .registers 7

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 230
    :cond_1a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-nez p1, :cond_2e

    .line 233
    iget p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$userId:I

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    goto :goto_49

    .line 240
    :cond_2e
    iget v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$userId:I

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    .line 242
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSystemModeUtils:Lcom/meizu/keyguard/SystemModeUtils;

    invoke-virtual {p1, v2}, Lcom/meizu/keyguard/SystemModeUtils;->switchSystemMode(I)V

    .line 243
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 256
    :goto_49
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$entry:[B

    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public onEarlyMatched()V
    .registers 1

    return-void
.end method
