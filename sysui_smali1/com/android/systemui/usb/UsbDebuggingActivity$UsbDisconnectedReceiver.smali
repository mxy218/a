.class Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDebuggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/UsbDebuggingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDisconnectedReceiver"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/UsbDebuggingActivity;Landroid/app/Activity;)V
    .registers 3

    .line 148
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    const/4 p1, 0x0

    const-string v0, "connected"

    .line 158
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 160
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1b
    return-void
.end method