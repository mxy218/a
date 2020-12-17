.class public Lcom/android/systemui/usb/UsbResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "UsbResolverActivity.java"


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mOtherProfileIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 63
    instance-of v2, v1, Landroid/content/Intent;

    const-string v3, "UsbResolverActivity"

    if-nez v2, :cond_28

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Target is not an intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    .line 68
    :cond_28
    move-object v6, v1

    check-cast v6, Landroid/content/Intent;

    .line 69
    new-instance v9, Ljava/util/ArrayList;

    const-string v1, "rlist"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 75
    iput-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 76
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 79
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    sget-object v8, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 80
    iput-object v5, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_42

    .line 81
    :cond_5f
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 82
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_42

    .line 83
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 84
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_76
    const-string v4, "device"

    .line 88
    invoke-virtual {v6, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 89
    iget-object v5, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const-string v7, "accessory"

    if-eqz v5, :cond_8e

    .line 90
    new-instance v3, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    iput-object v3, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_aa

    .line 92
    :cond_8e
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbAccessory;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 93
    iget-object v5, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-nez v5, :cond_a3

    const-string p1, "no device or accessory"

    .line 94
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    .line 98
    :cond_a3
    new-instance v3, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v3, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 103
    :goto_aa
    iget-object v3, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_eb

    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_c2

    .line 105
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_eb

    .line 109
    :cond_c2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/usb/UsbConfirmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "rinfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_e2

    .line 113
    iget-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    :cond_e2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_eb

    .line 117
    iget-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    :cond_eb
    :goto_eb
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, p1

    .line 123
    invoke-super/range {v4 .. v10}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    const p1, 0x10201b2

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_117

    .line 127
    iget-object p0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez p0, :cond_112

    .line 128
    sget p0, Lcom/android/systemui/R$string;->always_use_accessory:I

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_117

    .line 130
    :cond_112
    sget p0, Lcom/android/systemui/R$string;->always_use_device:I

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setText(I)V

    :cond_117
    :goto_117
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    :cond_7
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .registers 11

    const-string v0, "UsbResolverActivity"

    .line 145
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_18

    .line 147
    iget-object p1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    iget p2, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 148
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 147
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/internal/app/ResolverActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return v3

    :cond_18
    :try_start_18
    const-string/jumbo v2, "usb"

    .line 153
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 154
    invoke-static {v2}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 155
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 158
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v7, :cond_48

    .line 160
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v2, v7, v5}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    if-eqz p2, :cond_42

    .line 163
    iget-object p2, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, p2, v1, v6}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    goto :goto_62

    .line 165
    :cond_42
    iget-object p2, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v2, p2, v4, v6}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    goto :goto_62

    .line 167
    :cond_48
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v7, :cond_62

    .line 169
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {v2, v7, v5}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    if-eqz p2, :cond_5d

    .line 172
    iget-object p2, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, p2, v1, v6}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    goto :goto_62

    .line 174
    :cond_5d
    iget-object p2, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {v2, p2, v4, v6}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_62} :catch_72

    .line 179
    :cond_62
    :goto_62
    :try_start_62
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-interface {p1, p0, v4, p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    :try_end_69
    .catch Landroid/content/ActivityNotFoundException; {:try_start_62 .. :try_end_69} :catch_6a
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_69} :catch_72

    goto :goto_78

    :catch_6a
    move-exception p0

    :try_start_6b
    const-string/jumbo p1, "startActivity failed"

    .line 181
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_71} :catch_72

    goto :goto_78

    :catch_72
    move-exception p0

    const-string p1, "onIntentSelected failed"

    .line 184
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_78
    return v3
.end method
