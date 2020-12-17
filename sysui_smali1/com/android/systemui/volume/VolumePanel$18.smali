.class Lcom/android/systemui/volume/VolumePanel$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initAnimation()V
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

    .line 1724
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$18;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "VolumePanel"

    const-string v0, "[VP_DEBUG] onAnimationEnd: [mTopPanel] "

    .line 1728
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$18;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1730
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$18;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$3800(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1731
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$18;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$802(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 1732
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$18;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$3900(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 1733
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$18;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumePanel;->access$3900(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    :cond_2d
    return-void
.end method
