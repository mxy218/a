.class Lcom/android/systemui/volume/VolumePanel$10;
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

    .line 1564
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1568
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1000(Lcom/android/systemui/volume/VolumePanel;)I

    move-result p1

    if-nez p1, :cond_38

    .line 1569
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1570
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1900(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1571
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$3800(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1572
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$802(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 1573
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$3900(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 1574
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumePanel;->access$3900(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    goto :goto_69

    .line 1577
    :cond_38
    monitor-enter p0

    .line 1578
    :try_start_39
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$4000(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_51

    .line 1582
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$4100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$StreamControl;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1584
    :cond_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_6a

    .line 1585
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$4202(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 1586
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$4300(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1587
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1588
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-string p1, "onAnimationEnd: DISSMISS ==>> SHOW"

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;Ljava/lang/String;)V

    :cond_69
    :goto_69
    return-void

    :catchall_6a
    move-exception p1

    .line 1584
    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p1
.end method
