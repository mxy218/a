.class public Lcom/android/settings/location/DimmableIZatIconPreference;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;,
        Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;
    }
.end annotation


# static fields
.field private static mGetConsentMethod:Ljava/lang/reflect/Method;

.field private static mGetXtProxyMethod:Ljava/lang/reflect/Method;

.field private static mIzatPackage:Ljava/lang/String;

.field private static mLoader:Ldalvik/system/DexClassLoader;

.field private static mNotifierClz:Ljava/lang/Class;

.field private static mShowIzatMethod:Ljava/lang/reflect/Method;

.field private static mXtProxyClz:Ljava/lang/Class;


# direct methods
.method static synthetic access$000()Ldalvik/system/DexClassLoader;
    .registers 1

    .line 52
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .registers 1

    .line 52
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V
    .registers 2

    .line 52
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->dimIcon(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .registers 1

    .line 52
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/reflect/Method;
    .registers 1

    .line 52
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static dimIcon(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V
    .registers 4

    .line 121
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 123
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_f

    const/16 p1, 0x66

    goto :goto_11

    :cond_f
    const/16 p1, 0xff

    :goto_11
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 124
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    return-void
.end method

.method static getAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settingslib/widget/apppreference/AppPreference;
    .registers 3

    .line 203
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->isIzatPackage(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 204
    new-instance p1, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V

    goto :goto_12

    .line 205
    :cond_d
    new-instance p1, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    :goto_12
    return-object p1
.end method

.method static getRestrictedAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settings/widget/RestrictedAppPreference;
    .registers 4

    .line 209
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->isIzatPackage(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    new-instance v0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V

    goto :goto_16

    .line 211
    :cond_f
    new-instance v0, Lcom/android/settings/widget/RestrictedAppPreference;

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_16
    return-object v0
.end method

.method private static isIzatPackage(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Z
    .registers 2

    .line 114
    sget-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    if-eqz p0, :cond_e

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static load(Landroid/content/Context;)V
    .registers 8

    .line 63
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_8f

    const/4 v0, 0x0

    .line 65
    :try_start_5
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    if-nez v1, :cond_8f

    .line 66
    :cond_d
    new-instance v1, Ldalvik/system/DexClassLoader;

    const-string v2, "/system/framework/izat.xt.srv.jar"

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, p0, v0, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    const-string p0, "com.qti.izat.XTProxy"

    .line 70
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string p0, "com.qti.izat.XTProxy$Notifier"

    .line 73
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    invoke-static {p0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    .line 76
    sget-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v1, "IZAT_XT_PACKAGE"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    .line 77
    sget-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v1, "getXTProxy"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    .line 80
    sget-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v1, "getUserConsent"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    .line 81
    sget-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string/jumbo v1, "showIzat"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;
    :try_end_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_7e} :catch_7f

    goto :goto_8f

    :catch_7f
    move-exception p0

    .line 88
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    .line 89
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    .line 90
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    .line 91
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    .line 92
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    .line 93
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8f
    :goto_8f
    return-void
.end method

.method static showIzat(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .line 100
    invoke-static {p0}, Lcom/android/settings/location/DimmableIZatIconPreference;->load(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 103
    :try_start_4
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_23

    .line 104
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_4 .. :try_end_1d} :catch_1f

    move v0, p0

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23
    :goto_23
    return v0
.end method
