.class public Lcom/android/server/locksettings/PasswordSlotManager;
.super Ljava/lang/Object;
.source "PasswordSlotManager.java"


# static fields
.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final SLOT_MAP_DIR:Ljava/lang/String; = "/metadata/password_slots"

.field private static final TAG:Ljava/lang/String; = "PasswordSlotManager"


# instance fields
.field private mActiveSlots:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 173
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private ensureSlotMapLoaded()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 182
    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->loadSlotMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    .line 183
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mActiveSlots:Ljava/util/Set;

    if-eqz v0, :cond_14

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mActiveSlots:Ljava/util/Set;

    .line 188
    :cond_14
    return-void
.end method

.method private getMode()Ljava/lang/String;
    .registers 4

    .line 147
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getGsiImageNumber()I

    move-result v0

    .line 148
    .local v0, "gsiIndex":I
    if-lez v0, :cond_18

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 151
    :cond_18
    const-string v1, "host"

    return-object v1
.end method

.method private getSlotMapFile()Ljava/io/File;
    .registers 3

    .line 143
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapDir()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slot_map"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private loadSlotMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapFile()Ljava/io/File;

    move-result-object v0

    .line 170
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 171
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_1f

    .local v1, "stream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 172
    :try_start_10
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->loadSlotMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 173
    :try_start_14
    invoke-static {v2, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_1f

    .line 172
    return-object v3

    .line 171
    :catchall_18
    move-exception v2

    .end local v0  # "file":Ljava/io/File;
    .end local v1  # "stream":Ljava/io/FileInputStream;
    .end local p0  # "this":Lcom/android/server/locksettings/PasswordSlotManager;
    :try_start_19
    throw v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    .line 173
    .restart local v0  # "file":Ljava/io/File;
    .restart local v1  # "stream":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/locksettings/PasswordSlotManager;
    :catchall_1a
    move-exception v3

    :try_start_1b
    invoke-static {v2, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "file":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/locksettings/PasswordSlotManager;
    throw v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_1f

    .end local v1  # "stream":Ljava/io/FileInputStream;
    .restart local v0  # "file":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/locksettings/PasswordSlotManager;
    :catch_1f
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PasswordSlotManager"

    const-string v3, "Could not load slot map file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1
.end method

.method private saveSlotMap()V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 204
    return-void

    .line 206
    :cond_5
    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "PasswordSlotManager"

    if-nez v0, :cond_33

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not saving slot map, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 211
    :cond_33
    :try_start_33
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_4b

    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 212
    :try_start_3d
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->saveSlotMap(Ljava/io/OutputStream;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_44

    .line 213
    :try_start_40
    invoke-static {v2, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4b

    .line 215
    .end local v0  # "fos":Ljava/io/FileOutputStream;
    goto :goto_51

    .line 211
    .restart local v0  # "fos":Ljava/io/FileOutputStream;
    :catchall_44
    move-exception v2

    .end local v0  # "fos":Ljava/io/FileOutputStream;
    .end local p0  # "this":Lcom/android/server/locksettings/PasswordSlotManager;
    :try_start_45
    throw v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 213
    .restart local v0  # "fos":Ljava/io/FileOutputStream;
    .restart local p0  # "this":Lcom/android/server/locksettings/PasswordSlotManager;
    :catchall_46
    move-exception v3

    :try_start_47
    invoke-static {v2, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/locksettings/PasswordSlotManager;
    throw v3
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_4b

    .end local v0  # "fos":Ljava/io/FileOutputStream;
    .restart local p0  # "this":Lcom/android/server/locksettings/PasswordSlotManager;
    :catch_4b
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "failed to save password slot map"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .end local v0  # "e":Ljava/io/IOException;
    :goto_51
    return-void
.end method


# virtual methods
.method protected getGsiImageNumber()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 70
    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getSlotMapDir()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 65
    const-string v0, "/metadata/password_slots"

    return-object v0
.end method

.method public getUsedSlots()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->ensureSlotMapLoaded()V

    .line 139
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected loadSlotMap(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 9
    .param p1, "stream"  # Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 158
    .local v1, "props":Ljava/util/Properties;
    invoke-virtual {v1, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 159
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, "slotString":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 161
    .local v4, "slot":I
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "owner":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v3  # "slotString":Ljava/lang/String;
    .end local v4  # "slot":I
    .end local v5  # "owner":Ljava/lang/String;
    goto :goto_15

    .line 164
    :cond_31
    return-object v0
.end method

.method public markSlotDeleted(I)V
    .registers 5
    .param p1, "slot"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->ensureSlotMapLoaded()V

    .line 125
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_43

    .line 126
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "password slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cannot be deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->saveSlotMap()V

    .line 130
    return-void
.end method

.method public markSlotInUse(I)V
    .registers 5
    .param p1, "slot"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->ensureSlotMapLoaded()V

    .line 111
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_43

    .line 112
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "password slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->saveSlotMap()V

    .line 116
    return-void
.end method

.method public refreshActiveSlots(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 79
    .local p1, "activeSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mActiveSlots:Ljava/util/Set;

    .line 81
    return-void

    .line 85
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 86
    .local v0, "slotsToDelete":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 88
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_40
    goto :goto_1b

    .line 92
    :cond_41
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 93
    .local v2, "slot":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v2  # "slot":Ljava/lang/Integer;
    goto :goto_45

    .line 97
    :cond_57
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 98
    .restart local v2  # "slot":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v2  # "slot":Ljava/lang/Integer;
    goto :goto_5b

    .line 101
    :cond_71
    invoke-direct {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->saveSlotMap()V

    .line 102
    return-void
.end method

.method protected saveSlotMap(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "stream"  # Ljava/io/OutputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 193
    return-void

    .line 195
    :cond_5
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 196
    .local v0, "props":Ljava/util/Properties;
    iget-object v1, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 197
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_14

    .line 199
    :cond_34
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 200
    return-void
.end method
