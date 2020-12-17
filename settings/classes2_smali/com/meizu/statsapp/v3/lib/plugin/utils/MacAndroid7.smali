.class public Lcom/meizu/statsapp/v3/lib/plugin/utils/MacAndroid7;
.super Ljava/lang/Object;
.source "MacAndroid7.java"


# direct methods
.method private static bytesToString([B)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_3a

    .line 132
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_3a

    .line 135
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v1, :cond_27

    aget-byte v5, p0, v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 137
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%02X:"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 139
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_35

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 142
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    .line 171
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 172
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 173
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 175
    :goto_18
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    goto :goto_18

    :catch_34
    move-object v1, v0

    :cond_35
    return-object v1
.end method

.method private static getLocalInetAddress()Ljava/net/InetAddress;
    .registers 6

    const/4 v0, 0x0

    .line 25
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_5} :catch_41

    move-object v2, v0

    .line 26
    :cond_6
    :try_start_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 27
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 28
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 29
    :goto_16
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 30
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;
    :try_end_22
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_22} :catch_3f

    .line 31
    :try_start_22
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2
    :try_end_32
    .catch Ljava/net/SocketException; {:try_start_22 .. :try_end_32} :catch_39

    const/4 v5, -0x1

    if-ne v2, v5, :cond_37

    move-object v2, v4

    goto :goto_3c

    :cond_37
    move-object v2, v0

    goto :goto_16

    :catch_39
    move-exception v0

    move-object v2, v4

    goto :goto_44

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_6

    goto :goto_47

    :catch_3f
    move-exception v0

    goto :goto_44

    :catch_41
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 43
    :goto_44
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_47
    :goto_47
    return-object v2
.end method

.method public static getLocalMacAddressFromBusybox()Ljava/lang/String;
    .registers 4

    const-string v0, "HWaddr"

    const-string v1, "busybox ifconfig"

    .line 153
    invoke-static {v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/MacAndroid7;->callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v0, "网络异常"

    return-object v0

    .line 160
    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_29
    return-object v1
.end method

.method public static getMacAddress()Ljava/lang/String;
    .registers 7

    .line 81
    :try_start_0
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/utils/MacAndroid7;->getLocalInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 84
    :goto_13
    array-length v4, v0

    if-ge v3, v4, :cond_41

    if-eqz v3, :cond_1d

    const/16 v4, 0x3a

    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    :cond_1d
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 91
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_4b

    :catch_4a
    const/4 v0, 0x0

    :goto_4b
    return-object v0
.end method

.method public static getMachineHardwareAddress()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 107
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_b

    :catch_6
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    move-object v1, v0

    .line 113
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 114
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 116
    :try_start_17
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/MacAndroid7;->bytesToString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/net/SocketException; {:try_start_17 .. :try_end_1f} :catch_22

    if-eqz v0, :cond_b

    goto :goto_27

    :catch_22
    move-exception v2

    .line 120
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_b

    :cond_27
    :goto_27
    return-object v0
.end method
