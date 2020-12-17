.class Lcom/android/systemui/volume/VolumePanel$3;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;)V
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

    .line 581
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 583
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$700(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 584
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$802(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 585
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$900(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 586
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$1002(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 587
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$1102(Lcom/android/systemui/volume/VolumePanel;Z)Z

    .line 589
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-string v0, "onAnimationEnd: SHOW ==>> DISMISS"

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;Ljava/lang/String;)V

    .line 591
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1300(Lcom/android/systemui/volume/VolumePanel;)V

    .line 593
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumePanel;->access$1400(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method
