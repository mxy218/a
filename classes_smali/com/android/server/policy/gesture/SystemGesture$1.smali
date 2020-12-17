.class Lcom/android/server/policy/gesture/SystemGesture$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gesture/SystemGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gesture/SystemGesture;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gesture/SystemGesture;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/gesture/SystemGesture;

    .line 206
    iput-object p1, p0, Lcom/android/server/policy/gesture/SystemGesture$1;->this$0:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.MZ_SHUTDOWN_RESTART_CONFIRM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 210
    const/4 v0, 0x0

    const-string v1, "global_action"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 211
    .local v0, "flag":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConfirm = true, action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemGesture"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture$1;->this$0:Lcom/android/server/policy/gesture/SystemGesture;

    iget-object v1, v1, Lcom/android/server/policy/gesture/SystemGesture;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/MzPhoneWindowManager;->showGlobalActionsConfirm(I)V

    .line 214
    .end local v0  # "flag":I
    :cond_31
    return-void
.end method
