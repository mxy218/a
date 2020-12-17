.class Lcom/android/systemui/volume/VolumePanel$20;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 2495
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$20;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2500
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$20;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/16 v1, 0x5dc

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$4802(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 2501
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$20;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumePanel;->access$4902(Lcom/android/systemui/volume/VolumePanel;J)J

    .line 2502
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$20;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4900(Lcom/android/systemui/volume/VolumePanel;)J

    move-result-wide v0

    .line 2504
    :goto_1a
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$20;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$4800(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v2

    if-lez v2, :cond_3e

    const/16 v2, 0x64

    int-to-long v3, v2

    .line 2506
    :try_start_25
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception v3

    .line 2509
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2511
    :goto_2d
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$20;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$4900(Lcom/android/systemui/volume/VolumePanel;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-eqz v3, :cond_38

    goto :goto_3e

    .line 2512
    :cond_38
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$20;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/VolumePanel;->access$4820(Lcom/android/systemui/volume/VolumePanel;I)I

    goto :goto_1a

    .line 2514
    :cond_3e
    :goto_3e
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$20;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$4900(Lcom/android/systemui/volume/VolumePanel;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_4f

    .line 2515
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$20;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$1800(Lcom/android/systemui/volume/VolumePanel;J)V

    :cond_4f
    return-void
.end method
