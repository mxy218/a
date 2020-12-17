.class Lcom/android/systemui/volume/VolumePanel$4;
.super Landroid/app/Dialog;
.source "VolumePanel.java"


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
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V
    .registers 3

    .line 601
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 605
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9f

    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_9f

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$1700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-ltz v0, :cond_94

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumePanel;->access$1700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_94

    .line 608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumePanel;->access$1700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_94

    .line 609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$1700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_95

    :cond_94
    move v1, v2

    :cond_95
    if-eqz v1, :cond_9e

    .line 611
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$1800(Lcom/android/systemui/volume/VolumePanel;J)V

    :cond_9e
    return v2

    :cond_9f
    return v1
.end method
