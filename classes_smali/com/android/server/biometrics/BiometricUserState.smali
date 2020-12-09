.class public abstract Lcom/android/server/biometrics/BiometricUserState;
.super Ljava/lang/Object;
.source "BiometricUserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserState"


# instance fields
.field protected final mBiometrics:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mFile:Ljava/io/File;

.field private final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/android/server/biometrics/BiometricUserState$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricUserState$1;-><init>(Lcom/android/server/biometrics/BiometricUserState;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    .line 92
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricUserState;->getFileForUser(I)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    .line 93
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricUserState;->mContext:Landroid/content/Context;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->readStateSyncLocked()V

    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 96
    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw p1
.end method

.method private getFileForUser(I)Ljava/io/File;
    .registers 4

    .line 163
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricUserState;->getBiometricFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isUnique(Ljava/lang/String;)Z
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 155
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 156
    const/4 p1, 0x0

    return p1

    .line 158
    :cond_1e
    goto :goto_6

    .line 159
    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method private parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 198
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 200
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 201
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2c

    .line 202
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 203
    goto :goto_4

    .line 206
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricUserState;->getBiometricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricUserState;->parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 210
    :cond_2b
    goto :goto_4

    .line 211
    :cond_2c
    return-void
.end method

.method private readStateSyncLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 174
    return-void

    .line 177
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_41

    .line 181
    nop

    .line 183
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 184
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/BiometricUserState;->parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_1c} :catch_23
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_23
    .catchall {:try_start_11 .. :try_end_1c} :catchall_21

    .line 191
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 192
    nop

    .line 193
    return-void

    .line 191
    :catchall_21
    move-exception v1

    goto :goto_3d

    .line 187
    :catch_23
    move-exception v1

    .line 188
    :try_start_24
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing settings file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_21

    .line 191
    :goto_3d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 178
    :catch_41
    move-exception v0

    .line 179
    const-string v0, "UserState"

    const-string v1, "No fingerprint state"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private scheduleWriteStateLocked()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method


# virtual methods
.method public addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    monitor-enter p0

    .line 101
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->scheduleWriteStateLocked()V

    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p1
.end method

.method protected abstract doWriteState()V
.end method

.method protected abstract getBiometricFile()Ljava/lang/String;
.end method

.method public getBiometrics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 132
    monitor-enter p0

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 134
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected abstract getBiometricsTag()Ljava/lang/String;
.end method

.method protected abstract getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getNameTemplateResource()I
.end method

.method public getUniqueName()Ljava/lang/String;
    .registers 8

    .line 142
    const/4 v0, 0x1

    move v1, v0

    .line 145
    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricUserState;->getNameTemplateResource()I

    move-result v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-direct {p0, v2}, Lcom/android/server/biometrics/BiometricUserState;->isUnique(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 147
    return-object v2

    .line 149
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_2
.end method

.method protected abstract parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public removeBiometric(I)V
    .registers 4

    .line 107
    monitor-enter p0

    .line 108
    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 109
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 110
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->scheduleWriteStateLocked()V

    .line 112
    goto :goto_24

    .line 108
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 115
    :cond_24
    :goto_24
    monitor-exit p0

    .line 116
    return-void

    .line 115
    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public renameBiometric(ILjava/lang/CharSequence;)V
    .registers 5

    .line 119
    monitor-enter p0

    .line 120
    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 121
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_27

    .line 122
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 123
    invoke-virtual {p1, p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->setName(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->scheduleWriteStateLocked()V

    .line 125
    goto :goto_2a

    .line 120
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2c

    throw p1
.end method
