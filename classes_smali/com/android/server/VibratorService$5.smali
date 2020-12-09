.class Lcom/android/server/VibratorService$5;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    .line 1388
    iput-object p1, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1392
    iget-object p1, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1398
    :try_start_13
    iget-object p2, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-static {p2}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object p2

    if-eqz p2, :cond_38

    iget-object p2, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    .line 1399
    invoke-static {p2}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result p2

    if-eqz p2, :cond_33

    iget-object p2, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    .line 1400
    invoke-static {p2}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/VibratorService$Vibration;->isFromSystem()Z

    move-result p2

    if-nez p2, :cond_38

    .line 1401
    :cond_33
    iget-object p2, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-static {p2}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 1403
    :cond_38
    monitor-exit p1

    goto :goto_3d

    :catchall_3a
    move-exception p2

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3a

    throw p2

    .line 1405
    :cond_3d
    :goto_3d
    return-void
.end method
