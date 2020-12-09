.class public Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
.super Ljava/lang/Object;
.source "AppMetadataBackupWriter.java"


# instance fields
.field private final mOutput:Landroid/app/backup/FullBackupDataOutput;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 50
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 51
    return-void
.end method

.method private getManifestBytes(Landroid/content/pm/PackageInfo;Z)[B
    .registers 8

    .line 127
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    new-instance v2, Landroid/util/StringBuilderPrinter;

    invoke-direct {v2, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 131
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 134
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_36

    goto :goto_38

    :cond_36
    const-string v0, ""

    :goto_38
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 139
    const-string v0, "0"

    if-eqz p2, :cond_42

    const-string p2, "1"

    goto :goto_43

    :cond_42
    move-object p2, v0

    :goto_43
    invoke-virtual {v2, p2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 142
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 143
    if-nez p1, :cond_4e

    .line 144
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    goto :goto_6a

    .line 148
    :cond_4e
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    .line 149
    array-length p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 150
    array-length p2, p1

    const/4 v0, 0x0

    :goto_5c
    if-ge v0, p2, :cond_6a

    aget-object v3, p1, v0

    .line 151
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 154
    :cond_6a
    :goto_6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private getMetadataBytes(Ljava/lang/String;)[B
    .registers 5

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    new-instance v1, Landroid/util/StringBuilderPrinter;

    invoke-direct {v1, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 211
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, p1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private writeWidgetData(Ljava/io/DataOutputStream;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const v0, 0x1ffed01

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 230
    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 231
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 232
    return-void
.end method


# virtual methods
.method public backupApk(Landroid/content/pm/PackageInfo;)V
    .registers 9

    .line 241
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 242
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 243
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    const-string v2, "a"

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 250
    return-void
.end method

.method public backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p6}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->getManifestBytes(Landroid/content/pm/PackageInfo;Z)[B

    move-result-object p6

    .line 91
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 92
    invoke-virtual {v0, p6}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 99
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 101
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 105
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 101
    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 108
    return-void
.end method

.method public backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public backupObb(ILandroid/content/pm/PackageInfo;)V
    .registers 12

    .line 260
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 262
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 263
    if-eqz p1, :cond_34

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_34

    .line 269
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 270
    array-length v8, v1

    :goto_1b
    if-ge v0, v8, :cond_34

    aget-object v2, v1, v0

    .line 271
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 276
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 271
    const-string/jumbo v5, "obb"

    move-object v2, v3

    move-object v3, v5

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 281
    :cond_34
    return-void
.end method

.method public backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    array-length v0, p4

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const-string v1, "Can\'t backup widget with no data."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 174
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 175
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 176
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    invoke-direct {p0, v2}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->getMetadataBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 181
    invoke-direct {p0, p1, p4}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->writeWidgetData(Ljava/io/DataOutputStream;[B)V

    .line 182
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 183
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 187
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 189
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 193
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 189
    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 196
    return-void
.end method
