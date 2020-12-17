.class public Lcom/meizu/settings/usbchecker/UsbCheckerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbCheckerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;
    }
.end annotation


# instance fields
.field private mUsbCheckerFinishedReceiver:Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const-string p1, "UsbChecker_Activity"

    const-string p2, "ok button onClick()"

    .line 70
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 27
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "UsbChecker_Activity"

    const-string v0, "onCreate()"

    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p1, Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;

    invoke-direct {p1, p0, p0}, Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;-><init>(Lcom/meizu/settings/usbchecker/UsbCheckerActivity;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/meizu/settings/usbchecker/UsbCheckerActivity;->mUsbCheckerFinishedReceiver:Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;

    .line 31
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.meizu.action.CHECKER_FINISH"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/meizu/settings/usbchecker/UsbCheckerActivity;->mUsbCheckerFinishedReceiver:Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x7f12010e

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v0, 0x7f12010d

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v0, 0x104000a

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 38
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 62
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    const-string v0, "UsbChecker_Activity"

    const-string v1, "onDestroy()"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/meizu/settings/usbchecker/UsbCheckerActivity;->mUsbCheckerFinishedReceiver:Lcom/meizu/settings/usbchecker/UsbCheckerActivity$UsbChekcerFinishedReceiver;

    if-eqz v0, :cond_11

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_11
    return-void
.end method
