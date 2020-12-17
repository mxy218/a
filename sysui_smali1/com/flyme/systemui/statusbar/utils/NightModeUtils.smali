.class public Lcom/flyme/systemui/statusbar/utils/NightModeUtils;
.super Ljava/lang/Object;
.source "NightModeUtils.java"


# static fields
.field private static mInNightMode:Z


# direct methods
.method public static isFlymeDarkProcessingEnabled(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "activity"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 37
    :goto_24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flyme_night_mode_dark_theme_pkg_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "flyme_night_mode_black_list"

    invoke-static {p0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_42

    if-eqz v3, :cond_42

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    :cond_42
    if-eqz p0, :cond_4c

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v2

    :cond_4c
    :goto_4c
    return v1
.end method

.method public static isInNightMode()Z
    .registers 1

    .line 27
    sget-boolean v0, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->mInNightMode:Z

    return v0
.end method

.method public static setInNightMode(Z)V
    .registers 1

    .line 23
    sput-boolean p0, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->mInNightMode:Z

    return-void
.end method
