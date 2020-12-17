.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$1$1;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1$1;->this$1:Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 184
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1$1;->this$1:Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/widget/CameraLoadingTextView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
