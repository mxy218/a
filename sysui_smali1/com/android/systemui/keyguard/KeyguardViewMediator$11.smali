.class Lcom/android/systemui/keyguard/KeyguardViewMediator$11;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 2

    .line 3089
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecurityLock()V
    .registers 3

    .line 3092
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    const-string v1, "FindPhone"

    if-eqz v0, :cond_15

    const-string v0, "KeyguardViewMediator onSecurityLock and update the keyguard view"

    .line 3093
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_20

    :cond_15
    const-string v0, "KeyguardViewMediator onSecurityLock and show the keyguard view"

    .line 3097
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7400(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 3100
    :goto_20
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public onSecurityUnlock()V
    .registers 5

    .line 3105
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "FindPhone"

    const-string v1, "KeyguardViewMediator onSecurityUnlock and update the keyguard view"

    .line 3106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 3109
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    new-instance v1, Lcom/meizu/flyme/service/find/FindPhoneData;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Lcom/meizu/flyme/service/find/FindPhoneData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/findphone/FindPhoneAbstract;->updateLimitedTime(Lcom/meizu/flyme/service/find/FindPhoneData;)V

    .line 3110
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result v0

    if-gtz v0, :cond_48

    .line 3111
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 3113
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    .line 3115
    :cond_48
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method
