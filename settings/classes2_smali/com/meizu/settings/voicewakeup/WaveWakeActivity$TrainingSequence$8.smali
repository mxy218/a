.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$8;
.super Ljava/lang/Object;
.source "WaveWakeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;


# direct methods
.method constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;)V
    .registers 2

    .line 624
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$8;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 627
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$8;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2300(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 628
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$8;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p1, p1, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$2400(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 629
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$8;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
