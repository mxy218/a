.class public Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
.super Lcom/android/server/biometrics/BiometricUserState;
.source "FingerprintUserState.java"


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_FINGER_ID:Ljava/lang/String; = "fingerId"

.field private static final ATTR_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field private static final TAG:Ljava/lang/String; = "FingerprintState"

.field private static final TAG_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final TAG_FINGERPRINTS:Ljava/lang/String; = "fingerprints"


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
    instance-of v0, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_8

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    goto :goto_f

    .line 79
    :cond_8
    const-string p1, "FingerprintState"

    const-string v0, "Attempted to add non-fingerprint identifier"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_f
    return-void
.end method

.method protected doWriteState()V
    .registers 12

    .line 96
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 100
    monitor-enter p0

    .line 101
    :try_start_8
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_ab

    .line 104
    nop

    .line 106
    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_92

    .line 108
    :try_start_15
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 109
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 110
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 111
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    const-string v5, "fingerprints"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 115
    const/4 v6, 0x0

    :goto_36
    if-ge v6, v5, :cond_80

    .line 116
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    .line 117
    const-string v8, "fingerprint"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    const-string v8, "fingerId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string/jumbo v8, "name"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string v8, "groupId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const-string v8, "deviceId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string v7, "fingerprint"

    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 125
    :cond_80
    const-string v1, "fingerprints"

    invoke-interface {v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 127
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8b
    .catchall {:try_start_15 .. :try_end_8b} :catchall_90

    .line 135
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 136
    nop

    .line 137
    return-void

    .line 130
    :catchall_90
    move-exception v1

    goto :goto_94

    :catchall_92
    move-exception v1

    move-object v3, v2

    .line 131
    :goto_94
    :try_start_94
    const-string v2, "FingerprintState"

    const-string v4, "Failed to write settings, restoring backup"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to write fingerprints"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a6
    .catchall {:try_start_94 .. :try_end_a6} :catchall_a6

    .line 135
    :catchall_a6
    move-exception v0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 102
    :catchall_ab
    move-exception v0

    :try_start_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v0
.end method

.method protected getBiometricFile()Ljava/lang/String;
    .registers 2

    .line 66
    const-string/jumbo v0, "settings_fingerprint.xml"

    return-object v0
.end method

.method protected getBiometricsTag()Ljava/lang/String;
    .registers 2

    .line 61
    const-string v0, "fingerprints"

    return-object v0
.end method

.method protected getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 88
    new-instance v9, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    .line 89
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 88
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 91
    :cond_2e
    return-object v0
.end method

.method protected getNameTemplateResource()I
    .registers 2

    .line 71
    const v0, 0x10402a0

    return v0
.end method

.method protected parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
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

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 146
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_58

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_58

    .line 148
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 149
    goto :goto_4

    .line 152
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 154
    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    const-string v2, "groupId"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    const-string v3, "fingerId"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v5, "deviceId"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    iget-object v9, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->mBiometrics:Ljava/util/ArrayList;

    new-instance v10, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 158
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_57
    goto :goto_4

    .line 162
    :cond_58
    return-void
.end method
