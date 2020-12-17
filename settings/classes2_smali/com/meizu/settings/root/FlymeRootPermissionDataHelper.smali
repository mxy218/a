.class public Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;
.super Ljava/lang/Object;
.source "FlymeRootPermissionDataHelper.java"


# direct methods
.method public static declared-synchronized getStorePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;

    monitor-enter v0

    .line 26
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/RootPermissions_Hashmap"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 33
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 36
    instance-of v3, v2, Ljava/util/HashMap;

    if-eqz v3, :cond_36

    .line 37
    check-cast v2, Ljava/util/HashMap;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_18} :catch_43
    .catchall {:try_start_4 .. :try_end_18} :catchall_41

    :try_start_18
    const-string v1, "FlymeRootPermissionDataHelper"

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded map :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2e} :catch_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_2e} :catch_30
    .catchall {:try_start_18 .. :try_end_2e} :catchall_41

    move-object v1, v2

    goto :goto_3d

    :catch_30
    move-exception p0

    move-object v1, v2

    goto :goto_44

    :catch_33
    move-exception p0

    move-object v1, v2

    goto :goto_60

    :cond_36
    :try_start_36
    const-string v2, "FlymeRootPermissionDataHelper"

    const-string v3, "bad storage file"

    .line 40
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_3d
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_40} :catch_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_40} :catch_43
    .catchall {:try_start_36 .. :try_end_40} :catchall_41

    goto :goto_7a

    :catchall_41
    move-exception p0

    goto :goto_8a

    :catch_43
    move-exception p0

    :goto_44
    :try_start_44
    const-string v2, "FlymeRootPermissionDataHelper"

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :catch_5f
    move-exception p0

    :goto_60
    const-string v2, "FlymeRootPermissionDataHelper"

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7a
    if-nez v1, :cond_88

    const-string p0, "FlymeRootPermissionDataHelper"

    const-string v1, "loadHashMap()...: loadHashMap is null"

    .line 50
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_88
    .catchall {:try_start_44 .. :try_end_88} :catchall_41

    .line 53
    :cond_88
    monitor-exit v0

    return-object v1

    :goto_8a
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized saveHashMap(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;

    monitor-enter v0

    :try_start_3
    const-string v1, "FlymeRootPermissionDataHelper"

    const-string v2, "saveHashMap()..."

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_57

    .line 59
    :try_start_a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 63
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_1d} :catch_3a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_1e
    .catchall {:try_start_a .. :try_end_1d} :catchall_57

    goto :goto_55

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string p1, "FlymeRootPermissionDataHelper"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :catch_3a
    move-exception p0

    const-string p1, "FlymeRootPermissionDataHelper"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileNotFoundException\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_1f .. :try_end_55} :catchall_57

    .line 69
    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method
