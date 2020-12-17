.class public Lcom/android/settingslib/bluetooth/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/Util$ErrorListener;
    }
.end annotation


# static fields
.field private static sErrorListener:Lcom/android/settingslib/bluetooth/Util$ErrorListener;


# direct methods
.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 155
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_29

    .line 159
    :cond_13
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_29

    const/4 p0, 0x1

    return p0

    :catch_29
    :cond_29
    :goto_29
    return v0
.end method

.method public static isErrorListenerInited()Z
    .registers 1

    .line 209
    sget-object v0, Lcom/android/settingslib/bluetooth/Util;->sErrorListener:Lcom/android/settingslib/bluetooth/Util$ErrorListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isFileExist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 139
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_21

    .line 143
    :cond_13
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_21

    if-nez p0, :cond_1f

    return v0

    :cond_1f
    const/4 p0, 0x1

    return p0

    :catch_21
    :cond_21
    :goto_21
    return v0
.end method

.method public static isProcessBySettings(Landroid/content/Context;)Z
    .registers 4

    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x0

    .line 178
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.meizu.connectivitysettings"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    const/4 p0, -0x1

    :goto_15
    if-ne v0, p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public static isVideoFilesExist(Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    .line 216
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_75

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_75

    .line 221
    :cond_14
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_75

    .line 222
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1f

    goto :goto_75

    .line 225
    :cond_1f
    array-length v1, p0

    move v3, v0

    :goto_21
    if-ge v3, v1, :cond_74

    aget-object v4, p0, v3

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_32

    goto :goto_73

    .line 230
    :cond_32
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_73

    .line 231
    array-length v5, v4

    if-ge v5, v2, :cond_3c

    goto :goto_73

    .line 234
    :cond_3c
    array-length v5, v4

    move v6, v0

    :goto_3e
    if-ge v6, v5, :cond_70

    aget-object v7, v4, v6

    .line 236
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_4f

    goto :goto_6f

    .line 239
    :cond_4f
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 241
    array-length v8, v7

    move v9, v0

    move v10, v9

    :goto_56
    if-ge v9, v8, :cond_68

    aget-object v11, v7, v9

    const-string/jumbo v12, "zz"

    .line 242
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_61} :catch_75

    if-eqz v11, :cond_65

    add-int/lit8 v10, v10, 0x1

    :cond_65
    add-int/lit8 v9, v9, 0x1

    goto :goto_56

    :cond_68
    const/4 v7, 0x2

    if-ge v10, v7, :cond_6c

    return v0

    :cond_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_6f
    :goto_6f
    return v0

    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_73
    :goto_73
    return v0

    :cond_74
    return v2

    :catch_75
    :cond_75
    :goto_75
    return v0
.end method
