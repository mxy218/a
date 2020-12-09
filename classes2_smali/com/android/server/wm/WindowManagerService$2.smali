.class Lcom/android/server/wm/WindowManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 413
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 416
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x3ae4d524

    if-eq p2, v0, :cond_e

    :cond_d
    goto :goto_18

    :cond_e
    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_19

    :goto_18
    const/4 p1, -0x1

    :goto_19
    if-eqz p1, :cond_1c

    goto :goto_29

    .line 418
    :cond_1c
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$2;->getSendingUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    .line 421
    :goto_29
    return-void
.end method
