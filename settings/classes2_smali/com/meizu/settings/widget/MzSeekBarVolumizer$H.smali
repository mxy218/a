.class final Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "MzSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/MzSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;Lcom/meizu/settings/widget/MzSeekBarVolumizer$1;)V
    .registers 3

    .line 369
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;-><init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 374
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 375
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$200(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 376
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$302(Lcom/meizu/settings/widget/MzSeekBarVolumizer;I)I

    .line 377
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$402(Lcom/meizu/settings/widget/MzSeekBarVolumizer;I)I

    .line 378
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-gez p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 379
    :goto_25
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$500(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z

    move-result p1

    if-eq v1, p1, :cond_4f

    .line 380
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1, v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$502(Lcom/meizu/settings/widget/MzSeekBarVolumizer;Z)Z

    .line 381
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$600(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 382
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$600(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$500(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$700(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 385
    :cond_4f
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->updateSeekBar()V

    :cond_54
    return-void
.end method

.method public postUpdateSlider(IIZ)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    const/4 p3, -0x1

    goto :goto_6

    :cond_5
    move p3, v0

    :goto_6
    mul-int/2addr p2, p3

    .line 392
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
