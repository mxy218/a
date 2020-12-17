.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$5;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;->initCreatFaceTipsViews()V
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

    .line 474
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$5;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 477
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$5;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->deleteFaceMetadatas()V

    .line 478
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$5;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 479
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$5;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    const-string p1, "entering_face_data"

    const/4 v0, 0x0

    invoke-static {p0, p1, p1, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
