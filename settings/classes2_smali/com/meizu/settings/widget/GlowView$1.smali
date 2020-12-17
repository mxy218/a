.class Lcom/meizu/settings/widget/GlowView$1;
.super Landroid/os/Handler;
.source "GlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/GlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/GlowView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/GlowView;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 8

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    goto :goto_64

    .line 115
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    invoke-static {v0}, Lcom/meizu/settings/widget/GlowView;->access$100(Lcom/meizu/settings/widget/GlowView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/settings/widget/GlowView;->access$300(Lcom/meizu/settings/widget/GlowView;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 116
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    invoke-static {v0}, Lcom/meizu/settings/widget/GlowView;->access$400(Lcom/meizu/settings/widget/GlowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    invoke-static {v0}, Lcom/meizu/settings/widget/GlowView;->access$400(Lcom/meizu/settings/widget/GlowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    iget-object v0, v0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    :cond_30
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    invoke-static {v0}, Lcom/meizu/settings/widget/GlowView;->access$400(Lcom/meizu/settings/widget/GlowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_64

    .line 121
    :cond_3a
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    iget-object v0, v0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_64

    .line 110
    :cond_44
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    const-wide/16 v2, 0x9c4

    invoke-static {v0}, Lcom/meizu/settings/widget/GlowView;->access$000(Lcom/meizu/settings/widget/GlowView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/meizu/settings/widget/GlowView;->access$002(Lcom/meizu/settings/widget/GlowView;J)J

    .line 111
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    iget-object v2, v0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/meizu/settings/widget/GlowView;->access$000(Lcom/meizu/settings/widget/GlowView;)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView$1;->this$0:Lcom/meizu/settings/widget/GlowView;

    invoke-static {v0}, Lcom/meizu/settings/widget/GlowView;->access$100(Lcom/meizu/settings/widget/GlowView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/widget/GlowView;->access$200(Lcom/meizu/settings/widget/GlowView;Ljava/util/ArrayList;)V

    .line 125
    :goto_64
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
