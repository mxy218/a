.class final Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePanelCallback"
.end annotation


# instance fields
.field private mCurrent:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;Lcom/meizu/settings/soundandvibrate/VolumeSettings$1;)V
    .registers 3

    .line 189
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;-><init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->mCurrent:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    .line 195
    invoke-virtual {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->stopSample()V

    .line 197
    :cond_9
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->mCurrent:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    .line 198
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->mCurrent:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    if-eqz p1, :cond_19

    .line 199
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->access$200(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    :cond_19
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->access$300(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V

    .line 204
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->access$400(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)Z

    move-result p0

    return p0
.end method

.method public onStreamValueChanged(II)V
    .registers 3

    return-void
.end method

.method public stopSample()V
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->mCurrent:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    if-eqz v0, :cond_7

    .line 214
    invoke-virtual {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->stopSample()V

    .line 216
    :cond_7
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$VolumePanelCallback;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->access$500(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V

    return-void
.end method
