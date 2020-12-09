.class Lcom/android/server/power/batterysaver/BatterySaverController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_8a

    :cond_10
    goto :goto_43

    :sswitch_11
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, v2

    goto :goto_44

    :sswitch_1b
    const-string v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, v1

    goto :goto_44

    :sswitch_25
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, v5

    goto :goto_44

    :sswitch_2f
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, v3

    goto :goto_44

    :sswitch_39
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, v4

    goto :goto_44

    :goto_43
    const/4 p1, -0x1

    :goto_44
    if-eqz p1, :cond_70

    if-eq p1, v4, :cond_70

    if-eq p1, v3, :cond_4f

    if-eq p1, v2, :cond_67

    if-eq p1, v1, :cond_67

    goto :goto_89

    .line 181
    :cond_4f
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$300(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 182
    :try_start_56
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_62

    goto :goto_63

    :cond_62
    move v4, v5

    :goto_63
    invoke-static {v0, v4}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$402(Lcom/android/server/power/batterysaver/BatterySaverController;Z)Z

    .line 183
    monitor-exit p1
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_6d

    .line 187
    :cond_67
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    goto :goto_89

    .line 183
    :catchall_6d
    move-exception p2

    :try_start_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p2

    .line 172
    :cond_70
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$000(Lcom/android/server/power/batterysaver/BatterySaverController;)Z

    move-result p1

    if-nez p1, :cond_7e

    .line 173
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 174
    return-void

    .line 177
    :cond_7e
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$200(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, v5, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 179
    nop

    .line 190
    :goto_89
    return-void

    :sswitch_data_8a
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_39
        -0x5bb23923 -> :sswitch_2f
        -0x56ac2893 -> :sswitch_25
        0x1dbb32d0 -> :sswitch_1b
        0x33e5d967 -> :sswitch_11
    .end sparse-switch
.end method
