.class public Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;
.super Lcom/meizu/settings/FlymeSettingsBaseActivity;
.source "FlymeFileTransferDialogActivity.java"


# instance fields
.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsBaseActivity;-><init>()V

    .line 24
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;)Landroid/hardware/usb/UsbManager;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method private showTransferFileDialog()V
    .registers 7

    .line 68
    new-instance v0, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    invoke-direct {v0, p0}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 69
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->setNavigationBarColor(I)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    const v1, 0x7f1216a6

    .line 70
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->setTitle(I)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/content/res/ColorStateList;

    .line 71
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602cd

    .line 72
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/CharSequence;

    const v5, 0x7f1216a7

    .line 73
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 74
    new-instance v4, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$2;

    invoke-direct {v4, p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$2;-><init>(Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;)V

    invoke-virtual {v0, v3, v4, v1, v2}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z[Landroid/content/res/ColorStateList;)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->create()Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity$3;-><init>(Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 87
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/16 v1, 0x7d8

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 43
    invoke-super {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "usb"

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 46
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;->showTransferFileDialog()V

    .line 48
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 54
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferDialogActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 60
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
