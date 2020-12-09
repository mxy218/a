.class public Lcom/android/server/SystemUpdateManagerService;
.super Landroid/os/ISystemUpdateManager$Stub;
.source "SystemUpdateManagerService.java"


# static fields
.field private static final INFO_FILE:Ljava/lang/String; = "system-update-info.xml"

.field private static final INFO_FILE_VERSION:I = 0x0

.field private static final KEY_BOOT_COUNT:Ljava/lang/String; = "boot-count"

.field private static final KEY_INFO_BUNDLE:Ljava/lang/String; = "info-bundle"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "SystemUpdateManagerService"

.field private static final TAG_INFO:Ljava/lang/String; = "info"

.field private static final UID_UNKNOWN:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFile:Landroid/util/AtomicFile;

.field private mLastStatus:I

.field private mLastUid:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Landroid/os/ISystemUpdateManager$Stub;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 78
    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 79
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system-update-info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 82
    iget-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 83
    :try_start_28
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    .line 84
    monitor-exit p1

    .line 85
    return-void

    .line 84
    :catchall_2d
    move-exception v0

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private getBootCount()I
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private loadSystemUpdateInfoLocked()Landroid/os/Bundle;
    .registers 6

    .line 131
    const-string v0, "SystemUpdateManagerService"

    .line 132
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_9} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9} :catch_35
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_2e

    .line 133
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 134
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v3}, Lcom/android/server/SystemUpdateManagerService;->readInfoFileLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_20

    .line 136
    if-eqz v2, :cond_57

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1f} :catch_35
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_2e

    goto :goto_57

    .line 132
    :catchall_20
    move-exception v3

    :try_start_21
    throw v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    .line 136
    :catchall_22
    move-exception v4

    if-eqz v2, :cond_2d

    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v2

    :try_start_2a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    throw v4
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2e} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_2e} :catch_35
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e

    .line 140
    :catch_2e
    move-exception v2

    .line 141
    const-string v3, "Failed to read the info file:"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 138
    :catch_35
    move-exception v2

    .line 139
    const-string v3, "Failed to parse the info file:"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 136
    :catch_3c
    move-exception v2

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No existing info file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_57
    :goto_57
    nop

    .line 145
    :goto_58
    if-nez v1, :cond_5f

    .line 146
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 149
    :cond_5f
    const/4 v2, -0x1

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 150
    if-ne v3, v2, :cond_73

    .line 151
    const-string v1, "Invalid info file (invalid version). Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 155
    :cond_73
    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 156
    if-ne v3, v2, :cond_86

    .line 157
    const-string v1, "Invalid info file (invalid UID). Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 161
    :cond_86
    const-string v4, "boot-count"

    invoke-virtual {v1, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 162
    if-eq v4, v2, :cond_c5

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v2

    if-eq v4, v2, :cond_95

    goto :goto_c5

    .line 167
    :cond_95
    const-string v2, "info-bundle"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 168
    if-nez v1, :cond_a7

    .line 169
    const-string v1, "Invalid info file (missing info). Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 173
    :cond_a7
    const/4 v2, 0x0

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 174
    if-nez v2, :cond_bb

    .line 175
    const-string v1, "Invalid info file (invalid status). Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 180
    :cond_bb
    iput v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 181
    iput v3, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0

    .line 163
    :cond_c5
    :goto_c5
    const-string v1, "Outdated info file. Ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private readInfoFileLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    .line 207
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1

    .line 211
    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 241
    const-string v0, "SystemUpdateManagerService"

    const-string v1, "Removing info file"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 245
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 246
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 247
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    return-object v1
.end method

.method private saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V
    .registers 6

    .line 188
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 189
    const-string v1, "info-bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 190
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 192
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v1

    const-string v2, "boot-count"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 195
    invoke-direct {p0, v0}, Lcom/android/server/SystemUpdateManagerService;->writeInfoFileLocked(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 196
    iput p2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 197
    const-string/jumbo p2, "status"

    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 199
    :cond_31
    return-void
.end method

.method private writeInfoFileLocked(Landroid/os/PersistableBundle;)Z
    .registers 8

    .line 215
    const-string v0, "info"

    .line 217
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9} :catch_33

    .line 219
    :try_start_9
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 220
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 221
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 223
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 225
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 228
    iget-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_30} :catch_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_30} :catch_31

    .line 229
    return v4

    .line 230
    :catch_31
    move-exception p1

    goto :goto_35

    :catch_33
    move-exception p1

    move-object v2, v1

    .line 231
    :goto_35
    const-string v0, "SystemUpdateManagerService"

    const-string v1, "Failed to save the info file:"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    if-eqz v2, :cond_43

    .line 233
    iget-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 236
    :cond_43
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public retrieveSystemUpdateInfo()Landroid/os/Bundle;
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYSTEM_UPDATE_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 117
    const-string v2, "android.permission.RECOVERY"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 119
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t read system update info. Requiring READ_SYSTEM_UPDATE_INFO or RECOVERY permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 125
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V
    .registers 6

    .line 89
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const-string v2, "SystemUpdateManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    if-nez v0, :cond_1b

    .line 93
    const-string p1, "SystemUpdateManagerService"

    const-string v0, "Invalid status info. Ignored"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 103
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 104
    iget v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    if-eq v2, v1, :cond_32

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2a

    goto :goto_32

    .line 109
    :cond_2a
    const-string p1, "SystemUpdateManagerService"

    const-string v0, "Inactive updater reporting IDLE status. Ignored"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 105
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_35
    invoke-direct {p0, p1, v1}, Lcom/android/server/SystemUpdateManagerService;->saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V

    .line 107
    monitor-exit v0

    .line 111
    :goto_39
    return-void

    .line 107
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw p1
.end method
