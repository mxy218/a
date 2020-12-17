.class Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel$SafetyWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel$SafetyWarning;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V
    .registers 2

    .line 505
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;->this$0:Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 509
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "VolumePanel"

    const-string p2, "Received ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_19
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;->this$0:Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->access$400(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)Z

    move-result p1

    if-eqz p1, :cond_22

    return-void

    .line 511
    :cond_22
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;->this$0:Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 512
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;->this$0:Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->access$500(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V

    :cond_2c
    return-void
.end method
