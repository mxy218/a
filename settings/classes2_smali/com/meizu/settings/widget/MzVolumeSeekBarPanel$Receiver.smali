.class Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MzVolumeSeekBarPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mListenning:Z

.field final synthetic this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;->mListenning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$1;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;-><init>(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.RINGER_MODE_CHANGED"

    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 68
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$100(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)V

    :cond_11
    return-void
.end method

.method public startListen(Z)V
    .registers 4

    .line 52
    iget-boolean v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;->mListenning:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_18

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_21

    .line 59
    :cond_18
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    :goto_21
    iput-boolean p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Receiver;->mListenning:Z

    return-void
.end method
