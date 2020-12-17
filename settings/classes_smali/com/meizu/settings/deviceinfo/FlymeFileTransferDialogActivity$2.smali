.class Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$2;
.super Ljava/lang/Object;
.source "FlymeFileTransferDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 74
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;->access$000(Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;)Landroid/hardware/usb/UsbManager;

    move-result-object p0

    const-string p1, "mtp"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    return-void
.end method
