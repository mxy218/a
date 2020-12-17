.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;
.super Ljava/lang/Object;
.source "WaveWakeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 135
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 139
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->DTAG:Ljava/lang/String;

    const-string v0, "start training button pressed"

    invoke-static {p1, v0}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$000(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$200(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$100(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->setPointColor(I)V

    .line 144
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->fail:Ljava/lang/Boolean;

    .line 146
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    new-instance v1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;-><init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;)V

    iput-object v1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->ts:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    .line 147
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$1;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->ts:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->training_sequence_no:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
