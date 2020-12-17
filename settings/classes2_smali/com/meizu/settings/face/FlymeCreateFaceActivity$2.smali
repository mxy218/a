.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$2;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;->onTextViewCLickListener()Landroid/view/View$OnClickListener;
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

    .line 217
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$2;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04fa

    if-ne v0, v1, :cond_f

    .line 221
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$2;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2400(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)V

    goto :goto_2b

    .line 222
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0060

    const-string v1, "back"

    if-ne p1, v0, :cond_26

    .line 223
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$2;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2502(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Z)Z

    .line 224
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$2;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0, v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2600(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Ljava/lang/String;)V

    goto :goto_2b

    .line 226
    :cond_26
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$2;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p0, v1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$2600(Lcom/meizu/settings/face/FlymeCreateFaceActivity;Ljava/lang/String;)V

    :goto_2b
    return-void
.end method
