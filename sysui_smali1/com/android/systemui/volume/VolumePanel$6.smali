.class Lcom/android/systemui/volume/VolumePanel$6;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V
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

    .line 900
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 903
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.RINGER_MODE_CHANGED"

    .line 905
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 906
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 907
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1b
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 910
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 911
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    :cond_2a
    return-void
.end method
