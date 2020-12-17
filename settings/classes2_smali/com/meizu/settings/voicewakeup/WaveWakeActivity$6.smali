.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$6;
.super Lcom/meizu/settings/voicewakeup/AnimationEndListener;
.source "WaveWakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity;->loadFailTip(Landroid/view/View;Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

.field final synthetic val$tip:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/TextView;I)V
    .registers 4

    .line 897
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$6;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$6;->val$view:Landroid/widget/TextView;

    iput p3, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$6;->val$tip:I

    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 901
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$6;->val$view:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 902
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$6;->val$view:Landroid/widget/TextView;

    iget p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$6;->val$tip:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
