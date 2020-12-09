.class final Lcom/android/server/display/BrightnessTracker$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .registers 2

    .line 935
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V
    .registers 3

    .line 935
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker$Receiver;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 941
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 942
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 943
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {p1}, Lcom/android/server/display/BrightnessTracker;->stop()V

    .line 944
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$1000(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_65

    .line 945
    :cond_17
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 946
    const/4 p1, -0x1

    const-string v0, "level"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 947
    const/4 v1, 0x0

    const-string/jumbo v2, "scale"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 948
    if-eq v0, p1, :cond_37

    if-eqz p2, :cond_37

    .line 949
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1, v0, p2}, Lcom/android/server/display/BrightnessTracker;->access$1100(Lcom/android/server/display/BrightnessTracker;II)V

    .line 951
    :cond_37
    goto :goto_65

    :cond_38
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 952
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$900(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_65

    .line 953
    :cond_4f
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 954
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$900(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 956
    :cond_65
    :goto_65
    return-void
.end method
