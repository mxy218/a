.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$5;
.super Landroid/os/Handler;
.source "WaveWakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)V
    .registers 2

    .line 854
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$5;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 856
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_25

    .line 858
    :cond_5
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$5;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 859
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$5;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    move-result-object p1

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->updateVisualizer(I)V

    .line 860
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$5;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_25
    return-void
.end method
