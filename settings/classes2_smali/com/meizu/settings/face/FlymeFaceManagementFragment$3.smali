.class Lcom/meizu/settings/face/FlymeFaceManagementFragment$3;
.super Ljava/lang/Object;
.source "FlymeFaceManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceManagementFragment;->confirmReSaveFeatureFaceData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceManagementFragment;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$3;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 369
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$3;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->access$100(Lcom/meizu/settings/face/FlymeFaceManagementFragment;Z)V

    .line 370
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$3;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->access$300(Lcom/meizu/settings/face/FlymeFaceManagementFragment;)V

    .line 371
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$3;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    const-string p1, "retering_face_data"

    const/4 p2, 0x0

    invoke-static {p0, p1, p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->access$200(Lcom/meizu/settings/face/FlymeFaceManagementFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
