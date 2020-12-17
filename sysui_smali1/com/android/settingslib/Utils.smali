.class public Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final STORAGE_MANAGER_ENABLED_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final WIFI_4_PIE:[I

.field static final WIFI_5_PIE:[I

.field static final WIFI_6_PIE:[I

.field static final WIFI_PIE:[I

.field private static sPermissionControllerPackageName:Ljava/lang/String;

.field private static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 52
    fill-array-data v1, :array_1e

    sput-object v1, Lcom/android/settingslib/Utils;->WIFI_PIE:[I

    new-array v1, v0, [I

    .line 60
    fill-array-data v1, :array_2c

    sput-object v1, Lcom/android/settingslib/Utils;->WIFI_4_PIE:[I

    new-array v1, v0, [I

    .line 68
    fill-array-data v1, :array_3a

    sput-object v1, Lcom/android/settingslib/Utils;->WIFI_5_PIE:[I

    new-array v0, v0, [I

    .line 76
    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/settingslib/Utils;->WIFI_6_PIE:[I

    return-void

    :array_1e
    .array-data 4
        0x108054d
        0x108054e
        0x108054f
        0x1080550
        0x1080551
    .end array-data

    :array_2c
    .array-data 4
        0x108053d
        0x108053e
        0x108053f
        0x1080540
        0x1080541
    .end array-data

    :array_3a
    .array-data 4
        0x1080542
        0x1080543
        0x1080544
        0x1080545
        0x1080546
    .end array-data

    :array_48
    .array-data 4
        0x1080547
        0x1080548
        0x1080549
        0x108054a
        0x108054b
    .end array-data
.end method

.method public static applyAlpha(FI)I
    .registers 4

    .line 263
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 264
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 265
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 264
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static applyAlphaAttr(Landroid/content/Context;II)I
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 255
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 257
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result p0

    return p0
.end method

.method public static getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 2

    const v0, 0x1010435

    .line 224
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorAccentDefaultColor(Landroid/content/Context;)I
    .registers 2

    const v0, 0x1010435

    .line 233
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 277
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 280
    :try_start_a
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 282
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_12
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static getColorAttrDefaultColor(Landroid/content/Context;I)I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 270
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 271
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 272
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 2

    const v0, 0x1010543

    .line 228
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorErrorDefaultColor(Landroid/content/Context;)I
    .registers 2

    const v0, 0x1010543

    .line 238
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorStateListDefaultColor(Landroid/content/Context;I)I
    .registers 3

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static getCombinedServiceState(Landroid/telephony/ServiceState;)I
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 464
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 465
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-eq v1, v0, :cond_11

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1d

    :cond_11
    if-nez v2, :cond_1d

    .line 469
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    return v1
.end method

.method public static getDisabled(Landroid/content/Context;I)I
    .registers 3

    const v0, 0x1010033

    .line 250
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->applyAlphaAttr(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 295
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 296
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 297
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .registers 2

    if-eqz p0, :cond_d

    .line 328
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_d

    array-length v0, p0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 329
    aget-object p0, p0, v0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getMeizuDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 523
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5C:CD:7C:26:00:00"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_23

    .line 524
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5C:CD:7C:35:FF:FF"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_23

    const-string p0, "MEIZU POP Pro"

    goto :goto_47

    .line 526
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5C:CD:7C:36:00:00"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_46

    .line 527
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5C:CD:7C:3F:FF:FF"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_46

    const-string p0, "MEIZU POP2s"

    goto :goto_47

    :cond_46
    const/4 p0, 0x0

    :goto_47
    return-object p0
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .registers 3

    :try_start_0
    const-string v0, "android"

    const/16 v1, 0x40

    .line 336
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 337
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getThemeAttr(Landroid/content/Context;I)I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 289
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 290
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static isAudioModeOngoingCall(Landroid/content/Context;)Z
    .registers 3

    .line 419
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 420
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v1, 0x2

    if-eq p0, v1, :cond_17

    const/4 v1, 0x3

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_17
    return v0
.end method

.method public static isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .registers 3

    const v0, 0x1040166

    .line 348
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 350
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static isInService(Landroid/telephony/ServiceState;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 436
    :cond_4
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_13

    const/4 v1, 0x1

    if-eq p0, v1, :cond_13

    const/4 v2, 0x2

    if-ne p0, v2, :cond_12

    goto :goto_13

    :cond_12
    return v1

    :cond_13
    :goto_13
    return v0
.end method

.method public static isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .registers 7

    .line 306
    sget-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    new-array v0, v1, [Landroid/content/pm/Signature;

    .line 307
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 309
    :cond_10
    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 310
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 312
    :cond_1a
    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 313
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 315
    :cond_24
    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 316
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 318
    :cond_2e
    sget-object p1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v0, p1, v2

    if-eqz v0, :cond_40

    aget-object p1, p1, v2

    .line 319
    invoke-static {p2}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    :cond_40
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.printspooler"

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 324
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_71

    goto :goto_72

    :cond_71
    move v1, v2

    :cond_72
    :goto_72
    return v1
.end method

.method public static updateLocationEnabled(Landroid/content/Context;ZII)V
    .registers 8

    .line 86
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_changer"

    .line 88
    invoke-static {v1, v2, p3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 92
    new-instance p3, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    const-string v3, "CURRENT_MODE"

    .line 99
    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NEW_MODE"

    .line 100
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 101
    invoke-virtual {p0, p3, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 104
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method
