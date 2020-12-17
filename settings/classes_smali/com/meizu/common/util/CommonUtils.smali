.class public Lcom/meizu/common/util/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static isFlymeOS:Ljava/lang/Boolean;

.field private static isFlymeOS4:Ljava/lang/Boolean;

.field private static mMethodGetString:Ljava/lang/reflect/Method;

.field private static sBuildExtCls:Ljava/lang/Class;

.field private static sFlymeFeatureCls:Ljava/lang/Class;

.field private static sIsProductInternationalMethod:Ljava/lang/reflect/Method;

.field private static sShellFingerprintKeyField:Ljava/lang/reflect/Field;

.field private static shellHapticFeedBackMotor:Ljava/lang/reflect/Field;


# direct methods
.method public static getShowNavigationBarValue(Landroid/content/Context;I)I
    .registers 3

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_show_navigation_bar"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 110
    :try_start_1
    const-class v1, Landroid/os/Build;

    .line 111
    sget-object v2, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1c

    const-string v2, "getString"

    new-array v5, v4, [Ljava/lang/Class;

    .line 112
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    .line 113
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 115
    :cond_1c
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->mMethodGetString:Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    return-object v0
.end method

.method private static hasFlymeFeature()Z
    .registers 2

    .line 318
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->shellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    if-nez v0, :cond_12

    const-string v0, "flyme.config.FlymeFeature"

    .line 319
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SHELL_HAPTICFEEDBACK_MOTOR"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->shellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    .line 322
    :cond_12
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->shellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public static hasFullDisplay()Z
    .registers 3

    const/4 v0, 0x1

    .line 261
    :try_start_1
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sFlymeFeatureCls:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "flyme.config.FlymeFeature"

    .line 262
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->sFlymeFeatureCls:Ljava/lang/Class;

    .line 264
    :cond_d
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sShellFingerprintKeyField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1b

    .line 265
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sFlymeFeatureCls:Ljava/lang/Class;

    const-string v2, "SHELL_FINGERPRINT_KEY"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->sShellFingerprintKeyField:Ljava/lang/reflect/Field;

    .line 267
    :cond_1b
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sShellFingerprintKeyField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_22} :catch_2d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_22} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_22} :catch_23

    goto :goto_32

    :catch_23
    move-exception v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_31

    :catch_28
    move-exception v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_31

    :catch_2d
    move-exception v1

    .line 269
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_31
    move v1, v0

    :goto_32
    if-nez v1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0
.end method

.method public static isFlymeOS()Z
    .registers 1

    .line 65
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 66
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 67
    :cond_b
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 69
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    goto :goto_1a

    .line 71
    :cond_16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    .line 73
    :goto_1a
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return v0

    :catch_21
    const/4 v0, 0x0

    return v0
.end method

.method public static isFlymeOS4()Z
    .registers 3

    .line 86
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 87
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 88
    :cond_b
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.description"

    .line 89
    invoke-static {v1}, Lcom/meizu/common/util/CommonUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Flyme OS 4"

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    if-eqz v1, :cond_27

    const-string v0, ".*"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_2c

    .line 94
    :cond_27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    goto :goto_30

    .line 92
    :cond_2c
    :goto_2c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    .line 96
    :goto_30
    sget-object v0, Lcom/meizu/common/util/CommonUtils;->isFlymeOS4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    return v0

    :catch_37
    const/4 v0, 0x0

    return v0
.end method

.method public static isProductInternational()Z
    .registers 4

    const/4 v0, 0x0

    .line 238
    :try_start_1
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sBuildExtCls:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "android.os.BuildExt"

    .line 239
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->sBuildExtCls:Ljava/lang/Class;

    .line 241
    :cond_d
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sIsProductInternationalMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1d

    .line 242
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sBuildExtCls:Ljava/lang/Class;

    const-string v2, "isProductInternational"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/CommonUtils;->sIsProductInternationalMethod:Ljava/lang/reflect/Method;

    .line 245
    :cond_1d
    sget-object v1, Lcom/meizu/common/util/CommonUtils;->sIsProductInternationalMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/meizu/common/util/CommonUtils;->sBuildExtCls:Ljava/lang/Class;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    return v0

    :catch_2e
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isShowNavigationBar(Landroid/content/Context;)Z
    .registers 4

    .line 298
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFullDisplay()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 299
    :goto_12
    invoke-static {p0, v0}, Lcom/meizu/common/util/CommonUtils;->getShowNavigationBarValue(Landroid/content/Context;I)I

    move-result p0

    if-ne p0, v2, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method public static shakeForFlymeFeature(Landroid/view/View;)V
    .registers 2

    .line 309
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFlymeFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x4e98

    .line 310
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_b
    return-void
.end method
