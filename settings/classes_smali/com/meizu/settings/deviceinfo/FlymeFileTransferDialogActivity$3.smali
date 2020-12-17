.class Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$3;
.super Ljava/lang/Object;
.source "FlymeFileTransferDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;->showTransferFileDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
