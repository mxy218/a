.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$2;
.super Lcom/meizu/settings/voicewakeup/AnimationEndListener;
.source "WaveWakeActivity.java"


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

    .line 506
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$2;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 510
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence$2;->this$1:Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;

    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$TrainingSequence;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->access$1600(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
