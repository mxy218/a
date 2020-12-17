.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$9;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V
    .registers 2

    .line 596
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$9;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4

    .line 607
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$9;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$3000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 609
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$9;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$3100(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_37

    .line 610
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$9;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$3202(Lcom/meizu/settings/face/FlymeCreateFaceActivity;I)I

    const/4 p1, 0x1

    if-ne v0, p1, :cond_37

    .line 612
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$9;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$9;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_37
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
