.class final Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;
.super Landroid/os/Handler;
.source "VolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    .line 224
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;Lcom/meizu/settings/soundandvibrate/VolumeSettings$1;)V
    .registers 3

    .line 220
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;-><init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 229
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_e

    .line 231
    :cond_5
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->access$600(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->stopSample()V

    :goto_e
    return-void
.end method
