.class public Lcom/android/systemui/usb/UsbDebuggingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbDebuggingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
    }
.end annotation


# instance fields
.field private mAlwaysAllow:Landroid/widget/CheckBox;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    move p2, p1

    goto :goto_8

    :cond_7
    move p2, v0

    :goto_8
    if-eqz p2, :cond_13

    .line 183
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_14

    :cond_13
    move p1, v0

    :goto_14
    :try_start_14
    const-string v0, "adb"

    .line 185
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    move-result-object v0

    if-eqz p2, :cond_26

    .line 188
    iget-object p2, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/debug/IAdbManager;->allowDebugging(ZLjava/lang/String;)V

    goto :goto_32

    .line 190
    :cond_26
    invoke-interface {v0}, Landroid/debug/IAdbManager;->denyDebugging()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p1

    const-string p2, "UsbDebuggingActivity"

    const-string v0, "Unable to notify Usb service"

    .line 193
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    :goto_32
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/16 v1, 0x7d8

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 64
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const-string v0, "service.adb.tcp.port"

    .line 66
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_21

    .line 67
    new-instance v0, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    .line 70
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fingerprints"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_bd

    .line 74
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-nez v0, :cond_3b

    goto/16 :goto_bd

    .line 79
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 80
    sget v2, Lcom/android/systemui/R$string;->usb_debugging_title:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v2, 0x104000a

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v2, 0x1040000

    .line 85
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 86
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 94
    sget v3, Lcom/android/systemui/R$layout;->mz_always_use_checkbox:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 95
    sget v3, Lcom/android/systemui/R$id;->fingerprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    sget v4, Lcom/android/systemui/R$string;->usb_debugging_message:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, p1

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget p1, Lcom/android/systemui/R$id;->alwaysUse:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    .line 99
    iget-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    sget v1, Lcom/android/systemui/R$string;->usb_debugging_always:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/4 p1, -0x1

    const-string v0, "ro.adb.cts.open"

    .line 127
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v5, :cond_bc

    :try_start_a0
    const-string/jumbo p1, "usb"

    .line 130
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    invoke-interface {p1, v5, v0}, Landroid/debug/IAdbManager;->allowDebugging(ZLjava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b0} :catch_b1

    goto :goto_b9

    :catch_b1
    move-exception p1

    const-string v0, "UsbDebuggingActivity"

    const-string v1, "Unable to notify Usb service"

    .line 134
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :goto_b9
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_bc
    return-void

    .line 75
    :cond_bd
    :goto_bd
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 167
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_7

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    :cond_7
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    .line 143
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
