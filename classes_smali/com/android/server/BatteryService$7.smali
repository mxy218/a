.class Lcom/android/server/BatteryService$7;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/BatteryService;

    .line 614
    iput-object p1, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 617
    iget-object v0, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    const-string v2, "android.intent.extra.REASON"

    const-string v3, "battery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 624
    const-string/jumbo v2, "ro.monkey"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 625
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 626
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Shutdown: low battery , now is monkey so calling ShutdownThread."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v2, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v2}, Lcom/android/server/BatteryService;->getUiContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "nopower"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_65

    .line 629
    :cond_4a
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Shutdown: low battery , putextra nopower true and start ShutdownActivity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v1, 0x1

    const-string/jumbo v2, "meizu.intent.extra.nopower"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    iget-object v1, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 635
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_65
    :goto_65
    return-void
.end method
