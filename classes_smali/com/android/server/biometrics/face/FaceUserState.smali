.class public Lcom/android/server/biometrics/face/FaceUserState;
.super Lcom/android/server/biometrics/BiometricUserState;
.source "FaceUserState.java"


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_FACE_ID:Ljava/lang/String; = "faceId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FACE_FILE:Ljava/lang/String; = "settings_face.xml"

.field private static final TAG:Ljava/lang/String; = "FaceState"

.field private static final TAG_FACE:Ljava/lang/String; = "face"

.field private static final TAG_FACES:Ljava/lang/String; = "faces"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricUserState;-><init>(Landroid/content/Context;I)V

    .line 57
    return-void
.end method


# virtual methods
.method public addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 3

    .line 76
    instance-of v0, p1, Landroid/hardware/face/Face;

    if-eqz v0, :cond_8

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    goto :goto_f

    .line 79
    :cond_8
    const-string p1, "FaceState"

    const-string v0, "Attempted to add non-face identifier"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_f
    return-void
.end method

.method protected doWriteState()V
    .registers 12

    .line 95
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 99
    monitor-enter p0

    .line 100
    :try_start_8
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/face/FaceUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_9e

    .line 103
    nop

    .line 105
    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_85

    .line 107
    :try_start_15
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 108
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 109
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 110
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 111
    const-string v5, "faces"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 114
    const/4 v6, 0x0

    :goto_36
    if-ge v6, v5, :cond_73

    .line 115
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/face/Face;

    .line 116
    const-string v8, "face"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const-string v8, "faceId"

    invoke-virtual {v7}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    const-string/jumbo v8, "name"

    invoke-virtual {v7}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string v8, "deviceId"

    invoke-virtual {v7}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string v7, "face"

    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 123
    :cond_73
    const-string v1, "faces"

    invoke-interface {v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 125
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7e
    .catchall {:try_start_15 .. :try_end_7e} :catchall_83

    .line 133
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    nop

    .line 135
    return-void

    .line 128
    :catchall_83
    move-exception v1

    goto :goto_87

    :catchall_85
    move-exception v1

    move-object v3, v2

    .line 129
    :goto_87
    :try_start_87
    const-string v2, "FaceState"

    const-string v4, "Failed to write settings, restoring backup"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to write faces"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_99

    .line 133
    :catchall_99
    move-exception v0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 101
    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method protected getBiometricFile()Ljava/lang/String;
    .registers 2

    .line 66
    const-string/jumbo v0, "settings_face.xml"

    return-object v0
.end method

.method protected getBiometricsTag()Ljava/lang/String;
    .registers 2

    .line 61
    const-string v0, "faces"

    return-object v0
.end method

.method protected getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 10

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 88
    new-instance v3, Landroid/hardware/face/Face;

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 90
    :cond_2d
    return-object v0
.end method

.method protected getNameTemplateResource()I
    .registers 2

    .line 71
    const v0, 0x104027b

    return v0
.end method

.method protected parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
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

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 143
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4e

    .line 145
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 146
    goto :goto_4

    .line 149
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v2, "face"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 151
    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    const-string v3, "faceId"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    const-string v4, "deviceId"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceUserState;->mBiometrics:Ljava/util/ArrayList;

    new-instance v5, Landroid/hardware/face/Face;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v6, v1

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_4d
    goto :goto_4

    .line 157
    :cond_4e
    return-void
.end method
