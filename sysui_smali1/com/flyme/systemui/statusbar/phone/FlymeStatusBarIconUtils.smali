.class public Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;
.super Ljava/lang/Object;
.source "FlymeStatusBarIconUtils.java"


# static fields
.field private static final mAppEncrptedMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAppIconMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

.field private static final mAppInternalMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAppNamesMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAppResourceMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

.field private static mInternalAppBlackList:[Ljava/lang/String;

.field private static mInternalAppInit:Z

.field private static mInternalAppWhiteList:[Ljava/lang/String;

.field private static final mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private static mSuperPowerModeIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mSuperPowerModeIcons:Ljava/util/List;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppInternalMap:Landroid/util/ArrayMap;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppEncrptedMap:Landroid/util/ArrayMap;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "M/d/yy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    const/16 v1, 0x14

    const v2, 0x493e0

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;-><init>(II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppIconMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    .line 36
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    const/16 v1, 0x28

    const v2, 0xea60

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;-><init>(II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppResourceMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppNamesMap:Landroid/util/ArrayMap;

    .line 39
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mSuperPowerModeIcons:Ljava/util/List;

    const-string v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mSuperPowerModeIcons:Ljava/util/List;

    const-string v1, "com.android.server.telecom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mSuperPowerModeIcons:Ljava/util/List;

    const-string v1, "com.android.dialer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mSuperPowerModeIcons:Ljava/util/List;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearAppCache()V
    .registers 1

    .line 67
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppIconMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->clearAll()V

    .line 68
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppResourceMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->clearAll()V

    return-void
.end method

.method public static clearAppNamesCache()V
    .registers 1

    .line 76
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppNamesMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method private static containsInArray([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 112
    array-length v1, p0

    if-lez v1, :cond_17

    .line 113
    array-length v1, p0

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_17

    aget-object v3, p0, v2

    .line 114
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return v0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_36

    .line 169
    :try_start_2
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppNamesMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 170
    sget-object p0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppNamesMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 172
    :cond_13
    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p2, 0x2200

    .line 173
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_36

    .line 175
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 176
    sget-object p2, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppNamesMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2c} :catch_32
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2d

    return-object p0

    :catchall_2d
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    :catch_32
    move-exception p0

    .line 181
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplicationIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 10

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppIconMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    sget-object v4, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppIconMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    invoke-virtual {v4, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->getUpdateTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 50
    sget-object p0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppIconMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_83

    :cond_45
    const/4 v1, 0x0

    .line 53
    :try_start_46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_7d

    if-eqz p1, :cond_51

    goto :goto_59

    .line 54
    :cond_51
    :try_start_51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_59
    if-eqz p1, :cond_6f

    .line 55
    invoke-static {p2}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_6e
    .catchall {:try_start_51 .. :try_end_6e} :catchall_7b

    goto :goto_70

    :cond_6f
    move-object p0, p1

    .line 58
    :goto_70
    :try_start_70
    sget-object p1, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppIconMap:Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;

    invoke-virtual {p1, v0, p0}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_76

    goto :goto_83

    :catchall_76
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_7f

    :catchall_7b
    move-exception p0

    goto :goto_7f

    :catchall_7d
    move-exception p0

    move-object p1, v1

    .line 60
    :goto_7f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, p1

    :goto_83
    return-object p0
.end method

.method public static isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    .line 105
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.cloud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v0, v0, Landroid/app/NotificationExt;->internalApp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    return v1

    .line 108
    :cond_18
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 123
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_8a

    .line 124
    sget-object v2, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 125
    sget-object p0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 127
    :cond_1c
    sget-boolean v2, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mInternalAppInit:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3b

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$array;->internal_app_white:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mInternalAppWhiteList:[Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$array;->internal_app_black:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mInternalAppBlackList:[Ljava/lang/String;

    .line 130
    sput-boolean v3, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mInternalAppInit:Z

    .line 132
    :cond_3b
    sget-object v2, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mInternalAppWhiteList:[Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->containsInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 133
    sget-object p0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 137
    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_8a

    .line 139
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-nez v2, :cond_69

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_63

    goto :goto_69

    .line 147
    :cond_63
    sget-object p0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    .line 140
    :cond_69
    :goto_69
    sget-object p0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mInternalAppBlackList:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->containsInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_77

    .line 141
    sget-object p0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    .line 143
    :cond_77
    sget-object p0, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_4d .. :try_end_80} :catchall_81

    return v3

    :catchall_81
    move-exception p0

    .line 151
    sget-object v2, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8a
    :goto_8a
    return v0
.end method

.method public static isShowLargeIconOnHeader(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .registers 5

    .line 190
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 192
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "flyme.showRightIcon"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_20

    .line 193
    invoke-static {p0, v0}, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->hasLauncherActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 v2, 0x1

    :cond_20
    return v2
.end method
