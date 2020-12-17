.class final Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MzSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/MzSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V
    .registers 2

    .line 420
    iput-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;Lcom/meizu/settings/widget/MzSeekBarVolumizer$1;)V
    .registers 3

    .line 420
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;-><init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 438
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 439
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 p1, -0x1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 440
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 441
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 442
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1000(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    invoke-static {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1100(I)Z

    move-result v0

    goto :goto_33

    .line 443
    :cond_28
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1200(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)I

    move-result v1

    if-ne v0, v1, :cond_32

    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v3

    .line 444
    :goto_33
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$200(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_af

    if-eqz v0, :cond_af

    if-eq p2, p1, :cond_af

    .line 445
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1300(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1200(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    if-nez p1, :cond_55

    if-nez p2, :cond_54

    goto :goto_55

    :cond_54
    move v2, v3

    .line 447
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1400(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$400(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)I

    move-result p0

    invoke-virtual {p1, p2, p0, v2}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    goto :goto_af

    :cond_65
    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 449
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_95

    .line 450
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1500(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V

    .line 451
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1000(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 452
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1300(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1602(Lcom/meizu/settings/widget/MzSeekBarVolumizer;I)I

    .line 454
    :cond_87
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1700(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 455
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$800(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V

    goto :goto_af

    :cond_95
    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 457
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 458
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1900(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$1802(Lcom/meizu/settings/widget/MzSeekBarVolumizer;I)I

    .line 459
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$800(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V

    :cond_af
    :goto_af
    return-void
.end method

.method public setListening(Z)V
    .registers 3

    .line 424
    iget-boolean v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 425
    :cond_5
    iput-boolean p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_24

    .line 427
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 429
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$900(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2d

    .line 432
    :cond_24
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->this$0:Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->access$900(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_2d
    return-void
.end method
