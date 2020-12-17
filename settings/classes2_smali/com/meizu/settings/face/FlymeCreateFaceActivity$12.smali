.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$12;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;->showFaceRecognitionTimeoutDialog()V
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

    .line 674
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$12;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 677
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$12;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$602(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Z)Z

    .line 678
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$12;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$500(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CirclePreviewView;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 679
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$12;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$500(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CirclePreviewView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/CirclePreviewView;->setProgress(I)V

    .line 681
    :cond_17
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$12;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->deleteFaceMetadatas()V

    .line 682
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$12;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    const-string p1, "back"

    invoke-static {p0, p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2600(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Ljava/lang/String;)V

    return-void
.end method
