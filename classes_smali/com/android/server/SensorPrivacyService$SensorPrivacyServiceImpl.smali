.class Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
.super Landroid/hardware/ISensorPrivacyManager$Stub;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorPrivacyServiceImpl"
.end annotation


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/SensorPrivacyService;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService;Landroid/content/Context;)V
    .registers 5

    .line 82
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mContext:Landroid/content/Context;

    .line 84
    new-instance p2, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0, v1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;-><init>(Lcom/android/server/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    .line 85
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p2

    const-string/jumbo v0, "sensor_privacy.xml"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    new-instance p2, Landroid/util/AtomicFile;

    invoke-direct {p2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    .line 88
    iget-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 89
    :try_start_35
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->readPersistedSensorPrivacyEnabledLocked()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Z

    .line 90
    monitor-exit p1

    .line 91
    return-void

    .line 90
    :catchall_3d
    move-exception p2

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_3d

    throw p2
.end method

.method static synthetic access$100(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->persistSensorPrivacyState()V

    return-void
.end method

.method private enforceSensorPrivacyPermission()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_SENSOR_PRIVACY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 128
    return-void

    .line 130
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Changing sensor privacy requires the following permission: android.permission.MANAGE_SENSOR_PRIVACY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private persistSensorPrivacyState()V
    .registers 7

    .line 176
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    nop

    .line 179
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 180
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_45
    .catchall {:try_start_5 .. :try_end_10} :catchall_43

    .line 181
    :try_start_10
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 182
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 183
    const-string/jumbo v4, "sensor-privacy"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const-string v4, "enabled"

    iget-boolean v5, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string/jumbo v4, "sensor-privacy"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 187
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_40} :catch_41
    .catchall {:try_start_10 .. :try_end_40} :catchall_43

    .line 191
    goto :goto_54

    .line 188
    :catch_41
    move-exception v1

    goto :goto_48

    .line 192
    :catchall_43
    move-exception v1

    goto :goto_56

    .line 188
    :catch_45
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 189
    :goto_48
    :try_start_48
    const-string v2, "SensorPrivacyService"

    const-string v4, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 192
    :goto_54
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_43

    throw v1
.end method

.method private readPersistedSensorPrivacyEnabledLocked()Z
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 152
    return v1

    .line 155
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_10} :catch_4d

    .line 156
    :try_start_10
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 157
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v3, "sensor-privacy"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 159
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 160
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 161
    const/4 v3, 0x0

    const-string v4, "enabled"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_3f

    .line 162
    if-eqz v0, :cond_3d

    :try_start_3a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_3d} :catch_4d

    .line 168
    :cond_3d
    move v1, v2

    goto :goto_5b

    .line 155
    :catchall_3f
    move-exception v2

    :try_start_40
    throw v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 162
    :catchall_41
    move-exception v3

    if-eqz v0, :cond_4c

    :try_start_44
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v0

    :try_start_49
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    throw v3
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v0

    .line 163
    const-string v2, "SensorPrivacyService"

    const-string v3, "Caught an exception reading the state from storage: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 167
    nop

    .line 169
    :goto_5b
    return v1
.end method


# virtual methods
.method public addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 3

    .line 200
    if-eqz p1, :cond_8

    .line 203
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->addListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 204
    return-void

    .line 201
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSensorPrivacyEnabled()Z
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 142
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 3

    .line 211
    if-eqz p1, :cond_8

    .line 214
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->removeListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 215
    return-void

    .line 212
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSensorPrivacy(Z)V
    .registers 8

    .line 99
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceSensorPrivacyPermission()V

    .line 100
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mEnabled:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_5c

    .line 102
    nop

    .line 104
    const/4 v1, 0x0

    :try_start_a
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 105
    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_46
    .catchall {:try_start_a .. :try_end_15} :catchall_5c

    .line 106
    :try_start_15
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 107
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 108
    const-string/jumbo v4, "sensor-privacy"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string v4, "enabled"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string/jumbo v4, "sensor-privacy"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 112
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_43} :catch_44
    .catchall {:try_start_15 .. :try_end_43} :catchall_5c

    .line 116
    goto :goto_55

    .line 113
    :catch_44
    move-exception v1

    goto :goto_49

    :catch_46
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 114
    :goto_49
    :try_start_49
    const-string v2, "SensorPrivacyService"

    const-string v4, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 117
    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_5c

    .line 118
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->onSensorPrivacyChanged(Z)V

    .line 119
    return-void

    .line 117
    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1
.end method
