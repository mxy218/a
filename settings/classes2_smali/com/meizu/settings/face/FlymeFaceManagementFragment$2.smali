.class Lcom/meizu/settings/face/FlymeFaceManagementFragment$2;
.super Ljava/lang/Object;
.source "FlymeFaceManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceManagementFragment;->confirmRemoveFaceData()V
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

    .line 330
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$2;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 333
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$2;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->access$100(Lcom/meizu/settings/face/FlymeFaceManagementFragment;Z)V

    .line 334
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment$2;->this$0:Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    .line 335
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "delete_face_data"

    const-string v0, "value"

    .line 334
    invoke-static {p0, p2, v0, p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->access$200(Lcom/meizu/settings/face/FlymeFaceManagementFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
