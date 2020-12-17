.class public Lcom/meizu/settings/voicewakeup/FileOps;
.super Ljava/lang/Object;
.source "FileOps.java"


# static fields
.field static DTAG:Ljava/lang/String; = "VoiceQMultiKeyword-FileOps"

.field static PREF_KEY_CURRENT_SELECTED_VOICE_INDEX:Ljava/lang/String; = "current_selected_voice_index"

.field static PREF_NAME:Ljava/lang/String; = "pref_smart_voice"


# direct methods
.method public static calculate(Landroid/content/Context;)I
    .registers 2

    const-string v0, ""

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 84
    new-instance v0, Lcom/meizu/settings/voicewakeup/UserKWFileFilter;

    invoke-direct {v0}, Lcom/meizu/settings/voicewakeup/UserKWFileFilter;-><init>()V

    .line 85
    invoke-virtual {p0, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    .line 86
    array-length p0, p0

    return p0
.end method

.method public static deleteOtherUserKeyWords(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "FileOps"

    const-string v1, ""

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 91
    new-instance v1, Lcom/meizu/settings/voicewakeup/UserKWFileFilter;

    invoke-direct {v1}, Lcom/meizu/settings/voicewakeup/UserKWFileFilter;-><init>()V

    .line 92
    invoke-virtual {p0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 94
    :goto_13
    :try_start_13
    array-length v4, v1

    if-ge v3, v4, :cond_68

    .line 95
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 99
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    .line 100
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_65} :catch_6a

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_68
    const/4 p0, 0x1

    return p0

    :catch_6a
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static getCurrentSelectedIndex(Landroid/content/Context;)I
    .registers 3

    .line 187
    sget-object v0, Lcom/meizu/settings/voicewakeup/FileOps;->PREF_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 188
    sget-object v0, Lcom/meizu/settings/voicewakeup/FileOps;->PREF_KEY_CURRENT_SELECTED_VOICE_INDEX:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getdisplayname(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ".bin"

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 119
    :goto_14
    array-length v3, v0

    if-ge v2, v3, :cond_30

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 123
    :cond_30
    sget-object v0, Lcom/meizu/settings/voicewakeup/FileOps;->DTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " getdisplayname "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getfilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, " "

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 133
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_26

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 137
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/meizu/settings/voicewakeup/FileOps;->DTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " getfilename "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static populatePureKeywords(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 66
    new-instance v0, Lcom/meizu/settings/voicewakeup/UserKWFileFilter;

    invoke-direct {v0}, Lcom/meizu/settings/voicewakeup/UserKWFileFilter;-><init>()V

    .line 67
    invoke-virtual {p0, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 68
    :goto_10
    array-length v1, p0

    if-ge v0, v1, :cond_32

    .line 69
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/meizu/settings/voicewakeup/FileOps;->getdisplayname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "userkw"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2c

    const/4 v1, 0x1

    .line 73
    aget-object v1, v2, v1

    .line 76
    :cond_2c
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_32
    return-void
.end method

.method public static populatekeywords(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    .line 28
    sget-object p0, Lcom/meizu/settings/voicewakeup/FileOps;->DTAG:Ljava/lang/String;

    const-string p2, "withOEM"

    invoke-static {p0, p2}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance p0, Ljava/io/File;

    const-string p2, "system/etc/firmware/audience/cvqmodels"

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance p2, Lcom/meizu/settings/voicewakeup/OEMKWFileFilter;

    invoke-direct {p2}, Lcom/meizu/settings/voicewakeup/OEMKWFileFilter;-><init>()V

    invoke-virtual {p0, p2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_2e

    if-nez p0, :cond_1f

    goto :goto_2e

    .line 33
    :cond_1f
    :goto_1f
    array-length p2, p0

    if-ge v0, p2, :cond_59

    .line 34
    aget-object p2, p0, v0

    invoke-static {p2}, Lcom/meizu/settings/voicewakeup/FileOps;->getdisplayname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2e
    :goto_2e
    return-void

    .line 37
    :cond_2f
    sget-object p2, Lcom/meizu/settings/voicewakeup/FileOps;->DTAG:Ljava/lang/String;

    const-string v1, "not OEM"

    invoke-static {p2, v1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    .line 39
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 40
    new-instance p2, Lcom/meizu/settings/voicewakeup/UserKWFileFilter;

    invoke-direct {p2}, Lcom/meizu/settings/voicewakeup/UserKWFileFilter;-><init>()V

    invoke-virtual {p0, p2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_59

    if-nez p0, :cond_4a

    goto :goto_59

    .line 42
    :cond_4a
    :goto_4a
    array-length p2, p0

    if-ge v0, p2, :cond_59

    .line 43
    aget-object p2, p0, v0

    invoke-static {p2}, Lcom/meizu/settings/voicewakeup/FileOps;->getdisplayname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_59
    :goto_59
    return-void
.end method

.method public static setCurrentSelectedIndex(Landroid/content/Context;I)V
    .registers 4

    .line 192
    sget-object v0, Lcom/meizu/settings/voicewakeup/FileOps;->PREF_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 193
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/meizu/settings/voicewakeup/FileOps;->PREF_KEY_CURRENT_SELECTED_VOICE_INDEX:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
