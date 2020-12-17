.class public Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;
.super Ljava/lang/Object;
.source "BluetoothIcon.java"


# static fields
.field static final A2DPPROFILE_SINK_UUIDS:[Landroid/os/ParcelUuid;

.field static final HEADSETPROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field private static TAG:Ljava/lang/String; = "BluetoothIcon"

.field private static final mProfileSupport:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    .line 21
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 22
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 23
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 24
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-array v0, v3, [Landroid/os/ParcelUuid;

    .line 121
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v4, v0, v2

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v4, v0, v1

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->A2DPPROFILE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    new-array v0, v3, [Landroid/os/ParcelUuid;

    .line 126
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v3, v0, v2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->HEADSETPROFILE_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public static getDeviceIcon(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .registers 5

    .line 66
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 68
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_26

    const/16 v2, 0x200

    if-eq v1, v2, :cond_23

    const/16 v2, 0x500

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x600

    if-eq v1, v2, :cond_1b

    goto :goto_30

    .line 79
    :cond_1b
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_print:I

    return p0

    .line 76
    :cond_1e
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result p0

    return p0

    .line 73
    :cond_23
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_phone:I

    return p0

    .line 70
    :cond_26
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_mac:I

    return p0

    .line 85
    :cond_29
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->TAG:Ljava/lang/String;

    const-string v2, "mBtClass is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_46

    .line 89
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 90
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_earphone:I

    return p0

    .line 92
    :cond_3d
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 93
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_earphone:I

    return p0

    .line 97
    :cond_46
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 99
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->A2DPPROFILE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 100
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_earphone:I

    return p0

    .line 102
    :cond_5b
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->HEADSETPROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p0

    if-eqz p0, :cond_66

    .line 103
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_earphone:I

    return p0

    .line 107
    :cond_66
    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->isProfileSupport(I)Z

    move-result p0

    if-eqz p0, :cond_6f

    .line 108
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_earphone:I

    return p0

    :cond_6f
    const/4 p0, 0x2

    .line 109
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->isProfileSupport(I)Z

    move-result p0

    if-eqz p0, :cond_79

    .line 110
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_earphone:I

    return p0

    :cond_79
    const/4 p0, 0x4

    .line 111
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->isProfileSupport(I)Z

    move-result p0

    if-eqz p0, :cond_83

    .line 112
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_xbox:I

    return p0

    :cond_83
    const/4 p0, 0x5

    .line 113
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->isProfileSupport(I)Z

    move-result p0

    if-eqz p0, :cond_8d

    .line 114
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_phone:I

    return p0

    :cond_8d
    return v1
.end method

.method static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x540

    if-eq p0, v0, :cond_16

    const/16 v0, 0x580

    if-eq p0, v0, :cond_13

    const/16 v0, 0x5c0

    if-eq p0, v0, :cond_16

    .line 35
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_xbox:I

    return p0

    .line 33
    :cond_13
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_mouse:I

    return p0

    .line 31
    :cond_16
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_keyboard:I

    return p0
.end method

.method private static isProfileSupport(I)Z
    .registers 4

    .line 40
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 41
    sget-object p0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->TAG:Ljava/lang/String;

    const-string v0, "mProfileSupport is null, do not connect"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    const/4 v2, 0x1

    if-eq p0, v2, :cond_29

    const/4 v2, 0x2

    if-eq p0, v2, :cond_24

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1f

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1a

    return v1

    .line 53
    :cond_1a
    :try_start_1a
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    .line 51
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    .line 49
    :cond_24
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    .line 47
    :cond_29
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_2d} :catch_2e

    return p0

    :catch_2e
    move-exception p0

    .line 58
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->TAG:Ljava/lang/String;

    const-string v2, "fatal NullPointerException, isProfileSupport get null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v1
.end method
