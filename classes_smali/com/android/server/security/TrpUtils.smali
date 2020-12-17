.class public Lcom/android/server/security/TrpUtils;
.super Ljava/lang/Object;
.source "TrpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/TrpUtils$RxThreadFactory;
    }
.end annotation


# static fields
.field private static final KEY_P:Ljava/lang/String; = "VpKpSkw3Ng0xLYjc"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNullString(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"  # Ljava/lang/String;

    .line 61
    if-eqz p0, :cond_d

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    .line 63
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public static read4File(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "filePath"  # Ljava/lang/String;
    .param p1, "fileName"  # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "nameList":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 122
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 123
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/SealedObject;

    .line 125
    .local v2, "so":Ljavax/crypto/SealedObject;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "VpKpSkw3Ng0xLYjc"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "AES/CBC/PKCS5PADDING"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 126
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 127
    .local v4, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 129
    invoke-virtual {v2, v4}, Ljavax/crypto/SealedObject;->getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;

    move-result-object v5
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_44} :catch_83
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_44} :catch_83
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_44} :catch_79
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_44} :catch_6f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_44} :catch_65
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_44} :catch_5b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_44} :catch_51
    .catchall {:try_start_2 .. :try_end_44} :catchall_4f

    move-object v0, v5

    .line 143
    .end local v2  # "so":Ljavax/crypto/SealedObject;
    .end local v3  # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4  # "cipher":Ljavax/crypto/Cipher;
    nop

    .line 145
    :try_start_46
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 148
    :goto_49
    goto :goto_a3

    .line 146
    :catch_4a
    move-exception v2

    .line 147
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2  # "e":Ljava/io/IOException;
    goto :goto_49

    .line 143
    :catchall_4f
    move-exception v2

    goto :goto_a4

    .line 140
    :catch_51
    move-exception v2

    .line 141
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    :try_start_52
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4f

    .line 143
    .end local v2  # "e":Ljavax/crypto/IllegalBlockSizeException;
    if-eqz v1, :cond_a3

    .line 145
    :try_start_57
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_4a

    goto :goto_49

    .line 138
    :catch_5b
    move-exception v2

    .line 139
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    :try_start_5c
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_4f

    .line 143
    .end local v2  # "e":Ljavax/crypto/BadPaddingException;
    if-eqz v1, :cond_a3

    .line 145
    :try_start_61
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_4a

    goto :goto_49

    .line 136
    :catch_65
    move-exception v2

    .line 137
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    :try_start_66
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_4f

    .line 143
    .end local v2  # "e":Ljavax/crypto/NoSuchPaddingException;
    if-eqz v1, :cond_a3

    .line 145
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_4a

    goto :goto_49

    .line 134
    :catch_6f
    move-exception v2

    .line 135
    .local v2, "e":Ljava/security/InvalidKeyException;
    :try_start_70
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_4f

    .line 143
    .end local v2  # "e":Ljava/security/InvalidKeyException;
    if-eqz v1, :cond_a3

    .line 145
    :try_start_75
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_4a

    goto :goto_49

    .line 132
    :catch_79
    move-exception v2

    .line 133
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_7a
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_4f

    .line 143
    .end local v2  # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz v1, :cond_a3

    .line 145
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_4a

    goto :goto_49

    .line 130
    :catch_83
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    :try_start_84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read read4File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Try to get default trigger config."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmeizu/security/TrpLog;->e(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_84 .. :try_end_9d} :catchall_4f

    .line 143
    .end local v2  # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_a3

    .line 145
    :try_start_9f
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_4a

    goto :goto_49

    .line 152
    :cond_a3
    :goto_a3
    return-object v0

    .line 143
    :goto_a4
    if-eqz v1, :cond_ae

    .line 145
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 148
    goto :goto_ae

    .line 146
    :catch_aa
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    .end local v3  # "e":Ljava/io/IOException;
    :cond_ae
    :goto_ae
    throw v2
.end method

.method public static save2File(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 8
    .param p0, "filePath"  # Ljava/lang/String;
    .param p1, "fileName"  # Ljava/lang/String;
    .param p2, "nameList"  # Ljava/io/Serializable;

    .line 74
    if-nez p2, :cond_3

    .line 75
    return-void

    .line 77
    :cond_3
    const/4 v0, 0x0

    .line 79
    .local v0, "oos":Ljava/io/ObjectOutputStream;
    :try_start_4
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 81
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "VpKpSkw3Ng0xLYjc"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES/CBC/PKCS5PADDING"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 82
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 83
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 85
    new-instance v3, Ljavax/crypto/SealedObject;

    invoke-direct {v3, p2, v2}, Ljavax/crypto/SealedObject;-><init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V

    .line 87
    .local v3, "so":Ljavax/crypto/SealedObject;
    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_47} :catch_7b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_47} :catch_71
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_47} :catch_67
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_47} :catch_5d
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_47} :catch_53
    .catchall {:try_start_4 .. :try_end_47} :catchall_51

    .line 100
    .end local v1  # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2  # "cipher":Ljavax/crypto/Cipher;
    .end local v3  # "so":Ljavax/crypto/SealedObject;
    nop

    .line 102
    :try_start_48
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 105
    :goto_4b
    goto :goto_96

    .line 103
    :catch_4c
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1  # "e":Ljava/io/IOException;
    goto :goto_4b

    .line 100
    :catchall_51
    move-exception v1

    goto :goto_97

    .line 97
    :catch_53
    move-exception v1

    .line 98
    .local v1, "e":Ljava/security/InvalidKeyException;
    :try_start_54
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_51

    .line 100
    .end local v1  # "e":Ljava/security/InvalidKeyException;
    if-eqz v0, :cond_96

    .line 102
    :try_start_59
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_4c

    goto :goto_4b

    .line 95
    :catch_5d
    move-exception v1

    .line 96
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    :try_start_5e
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_51

    .line 100
    .end local v1  # "e":Ljavax/crypto/IllegalBlockSizeException;
    if-eqz v0, :cond_96

    .line 102
    :try_start_63
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_4c

    goto :goto_4b

    .line 93
    :catch_67
    move-exception v1

    .line 94
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_68
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_51

    .line 100
    .end local v1  # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz v0, :cond_96

    .line 102
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_4c

    goto :goto_4b

    .line 91
    :catch_71
    move-exception v1

    .line 92
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    :try_start_72
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_51

    .line 100
    .end local v1  # "e":Ljavax/crypto/NoSuchPaddingException;
    if-eqz v0, :cond_96

    .line 102
    :try_start_77
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_4c

    goto :goto_4b

    .line 89
    :catch_7b
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/IOException;
    :try_start_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save2File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmeizu/security/TrpLog;->e(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_7c .. :try_end_90} :catchall_51

    .line 100
    .end local v1  # "e":Ljava/io/IOException;
    if-eqz v0, :cond_96

    .line 102
    :try_start_92
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_4c

    goto :goto_4b

    .line 108
    :cond_96
    :goto_96
    return-void

    .line 100
    :goto_97
    if-eqz v0, :cond_a1

    .line 102
    :try_start_99
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 105
    goto :goto_a1

    .line 103
    :catch_9d
    move-exception v2

    .line 104
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    .end local v2  # "e":Ljava/io/IOException;
    :cond_a1
    :goto_a1
    throw v1
.end method

.method public static showMap(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p0, "tag"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_69

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->e(Ljava/lang/String;)V

    .line 158
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|Key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmeizu/security/TrpLog;->e(Ljava/lang/String;)V

    .line 162
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_32

    .line 164
    :cond_69
    return-void
.end method
