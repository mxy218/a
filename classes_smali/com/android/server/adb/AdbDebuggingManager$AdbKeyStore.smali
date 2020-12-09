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
    .registers 2

    .line 871
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 2

    .line 827
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->init()V

    .line 829
    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/io/File;)V
    .registers 3

    .line 834
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    .line 836
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->init()V

    .line 837
    return-void
.end method

.method private addUserKeysToKeyStore()V
    .registers 10

    .line 949
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 950
    nop

    .line 951
    const/4 v1, 0x0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 952
    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_43

    const/4 v3, 0x0

    .line 953
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 955
    :cond_1f
    :goto_1f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 959
    iget-object v7, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 960
    iget-object v7, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_3c

    .line 961
    const/4 v1, 0x1

    goto :goto_1f

    .line 964
    :cond_38
    :try_start_38
    invoke-static {v3, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_43

    .line 966
    goto :goto_62

    .line 952
    :catchall_3c
    move-exception v3

    :try_start_3d
    throw v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 964
    :catchall_3e
    move-exception v4

    :try_start_3f
    invoke-static {v3, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_43

    :catch_43
    move-exception v2

    .line 965
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught an exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdbDebuggingManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_62
    :goto_62
    if-eqz v1, :cond_69

    .line 969
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 971
    :cond_69
    return-void
.end method

.method private filterOutOldKeys()Z
    .registers 11

    .line 1015
    nop

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v0

    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1018
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    .line 1019
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1020
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1021
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1022
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_39

    add-long/2addr v6, v0

    cmp-long v6, v2, v6

    if-lez v6, :cond_39

    .line 1023
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1024
    const/4 v5, 0x1

    .line 1026
    :cond_39
    goto :goto_14

    .line 1029
    :cond_3a
    if-eqz v5, :cond_47

    .line 1030
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V

    .line 1032
    :cond_47
    return v5
.end method

.method private getKeyMap()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 899
    const-string v0, "adbKey"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 902
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    const-string v3, "AdbDebuggingManager"

    if-nez v2, :cond_30

    .line 903
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 904
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v2, :cond_30

    .line 905
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

    .line 906
    return-object v1

    .line 909
    :cond_30
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_39

    .line 910
    return-object v1

    .line 912
    :cond_39
    :try_start_39
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3f} :catch_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_3f} :catch_ad

    .line 913
    :try_start_3f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 914
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 915
    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 916
    :goto_4f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_9e

    .line 917
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 918
    if-nez v5, :cond_5e

    .line 919
    goto :goto_9e

    .line 920
    :cond_5e
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 921
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 922
    goto :goto_4f

    .line 924
    :cond_68
    const-string v5, "key"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6e
    .catchall {:try_start_3f .. :try_end_6e} :catchall_a4

    .line 927
    :try_start_6e
    const-string v6, "lastConnection"

    .line 928
    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 927
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_7c} :catch_85
    .catchall {:try_start_6e .. :try_end_7c} :catchall_a4

    .line 935
    nop

    .line 936
    :try_start_7d
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    goto :goto_4f

    .line 929
    :catch_85
    move-exception v5

    .line 930
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught a NumberFormatException parsing the last connection time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9d
    .catchall {:try_start_7d .. :try_end_9d} :catchall_a4

    .line 934
    goto :goto_4f

    .line 938
    :cond_9e
    :goto_9e
    if-eqz v2, :cond_a3

    :try_start_a0
    invoke-static {v7, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_a3} :catch_ad

    .line 940
    :cond_a3
    goto :goto_b3

    .line 912
    :catchall_a4
    move-exception v0

    :try_start_a5
    throw v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a6

    .line 938
    :catchall_a6
    move-exception v4

    if-eqz v2, :cond_ac

    :try_start_a9
    invoke-static {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_ac
    throw v4
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_ad} :catch_ad

    :catch_ad
    move-exception v0

    .line 939
    const-string v2, "Caught an exception parsing the XML key file: "

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 941
    :goto_b3
    return-object v1
.end method

.method private getSystemKeysFromFile(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
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

    .line 860
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 861
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 863
    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_3a

    const/4 v1, 0x0

    .line 865
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 866
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1b

    .line 868
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_33

    goto :goto_1b

    .line 871
    :cond_2f
    :try_start_2f
    invoke-static {v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3a

    .line 873
    goto :goto_59

    .line 863
    :catchall_33
    move-exception v1

    :try_start_34
    throw v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 871
    :catchall_35
    move-exception v3

    :try_start_36
    invoke-static {v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception v1

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught an exception reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdbDebuggingManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_59
    :goto_59
    return-object v0
.end method

.method private init()V
    .registers 2

    .line 840
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 841
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getKeyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 842
    const-string v0, "/adb_keys"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getSystemKeysFromFile(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    .line 843
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->addUserKeysToKeyStore()V

    .line 844
    return-void
.end method

.method private initKeyFile()V
    .registers 3

    .line 850
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    if-nez v0, :cond_c

    .line 851
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    .line 854
    :cond_c
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    if-eqz v0, :cond_17

    .line 855
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 857
    :cond_17
    return-void
.end method


# virtual methods
.method public deleteKeyStore()V
    .registers 2

    .line 1065
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1066
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1000(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1067
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_f

    .line 1068
    return-void

    .line 1070
    :cond_f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 1071
    return-void
.end method

.method public getAllowedConnectionTime()J
    .registers 5

    .line 1117
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

    .line 1078
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextExpirationTime()J
    .registers 15

    .line 1040
    nop

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v0

    .line 1043
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, -0x1

    if-nez v4, :cond_e

    .line 1044
    return-wide v5

    .line 1046
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1047
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v9, v5

    .line 1048
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_43

    .line 1049
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1050
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1053
    add-long/2addr v11, v0

    sub-long/2addr v11, v7

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1054
    cmp-long v13, v9, v5

    if-eqz v13, :cond_41

    cmp-long v13, v11, v9

    if-gez v13, :cond_42

    .line 1055
    :cond_41
    move-wide v9, v11

    .line 1057
    :cond_42
    goto :goto_1d

    .line 1058
    :cond_43
    return-wide v9
.end method

.method public isEmpty()Z
    .registers 2

    .line 882
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isKeyAuthorized(Ljava/lang/String;)Z
    .registers 10

    .line 1130
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1131
    return v1

    .line 1133
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getLastConnectionTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 1134
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const/4 v0, 0x0

    if-nez p1, :cond_16

    .line 1135
    return v0

    .line 1137
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v6

    .line 1140
    cmp-long p1, v6, v4

    if-eqz p1, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v6

    cmp-long p1, v4, v2

    if-gez p1, :cond_28

    goto :goto_29

    .line 1144
    :cond_28
    return v0

    .line 1142
    :cond_29
    :goto_29
    return v1
.end method

.method public persistKeyStore()V
    .registers 10

    .line 979
    const-string v0, "adbKey"

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    .line 980
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 981
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->deleteKeyStore()V

    .line 982
    return-void

    .line 984
    :cond_11
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    const-string v2, "AdbDebuggingManager"

    if-nez v1, :cond_3a

    .line 985
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 986
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v1, :cond_3a

    .line 987
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

    .line 988
    return-void

    .line 991
    :cond_3a
    nop

    .line 993
    const/4 v1, 0x0

    :try_start_3c
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 994
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_47} :catch_98

    .line 995
    :try_start_47
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 996
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 998
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 999
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1000
    const-string v7, "key"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1001
    const-string v7, "lastConnection"

    .line 1002
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1001
    invoke-interface {v3, v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1003
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1004
    goto :goto_62

    .line 1006
    :cond_8d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1007
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_95} :catch_96

    .line 1011
    goto :goto_a4

    .line 1008
    :catch_96
    move-exception v0

    goto :goto_9a

    :catch_98
    move-exception v0

    move-object v4, v1

    .line 1009
    :goto_9a
    const-string v1, "Caught an exception writing the key map: "

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1012
    :goto_a4
    return-void
.end method

.method public setLastConnectionTime(Ljava/lang/String;J)V
    .registers 5

    .line 1085
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 1086
    return-void
.end method

.method public setLastConnectionTime(Ljava/lang/String;JZ)V
    .registers 7

    .line 1096
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

    .line 1097
    return-void

    .line 1101
    :cond_1b
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_24

    .line 1102
    return-void

    .line 1106
    :cond_24
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_31

    .line 1107
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p4, p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$1100(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V

    .line 1109
    :cond_31
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    return-void
.end method

.method public updateKeyStore()V
    .registers 2

    .line 890
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 891
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 893
    :cond_b
    return-void
.end method
