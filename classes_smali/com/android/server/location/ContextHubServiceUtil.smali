.class Lcom/android/server/location/ContextHubServiceUtil;
.super Ljava/lang/Object;
.source "ContextHubServiceUtil.java"


# static fields
.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final TAG:Ljava/lang/String; = "ContextHubServiceUtil"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPermissions(Landroid/content/Context;)V
    .registers 3

    .line 203
    const-string v0, "android.permission.LOCATION_HARDWARE"

    const-string v1, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method static copyToByteArrayList([BLjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 74
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_17

    aget-byte v2, p0, v1

    .line 76
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 78
    :cond_17
    return-void
.end method

.method static createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 59
    iget v2, v1, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v3, v1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    goto :goto_9

    .line 62
    :cond_24
    return-object v0
.end method

.method static createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .registers 5

    .line 171
    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 173
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    .line 174
    iput-short p0, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 175
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result p0

    iput p0, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    .line 176
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p0

    iget-object p1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/location/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V

    .line 178
    return-object v0
.end method

.method static createHidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .registers 5

    .line 122
    const-string v0, "ContextHubServiceUtil"

    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 125
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    .line 126
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    .line 127
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    .line 128
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    .line 129
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    .line 134
    :try_start_25
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object p0

    iget-object v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lcom/android/server/location/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_2e} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_3e

    .line 137
    :catch_2f
    move-exception p0

    .line 138
    const-string p0, "NanoApp binary was null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 135
    :catch_36
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_3e
    nop

    .line 141
    :goto_3f
    return-object v1
.end method

.method static createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;
    .registers 6

    .line 189
    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->createPrimitiveByteArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 191
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    iget-short p0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    const/4 v4, -0x1

    if-ne p0, v4, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    invoke-static {v1, v2, v3, v0, p0}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;

    move-result-object p0

    return-object p0
.end method

.method static createNanoAppStateList(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 155
    new-instance v2, Landroid/hardware/location/NanoAppState;

    iget-wide v3, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iget v5, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iget-boolean v1, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/hardware/location/NanoAppState;-><init>(JIZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_9

    .line 159
    :cond_24
    return-object v0
.end method

.method static createPrimitiveByteArray(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 89
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 90
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 93
    :cond_1c
    return-object v0
.end method

.method static createPrimitiveIntArray(Ljava/util/Collection;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 102
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 104
    nop

    .line 105
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 106
    add-int/lit8 v3, v1, 0x1

    aput v2, v0, v1

    .line 107
    move v1, v3

    goto :goto_c

    .line 109
    :cond_22
    return-object v0
.end method

.method static toTransactionResult(I)I
    .registers 2

    .line 216
    if-eqz p0, :cond_11

    const/4 v0, 0x5

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    .line 228
    const/4 p0, 0x1

    return p0

    .line 222
    :cond_d
    return v0

    .line 220
    :cond_e
    return v0

    .line 224
    :cond_f
    const/4 p0, 0x4

    return p0

    .line 218
    :cond_11
    const/4 p0, 0x0

    return p0
.end method
