.class Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundAndVibrateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V
    .registers 2

    .line 613
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;)V
    .registers 3

    .line 613
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;-><init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 631
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 632
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 633
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1600(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_16
    return-void
.end method

.method public register(Z)V
    .registers 4

    .line 617
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;->mRegistered:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_1b

    .line 620
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 621
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_24

    .line 624
    :cond_1b
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 626
    :goto_24
    iput-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;->mRegistered:Z

    return-void
.end method
