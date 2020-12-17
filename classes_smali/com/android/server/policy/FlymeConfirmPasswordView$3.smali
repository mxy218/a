.class Lcom/android/server/policy/FlymeConfirmPasswordView$3;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView;->onResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 180
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    iput-boolean p2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->val$result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmPasswordView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->val$result:Z

    if-eqz v0, :cond_30

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$300(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 186
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$300(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_a3

    .line 189
    :cond_30
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 190
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$400(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result v1

    .line 191
    .local v1, "leftTimes":I
    if-gtz v1, :cond_5b

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->hasFlymeAccount()Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isFindPhoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 192
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$000(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 193
    return-void

    .line 195
    :cond_5b
    const/4 v2, 0x5

    if-lt v1, v2, :cond_75

    const/16 v3, 0xa

    if-gt v1, v3, :cond_75

    .line 196
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$500(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const v3, 0xea60

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    .line 198
    .local v2, "deadline":J
    iget-object v4, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleAttemptLockout(J)V

    .line 199
    .end local v2  # "deadline":J
    goto :goto_99

    :cond_75
    if-ge v1, v2, :cond_8a

    .line 200
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$500(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const v3, 0x493e0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    .line 202
    .restart local v2  # "deadline":J
    iget-object v4, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleAttemptLockout(J)V

    .line 203
    .end local v2  # "deadline":J
    goto :goto_99

    .line 204
    :cond_8a
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$100(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$600(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/ShutdownLockView;->setTipAnimShake(Ljava/lang/String;)V

    .line 206
    :goto_99
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$100(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/widget/ShutdownLockView;->clearCell(Z)V

    .line 208
    .end local v0  # "userId":I
    .end local v1  # "leftTimes":I
    :cond_a3
    :goto_a3
    return-void
.end method
