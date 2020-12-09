.class Lcom/android/server/CachedDeviceStateService$1;
.super Landroid/content/BroadcastReceiver;
.source "CachedDeviceStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CachedDeviceStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CachedDeviceStateService;


# direct methods
.method constructor <init>(Lcom/android/server/CachedDeviceStateService;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7ed8ea7f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2f

    const v1, -0x5bb23923

    if-eq v0, v1, :cond_25

    const v1, -0x56ac2893

    if-eq v0, v1, :cond_1b

    :cond_1a
    goto :goto_39

    :cond_1b
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v4

    goto :goto_3a

    :cond_25
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v3

    goto :goto_3a

    :cond_2f
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v2

    goto :goto_3a

    :goto_39
    const/4 p1, -0x1

    :goto_3a
    if-eqz p1, :cond_55

    if-eq p1, v4, :cond_4b

    if-eq p1, v2, :cond_41

    goto :goto_69

    .line 54
    :cond_41
    iget-object p1, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {p1}, Lcom/android/server/CachedDeviceStateService;->access$000(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    goto :goto_69

    .line 51
    :cond_4b
    iget-object p1, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {p1}, Lcom/android/server/CachedDeviceStateService;->access$000(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    .line 52
    goto :goto_69

    .line 45
    :cond_55
    iget-object p1, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {p1}, Lcom/android/server/CachedDeviceStateService;->access$000(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object p1

    .line 46
    const-string/jumbo v0, "plugged"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_65

    move v3, v4

    .line 45
    :cond_65
    invoke-virtual {p1, v3}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    .line 49
    nop

    .line 57
    :goto_69
    return-void
.end method
