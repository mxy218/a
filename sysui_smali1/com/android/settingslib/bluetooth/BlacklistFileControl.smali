.class public final Lcom/android/settingslib/bluetooth/BlacklistFileControl;
.super Ljava/lang/Object;
.source "BlacklistFileControl.java"


# static fields
.field public static final BLACKLIST_FILE_PATH:Ljava/lang/String;

.field private static mBlacklistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    sget-object v0, Lcom/android/settingslib/bluetooth/XmlReader;->XML_FILE_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->BLACKLIST_FILE_PATH:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->mBlacklistMap:Ljava/util/HashMap;

    return-void
.end method

.method private static fileRead()Ljava/lang/Object;
    .registers 5

    .line 65
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->BLACKLIST_FILE_PATH:Ljava/lang/String;

    const-string v2, "meizuAuth_blacklist.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "BlacklistFileControl"

    if-nez v1, :cond_18

    const-string v0, "fileRead fail, fie not exit!"

    .line 67
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 71
    :cond_18
    :try_start_18
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_33} :catch_34

    return-object v0

    :catch_34
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static declared-synchronized getBlacklistState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5

    const-class v0, Lcom/android/settingslib/bluetooth/BlacklistFileControl;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    .line 100
    sget-object v1, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->mBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_44

    sget-object v1, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->mBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_44

    :cond_18
    const-string v1, "BlacklistFileControl"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBlacklistState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->mBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v1, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->mBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_47

    if-eqz p0, :cond_41

    const/4 p0, 0x1

    .line 107
    monitor-exit v0

    return p0

    :cond_41
    const/4 p0, 0x0

    .line 109
    monitor-exit v0

    return p0

    :cond_44
    :goto_44
    const/4 p0, -0x1

    .line 101
    monitor-exit v0

    return p0

    :catchall_47
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initBlacklistFromFile()V
    .registers 4

    const-class v0, Lcom/android/settingslib/bluetooth/BlacklistFileControl;

    monitor-enter v0

    .line 40
    :try_start_3
    invoke-static {}, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->fileRead()Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_29

    if-nez v1, :cond_b

    .line 42
    monitor-exit v0

    return-void

    .line 44
    :cond_b
    :try_start_b
    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->mBlacklistMap:Ljava/util/HashMap;

    const-string v1, "BlacklistFileControl"

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initBlacklistFromFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->mBlacklistMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_29

    .line 46
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method
