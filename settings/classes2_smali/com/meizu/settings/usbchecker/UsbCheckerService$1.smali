.class Lcom/meizu/settings/usbchecker/UsbCheckerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/usbchecker/UsbCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/usbchecker/UsbCheckerService;


# direct methods
.method constructor <init>(Lcom/meizu/settings/usbchecker/UsbCheckerService;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService$1;->this$0:Lcom/meizu/settings/usbchecker/UsbCheckerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 33
    iget-object p0, p0, Lcom/meizu/settings/usbchecker/UsbCheckerService$1;->this$0:Lcom/meizu/settings/usbchecker/UsbCheckerService;

    invoke-static {p0, p2}, Lcom/meizu/settings/usbchecker/UsbCheckerService;->access$000(Lcom/meizu/settings/usbchecker/UsbCheckerService;Landroid/content/Intent;)V

    return-void
.end method
