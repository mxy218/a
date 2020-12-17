.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Lcom/meizu/settings/face/FlymeCreateFaceActivity$1;)V
    .registers 3

    .line 238
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;-><init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 241
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1100(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 243
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1200(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    :cond_19
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2300(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    .line 246
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$1000(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Lcom/meizu/settings/face/FlymeIFaceRecognition;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->endEnroll()V

    .line 247
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2700(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    .line 248
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$RunTimeout;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    const/4 v0, 0x2

    .line 249
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entering_fail_reason"

    const-string v2, "entering_face_data"

    .line 248
    invoke-static {p0, v1, v2, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return-void
.end method
