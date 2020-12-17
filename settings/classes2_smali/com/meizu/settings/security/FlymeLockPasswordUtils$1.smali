.class Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;
.super Ljava/lang/Object;
.source "FlymeLockPasswordUtils.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeLockPasswordUtils;->checkScreenPassword(Ljava/lang/String;Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field final synthetic val$onCheckCallback:Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeLockPasswordUtils;Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;)V
    .registers 3

    .line 342
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;->val$onCheckCallback:Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .registers 8

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen password, matched:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", throttleTimeoutMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeLockPasswordUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getFindPhoneLeftTimes(Z)I

    move-result v0

    if-nez p1, :cond_61

    .line 348
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-static {v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->access$100(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->access$000(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_5b

    const/16 v1, 0xa

    if-gt v0, v1, :cond_61

    const/4 p2, 0x5

    if-lt v0, p2, :cond_48

    const p2, 0xea60

    goto :goto_4b

    :cond_48
    const p2, 0x493e0

    .line 357
    :goto_4b
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-static {v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->access$100(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;->this$0:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->access$000(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    goto :goto_61

    .line 361
    :cond_5b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p2, v1

    .line 365
    :cond_61
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throttleTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", findphoneLeftTimes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;->val$onCheckCallback:Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;

    if-eqz p0, :cond_86

    .line 368
    invoke-interface {p0, p1, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;->onChecked(ZI)V

    :cond_86
    return-void
.end method
