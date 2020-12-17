.class Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbKeyStore"
.end annotation


# static fields
.field public static final NO_PREVIOUS_CONNECTION:J = 0x0L

.field private static final SYSTEM_KEY_FILE:Ljava/lang/String; = "/adb_keys"

.field private static final XML_ATTRIBUTE_KEY:Ljava/lang/String; = "key"

.field private static final XML_ATTRIBUTE_LAST_CONNECTION:Ljava/lang/String; = "lastConnection"

.field private static final XML_TAG_ADB_KEY:Ljava/lang/String; = "adbKey"


# instance fields
.field private mAtomicKeyFile:Landroid/util/AtomicFile;

.field private mKeyFile:Ljava/io/File;

.field private mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 872
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

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 828
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->init()V

    .line 830
    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/io/File;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/adb/AdbDebuggingManager;
    .param p2, "keyFile"  # Ljava/io/File;

    .line 835
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    .line 837
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->init()V

    .line 838
    return-void
.end method

.method private addUserKeysToKeyStore()V
    .registers 10

    .line 950
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 951
    .local v0, "userKeyFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 952
    .local v1, "mapUpdated":Z
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 953
    :try_start_f
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_43

    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 954
    :try_start_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 956
    .local v4, "time":J
    :cond_1e
    :goto_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "key":Ljava/lang/String;
    if-eqz v6, :cond_38

    .line 960
    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 961
    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_3c

    .line 962
    const/4 v1, 0x1

    goto :goto_1e

    .line 965
    .end local v4  # "time":J
    .end local v7  # "key":Ljava/lang/String;
    :cond_38
    :try_start_38
    invoke-static {v3, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_43

    .line 967
    .end local v2  # "in":Ljava/io/BufferedReader;
    goto :goto_62

    .line 953
    .restart local v2  # "in":Ljava/io/BufferedReader;
    :catchall_3c
    move-exception v3

    .end local v0  # "userKeyFile":Ljava/io/File;
    .end local v1  # "mapUpdated":Z
    .end local v2  # "in":Ljava/io/BufferedReader;
    .end local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :try_start_3d
    throw v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 965
    .restart local v0  # "userKeyFile":Ljava/io/File;
    .restart local v1  # "mapUpdated":Z
    .restart local v2  # "in":Ljava/io/BufferedReader;
    .restart local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catchall_3e
    move-exception v4

    :try_start_3f
    invoke-static {v3, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "userKeyFile":Ljava/io/File;
    .end local v1  # "mapUpdated":Z
    .end local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    throw v4
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_43

    .end local v2  # "in":Ljava/io/BufferedReader;
    .restart local v0  # "userKeyFile":Ljava/io/File;
    .restart local v1  # "mapUpdated":Z
    .restart local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catch_43
    move-exception v2

    .line 966
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught an exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdbDebuggingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .end local v2  # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    if-eqz v1, :cond_69

    .line 970
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 972
    :cond_69
    return-void
.end method

.method private filterOutOldKeys()Z
    .registers 12

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "keysDeleted":Z
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v1

    .line 1018
    .local v1, "allowedTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1019
    .local v3, "systemTime":J
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1020
    .local v5, "keyMapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1021
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1022
    .local v6, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1023
    .local v7, "connectionTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-eqz v9, :cond_39

    add-long v9, v7, v1

    cmp-long v9, v3, v9

    if-lez v9, :cond_39

    .line 1024
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1025
    const/4 v0, 0x1

    .line 1027
    .end local v6  # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7  # "connectionTime":J
    :cond_39
    goto :goto_13

    .line 1030
    :cond_3a
    if-eqz v0, :cond_47

    .line 1031
    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v7, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/adb/AdbDebuggingManager;->access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V

    .line 1033
    :cond_47
    return v0
.end method

.method private getKeyMap()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 900
    const-string v0, "adbKey"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 903
    .local v1, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    const-string v3, "AdbDebuggingManager"

    if-nez v2, :cond_30

    .line 904
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 905
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v2, :cond_30

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain the key file, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", for reading"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-object v1

    .line 910
    :cond_30
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_39

    .line 911
    return-object v1

    .line 913
    :cond_39
    :try_start_39
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3f} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_3f} :catch_b0

    .line 914
    .local v2, "keyStream":Ljava/io/FileInputStream;
    :try_start_3f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 915
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 916
    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 917
    :goto_4f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_a1

    .line 918
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 919
    .local v5, "tagName":Ljava/lang/String;
    if-nez v5, :cond_5e

    .line 920
    goto :goto_a1

    .line 921
    :cond_5e
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 922
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 923
    goto :goto_4f

    .line 925
    :cond_68
    const-string/jumbo v6, "key"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_6f
    .catchall {:try_start_3f .. :try_end_6f} :catchall_a7

    .line 928
    .local v6, "key":Ljava/lang/String;
    :try_start_6f
    const-string/jumbo v8, "lastConnection"

    .line 929
    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 928
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_7e} :catch_88
    .catchall {:try_start_6f .. :try_end_7e} :catchall_a7

    .line 936
    .local v7, "connectionTime":J
    nop

    .line 937
    :try_start_7f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v1, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    nop

    .end local v5  # "tagName":Ljava/lang/String;
    .end local v6  # "key":Ljava/lang/String;
    .end local v7  # "connectionTime":J
    goto :goto_4f

    .line 930
    .restart local v5  # "tagName":Ljava/lang/String;
    .restart local v6  # "key":Ljava/lang/String;
    :catch_88
    move-exception v7

    .line 931
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caught a NumberFormatException parsing the last connection time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a0
    .catchall {:try_start_7f .. :try_end_a0} :catchall_a7

    .line 935
    goto :goto_4f

    .line 939
    .end local v4  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5  # "tagName":Ljava/lang/String;
    .end local v6  # "key":Ljava/lang/String;
    .end local v7  # "e":Ljava/lang/NumberFormatException;
    :cond_a1
    :goto_a1
    if-eqz v2, :cond_a6

    :try_start_a3
    invoke-static {v7, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a3 .. :try_end_a6} :catch_b0

    .line 941
    .end local v2  # "keyStream":Ljava/io/FileInputStream;
    :cond_a6
    goto :goto_b6

    .line 913
    .restart local v2  # "keyStream":Ljava/io/FileInputStream;
    :catchall_a7
    move-exception v0

    .end local v1  # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2  # "keyStream":Ljava/io/FileInputStream;
    .end local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :try_start_a8
    throw v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    .line 939
    .restart local v1  # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v2  # "keyStream":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catchall_a9
    move-exception v4

    if-eqz v2, :cond_af

    :try_start_ac
    invoke-static {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1  # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :cond_af
    throw v4
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ac .. :try_end_b0} :catch_b0

    .end local v2  # "keyStream":Ljava/io/FileInputStream;
    .restart local v1  # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catch_b0
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Caught an exception parsing the XML key file: "

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_b6
    return-object v1
.end method

.method private getSystemKeysFromFile(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p1, "fileName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 861
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 862
    .local v0, "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 863
    .local v1, "systemKeyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 864
    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_3b

    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 866
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "key":Ljava/lang/String;
    if-eqz v4, :cond_30

    .line 867
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 868
    .end local v5  # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1b

    .line 869
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_34

    goto :goto_1b

    .line 872
    .end local v4  # "key":Ljava/lang/String;
    :cond_30
    :try_start_30
    invoke-static {v3, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3b

    .line 874
    .end local v2  # "in":Ljava/io/BufferedReader;
    goto :goto_5a

    .line 864
    .restart local v2  # "in":Ljava/io/BufferedReader;
    :catchall_34
    move-exception v3

    .end local v0  # "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1  # "systemKeyFile":Ljava/io/File;
    .end local v2  # "in":Ljava/io/BufferedReader;
    .end local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    .end local p1  # "fileName":Ljava/lang/String;
    :try_start_35
    throw v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 872
    .restart local v0  # "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1  # "systemKeyFile":Ljava/io/File;
    .restart local v2  # "in":Ljava/io/BufferedReader;
    .restart local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    .restart local p1  # "fileName":Ljava/lang/String;
    :catchall_36
    move-exception v4

    :try_start_37
    invoke-static {v3, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1  # "systemKeyFile":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    .end local p1  # "fileName":Ljava/lang/String;
    throw v4
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_3b

    .end local v2  # "in":Ljava/io/BufferedReader;
    .restart local v0  # "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1  # "systemKeyFile":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    .restart local p1  # "fileName":Ljava/lang/String;
    :catch_3b
    move-exception v2

    .line 873
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught an exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdbDebuggingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v2  # "e":Ljava/io/IOException;
    :cond_5a
    :goto_5a
    return-object v0
.end method

.method private init()V
    .registers 2

    .line 841
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 842
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getKeyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 843
    const-string v0, "/adb_keys"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getSystemKeysFromFile(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    .line 844
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->addUserKeysToKeyStore()V

    .line 845
    return-void
.end method

.method private initKeyFile()V
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    if-nez v0, :cond_c

    .line 852
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    .line 855
    :cond_c
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    if-eqz v0, :cond_17

    .line 856
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 858
    :cond_17
    return-void
.end method


# virtual methods
.method public deleteKeyStore()V
    .registers 2

    .line 1066
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1067
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1000(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1068
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_f

    .line 1069
    return-void

    .line 1071
    :cond_f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 1072
    return-void
.end method

.method public getAllowedConnectionTime()J
    .registers 5

    .line 1118
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$800(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_allowed_connection_time"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastConnectionTime(Ljava/lang/String;)J
    .registers 5
    .param p1, "key"  # Ljava/lang/String;

    .line 1079
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextExpirationTime()J
    .registers 18

    .line 1041
    const-wide/16 v0, -0x1

    .line 1042
    .local v0, "minExpiration":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v2

    .line 1044
    .local v2, "allowedTime":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_d

    .line 1045
    return-wide v0

    .line 1047
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1048
    .local v6, "systemTime":J
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1049
    .local v9, "keyMapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_46

    .line 1050
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1051
    .local v10, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1054
    .local v11, "connectionTime":J
    add-long v13, v11, v2

    sub-long/2addr v13, v6

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 1055
    .local v13, "keyExpiration":J
    const-wide/16 v15, -0x1

    cmp-long v15, v0, v15

    if-eqz v15, :cond_44

    cmp-long v15, v13, v0

    if-gez v15, :cond_45

    .line 1056
    :cond_44
    move-wide v0, v13

    .line 1058
    .end local v10  # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11  # "connectionTime":J
    .end local v13  # "keyExpiration":J
    :cond_45
    goto :goto_1d

    .line 1059
    :cond_46
    return-wide v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 883
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isKeyAuthorized(Ljava/lang/String;)Z
    .registers 13
    .param p1, "key"  # Ljava/lang/String;

    .line 1131
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1132
    return v1

    .line 1134
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getLastConnectionTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 1135
    .local v2, "lastConnectionTime":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-nez v0, :cond_16

    .line 1136
    return v6

    .line 1138
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v7

    .line 1141
    .local v7, "allowedConnectionTime":J
    cmp-long v0, v7, v4

    if-eqz v0, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v9, v2, v7

    cmp-long v0, v4, v9

    if-gez v0, :cond_29

    goto :goto_2a

    .line 1145
    :cond_29
    return v6

    .line 1143
    :cond_2a
    :goto_2a
    return v1
.end method

.method public persistKeyStore()V
    .registers 10

    .line 980
    const-string v0, "adbKey"

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    .line 981
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 982
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->deleteKeyStore()V

    .line 983
    return-void

    .line 985
    :cond_11
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    const-string v2, "AdbDebuggingManager"

    if-nez v1, :cond_3a

    .line 986
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 987
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v1, :cond_3a

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to obtain the key file, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", for writing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void

    .line 992
    :cond_3a
    const/4 v1, 0x0

    .line 994
    .local v1, "keyStream":Ljava/io/FileOutputStream;
    :try_start_3b
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 995
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v1, v4

    .line 996
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 997
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 999
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1000
    .local v6, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1001
    const-string/jumbo v7, "key"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1002
    const-string/jumbo v7, "lastConnection"

    .line 1003
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1002
    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1004
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1005
    nop

    .end local v6  # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_63

    .line 1007
    :cond_91
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1008
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_99} :catch_9a

    .line 1012
    .end local v3  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_a5

    .line 1009
    :catch_9a
    move-exception v0

    .line 1010
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Caught an exception writing the key map: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1013
    .end local v0  # "e":Ljava/io/IOException;
    :goto_a5
    return-void
.end method

.method public setLastConnectionTime(Ljava/lang/String;J)V
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "connectionTime"  # J

    .line 1086
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 1087
    return-void
.end method

.method public setLastConnectionTime(Ljava/lang/String;JZ)V
    .registers 7
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "connectionTime"  # J
    .param p4, "force"  # Z

    .line 1097
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_1b

    if-nez p4, :cond_1b

    .line 1098
    return-void

    .line 1102
    :cond_1b
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1103
    return-void

    .line 1107
    :cond_24
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$1100(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V

    .line 1110
    :cond_31
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    return-void
.end method

.method public updateKeyStore()V
    .registers 2

    .line 891
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 892
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 894
    :cond_b
    return-void
.end method
