.class Lcom/android/server/location/GnssVisibilityControl$NfwNotification;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssVisibilityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NfwNotification"
.end annotation


# static fields
.field private static final NFW_RESPONSE_TYPE_ACCEPTED_LOCATION_PROVIDED:B = 0x2t

.field private static final NFW_RESPONSE_TYPE_ACCEPTED_NO_LOCATION_PROVIDED:B = 0x1t

.field private static final NFW_RESPONSE_TYPE_REJECTED:B


# instance fields
.field private final mInEmergencyMode:Z

.field private final mIsCachedLocation:Z

.field private final mOtherProtocolStackName:Ljava/lang/String;

.field private final mProtocolStack:B

.field private final mProxyAppPackageName:Ljava/lang/String;

.field private final mRequestor:B

.field private final mRequestorId:Ljava/lang/String;

.field private final mResponseType:B


# direct methods
.method private constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 9

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    .line 303
    iput-byte p2, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 304
    iput-object p3, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    .line 305
    iput-byte p4, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestor:B

    .line 306
    iput-object p5, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    .line 307
    iput-byte p6, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    .line 308
    iput-boolean p7, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    .line 309
    iput-boolean p8, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZLcom/android/server/location/GnssVisibilityControl$1;)V
    .registers 10

    .line 284
    invoke-direct/range {p0 .. p8}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B
    .registers 1

    .line 284
    iget-byte p0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B
    .registers 1

    .line 284
    iget-byte p0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestor:B

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B
    .registers 1

    .line 284
    iget-byte p0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    .line 284
    iget-boolean p0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    .line 284
    iget-boolean p0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isEmergencyRequestNotification()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isRequestAccepted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isLocationProvided()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .registers 1

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResponseTypeAsString()Ljava/lang/String;
    .registers 3

    .line 323
    iget-byte v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 331
    const-string v0, "<Unknown>"

    return-object v0

    .line 329
    :cond_d
    const-string v0, "ACCEPTED_LOCATION_PROVIDED"

    return-object v0

    .line 327
    :cond_10
    const-string v0, "ACCEPTED_NO_LOCATION_PROVIDED"

    return-object v0

    .line 325
    :cond_13
    const-string v0, "REJECTED"

    return-object v0
.end method

.method private isEmergencyRequestNotification()Z
    .registers 2

    .line 348
    iget-boolean v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isLocationProvided()Z
    .registers 3

    .line 340
    iget-byte v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isRequestAccepted()Z
    .registers 2

    .line 336
    iget-byte v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isRequestAttributedToProxyApp()Z
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 314
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 318
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestor:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 319
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 314
    const-string/jumbo v1, "{proxyAppPackageName: %s, protocolStack: %d, otherProtocolStackName: %s, requestor: %d, requestorId: %s, responseType: %s, inEmergencyMode: %b, isCachedLocation: %b}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
