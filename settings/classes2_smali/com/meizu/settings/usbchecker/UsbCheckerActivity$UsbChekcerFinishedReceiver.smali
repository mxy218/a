.class Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbCheckerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/usbchecker/UsbCheckerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbChekcerFinishedReceiver"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/meizu/settings/usbchecker/UsbCheckerActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/usbchecker/UsbCheckerActivity;Landroid/app/Activity;)V
    .registers 3

    .line 46
    iput-object p1, p0, Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;->this$0:Lcom/meizu/settings/usbchecker/UsbCheckerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UsbChekcerFinishedReceiver onReceive:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UsbChecker_Activity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.meizu.action.CHECKER_FINISH"

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 55
    iget-object p0, p0, Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_27
    return-void
.end method
