.class public Lcom/android/server/MzVpnKeyStore;
.super Ljava/lang/Object;
.source "MzVpnKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MzVpnKeyStore$HashMapForRTI;,
        Lcom/android/server/MzVpnKeyStore$Element;
    }
.end annotation


# static fields
.field private static final KEY_STORE_PATH:Ljava/lang/String; = "/data/system/vpn_keystore"

.field private static final TAG:Ljava/lang/String; = "MzVpnKeyStore"

.field private static final VPN_DEFAULT_KEY:Ljava/lang/String; = "vpn_default_key"

.field private static sMe:Lcom/android/server/MzVpnKeyStore;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStorePath:Ljava/lang/String;

.field private mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/MzVpnKeyStore$HashMapForRTI<",
            "Ljava/lang/String;",
            "Lcom/android/server/MzVpnKeyStore$Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/MzVpnKeyStore;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->getStorePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MzVpnKeyStore;->mStorePath:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "construct mStorePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mStorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->loadVpnMap()V

    .line 63
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/MzVpnKeyStore;
    .registers 2
    .param p0, "context"  # Landroid/content/Context;

    .line 45
    sget-object v0, Lcom/android/server/MzVpnKeyStore;->sMe:Lcom/android/server/MzVpnKeyStore;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/android/server/MzVpnKeyStore;

    invoke-direct {v0, p0}, Lcom/android/server/MzVpnKeyStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/MzVpnKeyStore;->sMe:Lcom/android/server/MzVpnKeyStore;

    .line 48
    :cond_b
    sget-object v0, Lcom/android/server/MzVpnKeyStore;->sMe:Lcom/android/server/MzVpnKeyStore;

    return-object v0
.end method

.method private getStorePath()Ljava/lang/String;
    .registers 2

    .line 66
    const-string v0, "/data/system/vpn_keystore"

    return-object v0
.end method

.method private loadVpnMap()V
    .registers 12

    .line 71
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mStorePath:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    .line 72
    .local v1, "fis":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v2, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 75
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    if-eqz v4, :cond_29

    .line 76
    const-string/jumbo v4, "new version storage file"

    invoke-static {v4}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 77
    move-object v4, v3

    check-cast v4, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    iput-object v4, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    goto :goto_71

    .line 78
    :cond_29
    instance-of v4, v3, Ljava/util/HashMap;

    if-eqz v4, :cond_6c

    .line 79
    const-string/jumbo v4, "old version storage file, we need covert it to new version"

    invoke-static {v4}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 80
    new-instance v4, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-direct {v4, v0}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;-><init>(Lcom/android/server/MzVpnKeyStore$1;)V

    iput-object v4, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    .line 81
    move-object v4, v3

    check-cast v4, Ljava/util/HashMap;

    .line 82
    .local v4, "oldVersionVpnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 83
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 84
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    new-instance v8, Lcom/android/server/MzVpnKeyStore$Element;

    invoke-direct {v8, v0}, Lcom/android/server/MzVpnKeyStore$Element;-><init>(Lcom/android/server/MzVpnKeyStore$1;)V

    .line 85
    .local v8, "element":Lcom/android/server/MzVpnKeyStore$Element;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    iput-object v9, v8, Lcom/android/server/MzVpnKeyStore$Element;->data:[B

    .line 86
    iget-object v9, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    nop

    .end local v7  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v8  # "element":Lcom/android/server/MzVpnKeyStore$Element;
    goto :goto_45

    .line 89
    .end local v4  # "oldVersionVpnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .end local v5  # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :cond_6b
    goto :goto_71

    .line 90
    :cond_6c
    const-string v4, "bad storage file"

    invoke-static {v4}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 93
    :goto_71
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_74} :catch_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_74} :catch_75

    .end local v1  # "fis":Ljava/io/InputStream;
    .end local v2  # "ois":Ljava/io/ObjectInputStream;
    .end local v3  # "obj":Ljava/lang/Object;
    goto :goto_a8

    .line 96
    :catch_75
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassNotFoundException\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    goto :goto_a9

    .line 94
    .end local v1  # "e":Ljava/lang/ClassNotFoundException;
    :catch_8f
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 98
    .end local v1  # "e":Ljava/io/IOException;
    :goto_a8
    nop

    .line 100
    :goto_a9
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    if-nez v1, :cond_ba

    .line 101
    const-string/jumbo v1, "loadVpnMap()...: mVpnMap is null"

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-direct {v1, v0}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;-><init>(Lcom/android/server/MzVpnKeyStore$1;)V

    iput-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    .line 105
    :cond_ba
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"  # Ljava/lang/String;

    .line 226
    const-string v0, "MzVpnKeyStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private saveVpnMap()V
    .registers 4

    .line 108
    const-string/jumbo v0, "saveVpnMap()..."

    invoke-static {v0}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 110
    :try_start_6
    iget-object v0, p0, Lcom/android/server/MzVpnKeyStore;->mStorePath:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 111
    .local v0, "fos":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    iget-object v2, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 114
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_25} :catch_40
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_25} :catch_26

    .end local v0  # "fos":Ljava/io/OutputStream;
    .end local v1  # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_59

    .line 117
    :catch_26
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    goto :goto_5a

    .line 115
    .end local v0  # "e":Ljava/io/IOException;
    :catch_40
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileNotFoundException\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 119
    .end local v0  # "e":Ljava/io/FileNotFoundException;
    :goto_59
    nop

    .line 120
    :goto_5a
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"  # Ljava/lang/String;

    .line 170
    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v0, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_23

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/MzVpnKeyStore;->log(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->saveVpnMap()V

    .line 175
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 177
    .end local v0  # "o":Ljava/lang/Object;
    :cond_23
    monitor-exit p0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 177
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public get(Ljava/lang/String;Z)[B
    .registers 7
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "passwordIncluded"  # Z

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "result":[B
    monitor-enter p0

    .line 154
    :try_start_2
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MzVpnKeyStore$Element;

    .line 155
    .local v1, "element":Lcom/android/server/MzVpnKeyStore$Element;
    if-eqz v1, :cond_f

    iget-object v2, v1, Lcom/android/server/MzVpnKeyStore$Element;->data:[B

    move-object v0, v2

    .line 157
    :cond_f
    if-nez p2, :cond_22

    .line 158
    invoke-static {p1, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 159
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    if-nez v2, :cond_19

    .line 160
    monitor-exit p0

    return-object v0

    .line 162
    :cond_19
    const-string v3, ""

    iput-object v3, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 163
    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v3

    move-object v0, v3

    .line 165
    .end local v1  # "element":Lcom/android/server/MzVpnKeyStore$Element;
    .end local v2  # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_22
    monitor-exit p0

    .line 166
    return-object v0

    .line 165
    :catchall_24
    move-exception v1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getAllKeys()[Ljava/lang/String;
    .registers 8

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "result":[Ljava/lang/String;
    monitor-enter p0

    .line 125
    :try_start_2
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 126
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    .line 127
    .local v2, "size":I
    if-nez v2, :cond_11

    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 128
    :cond_11
    new-array v3, v2, [Ljava/lang/String;

    move-object v0, v3

    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 131
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    .end local v3  # "i":I
    .local v6, "i":I
    aput-object v5, v0, v3

    .line 132
    .end local v5  # "key":Ljava/lang/String;
    move v3, v6

    goto :goto_19

    .line 133
    .end local v1  # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2  # "size":I
    .end local v6  # "i":I
    :cond_2b
    monitor-exit p0

    .line 134
    return-object v0

    .line 133
    :catchall_2d
    move-exception v1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public getDefaultKey()Ljava/lang/String;
    .registers 8

    .line 206
    iget-object v0, p0, Lcom/android/server/MzVpnKeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vpn_default_key"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "defaultKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    return-object v2

    .line 209
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/MzVpnKeyStore;->getAllKeys()[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "keys":[Ljava/lang/String;
    if-eqz v1, :cond_2e

    array-length v3, v1

    if-lez v3, :cond_2e

    .line 211
    array-length v3, v1

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_2e

    aget-object v5, v1, v4

    .line 212
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    return-object v0

    .line 211
    .end local v5  # "key":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 215
    :cond_2e
    return-object v2
.end method

.method public getVersion(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"  # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "result":I
    monitor-enter p0

    .line 184
    :try_start_2
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MzVpnKeyStore$Element;

    .line 185
    .local v1, "element":Lcom/android/server/MzVpnKeyStore$Element;
    if-eqz v1, :cond_f

    iget v2, v1, Lcom/android/server/MzVpnKeyStore$Element;->version:I

    move v0, v2

    .line 186
    .end local v1  # "element":Lcom/android/server/MzVpnKeyStore$Element;
    :cond_f
    monitor-exit p0

    .line 187
    return v0

    .line 186
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # [B

    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v0, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MzVpnKeyStore$Element;

    .line 140
    .local v0, "element":Lcom/android/server/MzVpnKeyStore$Element;
    if-nez v0, :cond_13

    .line 141
    new-instance v1, Lcom/android/server/MzVpnKeyStore$Element;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/MzVpnKeyStore$Element;-><init>(Lcom/android/server/MzVpnKeyStore$1;)V

    move-object v0, v1

    goto :goto_19

    .line 143
    :cond_13
    iget v1, v0, Lcom/android/server/MzVpnKeyStore$Element;->version:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/MzVpnKeyStore$Element;->version:I

    .line 145
    :goto_19
    iput-object p2, v0, Lcom/android/server/MzVpnKeyStore$Element;->data:[B

    .line 146
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->saveVpnMap()V

    .line 148
    .end local v0  # "element":Lcom/android/server/MzVpnKeyStore$Element;
    monitor-exit p0

    .line 149
    return-void

    .line 148
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public setDefaultKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"  # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/server/MzVpnKeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vpn_default_key"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    return-void
.end method

.method public setVersion(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "version"  # I

    .line 191
    const/4 v0, 0x0

    if-gtz p2, :cond_4

    return v0

    .line 192
    :cond_4
    monitor-enter p0

    .line 193
    :try_start_5
    iget-object v1, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v1, p1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MzVpnKeyStore$Element;

    .line 194
    .local v1, "element":Lcom/android/server/MzVpnKeyStore$Element;
    if-nez v1, :cond_11

    monitor-exit p0

    return v0

    .line 195
    :cond_11
    iput p2, v1, Lcom/android/server/MzVpnKeyStore$Element;->version:I

    .line 196
    iget-object v0, p0, Lcom/android/server/MzVpnKeyStore;->mVpnMap:Lcom/android/server/MzVpnKeyStore$HashMapForRTI;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore;->saveVpnMap()V

    .line 198
    .end local v1  # "element":Lcom/android/server/MzVpnKeyStore$Element;
    monitor-exit p0

    .line 199
    const/4 v0, 0x1

    return v0

    .line 198
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0
.end method
