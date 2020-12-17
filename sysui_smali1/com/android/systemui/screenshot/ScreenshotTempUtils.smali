.class public Lcom/android/systemui/screenshot/ScreenshotTempUtils;
.super Ljava/lang/Object;
.source "ScreenshotTempUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileComparator;,
        Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;
    }
.end annotation


# direct methods
.method public static copyPic(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SS.ShareUtils"

    .line 47
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".ScreenshotTemp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_70

    .line 55
    array-length v4, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_23
    if-ge v7, v4, :cond_3a

    aget-object v8, v2, v7

    .line 56
    new-instance v9, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;

    invoke-direct {v9}, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;-><init>()V

    .line 57
    iput-object v8, v9, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;->file:Ljava/io/File;

    .line 58
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;->lastModified:J

    .line 59
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 61
    :cond_3a
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileComparator;

    invoke-direct {v4}, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileComparator;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    array-length v2, v2

    sub-int/2addr v2, v5

    :goto_44
    if-ge v6, v2, :cond_70

    .line 64
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;

    iget-object v4, v4, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;->file:Ljava/io/File;

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_69} :catch_6c

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :catch_6c
    move-exception v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :cond_70
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_79

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 78
    :cond_79
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_82

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_82
    const-string v2, "."

    .line 81
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mp4"

    .line 84
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c5

    .line 87
    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_c5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 91
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    :cond_d5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copy pic in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    :try_start_f9
    new-array v3, v3, [B

    .line 101
    :goto_fb
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_106

    .line 102
    invoke-virtual {p0, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_fb

    .line 104
    :cond_106
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_109
    .catchall {:try_start_f9 .. :try_end_109} :catchall_11f

    .line 107
    :try_start_109
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_10d

    goto :goto_111

    :catch_10d
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :goto_111
    :try_start_111
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_115

    goto :goto_119

    :catch_115
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_119
    const-string p0, "Copy pic sucess"

    .line 117
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_11f
    move-exception v0

    .line 107
    :try_start_120
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_123} :catch_124

    goto :goto_128

    :catch_124
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :goto_128
    :try_start_128
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_12c

    goto :goto_130

    :catch_12c
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :goto_130
    throw v0
.end method

.method public static deleteOriginPic(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 28
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_31

    const-string v1, "SS.ShareUtils"

    if-nez v0, :cond_2b

    :try_start_8
    const-string v0, "Delete origin pic"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 33
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_data=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_35

    :cond_2b
    const-string p0, "Origin pic == null"

    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    :goto_35
    return-void
.end method
