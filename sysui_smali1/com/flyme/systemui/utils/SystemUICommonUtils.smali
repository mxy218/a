.class public final Lcom/flyme/systemui/utils/SystemUICommonUtils;
.super Ljava/lang/Object;
.source "SystemUICommonUtils.java"


# static fields
.field private static sInstance:Lcom/flyme/systemui/utils/SystemUICommonUtils;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mContext:Landroid/content/Context;

    .line 32
    iget-object p1, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mResources:Landroid/content/res/Resources;

    .line 33
    iget-object p1, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;
    .registers 3

    const-class v0, Lcom/flyme/systemui/utils/SystemUICommonUtils;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/utils/SystemUICommonUtils;->sInstance:Lcom/flyme/systemui/utils/SystemUICommonUtils;

    if-nez v1, :cond_e

    .line 38
    new-instance v1, Lcom/flyme/systemui/utils/SystemUICommonUtils;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/utils/SystemUICommonUtils;->sInstance:Lcom/flyme/systemui/utils/SystemUICommonUtils;

    .line 40
    :cond_e
    sget-object p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->sInstance:Lcom/flyme/systemui/utils/SystemUICommonUtils;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public compareDoubleValue(DD)Z
    .registers 6

    .line 106
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1f

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_1f

    .line 109
    :cond_e
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 110
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p3, p4}, Ljava/math/BigDecimal;-><init>(D)V

    .line 111
    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    return v0
.end method

.method public compareFloatValue(FF)Z
    .registers 6

    .line 97
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_2d

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_2d

    .line 100
    :cond_1a
    new-instance p0, Ljava/math/BigDecimal;

    float-to-double v1, p1

    invoke-direct {p0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 101
    new-instance p1, Ljava/math/BigDecimal;

    float-to-double v1, p2

    invoke-direct {p1, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 102
    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    :goto_2d
    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPanelWidth()I
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_19

    .line 46
    iget-object p0, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$dimen;->flyme_notification_panel_width_landscape:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_21

    .line 47
    :cond_19
    iget-object p0, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$dimen;->flyme_notification_panel_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_21
    return p0
.end method

.method public hasNavigationBar()Z
    .registers 3

    .line 52
    iget-object p0, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "mz_show_navigation_bar"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isAppOnForeground(Ljava/lang/String;)Z
    .registers 5

    .line 83
    iget-object p0, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 84
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_12

    return v0

    .line 88
    :cond_12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 89
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_32
    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/flyme/systemui/utils/SystemUICommonUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    return p0
.end method

.method public isNotChineseLanguage()Z
    .registers 3

    .line 120
    invoke-virtual {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 121
    invoke-virtual {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "zh-HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method
