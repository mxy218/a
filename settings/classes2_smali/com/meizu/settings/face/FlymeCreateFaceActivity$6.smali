.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$6;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;->showWarnDialog(Ljava/lang/String;)V
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

    .line 562
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$6;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    .line 565
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$6;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$600(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 566
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$6;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 567
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$6;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1e
    return-void
.end method
