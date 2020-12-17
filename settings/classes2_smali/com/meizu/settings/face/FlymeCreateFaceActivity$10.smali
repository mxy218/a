.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$10;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;->showCameraOpenFailedDialog()V
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

    .line 647
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$10;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 650
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$10;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
