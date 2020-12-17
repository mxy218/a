.class public Lcom/qti/snapdragon/sdk/display/ColorManager;
.super Ljava/lang/Object;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/snapdragon/sdk/display/ColorManager$Log;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
    }
.end annotation


# static fields
.field public static final BITFLAG_COLOR_BALANCE:J

.field public static final BITFLAG_GLOBAL_PICTURE_ADJUSTMENT:J

.field public static final BITFLAG_MEMORY_COLOR_FOLIAGE:J

.field public static final BITFLAG_MEMORY_COLOR_SKIN:J

.field public static final BITFLAG_MEMORY_COLOR_SKY:J

.field private static PA_GLOBAL_CON:I = 0x0

.field private static PA_GLOBAL_DESAT:I = 0x0

.field private static PA_GLOBAL_DISABLE:I = 0x0

.field private static PA_GLOBAL_HUE:I = 0x0

.field private static PA_GLOBAL_SAT:I = 0x0

.field private static PA_GLOBAL_SAT_THRESH:I = 0x0

.field private static PA_GLOBAL_VAL:I = 0x0

.field private static final REMOTE_SERVICE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = "ColorManager"

.field private static VERBOSE_ENABLED:Z = true

.field private static colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

.field private static conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

.field private static isConnecting:Z

.field private static myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private static service:Lcom/qti/snapdragon/sdk/display/IColorService;

.field private static serviceContext:Landroid/content/Context;


# instance fields
.field private displayId:I

.field private isSystemApp:Z

.field memColorRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myApplication:Landroid/app/Application;

.field paRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    const-string v1, "1"

    .line 68
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    sput-wide v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_COLOR_BALANCE:J

    const-string v1, "10"

    .line 69
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    sput-wide v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_GLOBAL_PICTURE_ADJUSTMENT:J

    const-string v1, "100"

    .line 70
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    sput-wide v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_MEMORY_COLOR_SKIN:J

    const-string v1, "1000"

    .line 71
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    sput-wide v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_MEMORY_COLOR_SKY:J

    const-string v1, "10000"

    .line 72
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    sput-wide v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_MEMORY_COLOR_FOLIAGE:J

    const/4 v1, 0x1

    .line 75
    sput v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_HUE:I

    .line 76
    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_SAT:I

    const/4 v0, 0x4

    .line 77
    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_VAL:I

    const/16 v0, 0x8

    .line 78
    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_CON:I

    const/16 v0, 0x10

    .line 79
    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_SAT_THRESH:I

    const/16 v0, 0x20

    .line 80
    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DESAT:I

    const/16 v0, 0x40

    .line 81
    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DISABLE:I

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 281
    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 287
    const-class v0, Lcom/qti/snapdragon/sdk/display/IColorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 305
    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;

    .line 307
    new-instance v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-direct {v1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;-><init>(Lcom/qti/snapdragon/sdk/display/ColorManager$1;)V

    sput-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    const/4 v0, 0x0

    .line 310
    sput-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;I)V
    .registers 5

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    .line 313
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->memColorRanges:Ljava/util/HashMap;

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->paRanges:Ljava/util/HashMap;

    .line 453
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    if-eqz v1, :cond_42

    .line 457
    iput-object p1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    .line 460
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    iput-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    .line 462
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System app? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iput p2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    return-void

    .line 454
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find IService by name ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100()Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    .registers 1

    .line 63
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 63
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qti/snapdragon/sdk/display/IColorService;)Lcom/qti/snapdragon/sdk/display/IColorService;
    .registers 1

    .line 63
    sput-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    return-object p0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 63
    sget-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .line 63
    sput-boolean p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    return p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 63
    sget-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->VERBOSE_ENABLED:Z

    return v0
.end method

.method public static connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I
    .registers 8

    if-eqz p0, :cond_a5

    if-nez p1, :cond_6

    goto/16 :goto_a5

    .line 363
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x3e7

    if-eqz v0, :cond_1c

    .line 365
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Required permission \'com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS\' is missing"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 370
    :cond_1c
    sput-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    .line 371
    sput-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;

    .line 372
    sget-boolean p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    if-eqz p1, :cond_2c

    .line 373
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Connection already in progress"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 377
    :cond_2c
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isServiceRunning()Z

    move-result p1

    const-string v0, "com.qti.service.colorservice.ColorServiceApp"

    const-string v2, "com.qti.service.colorservice"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_68

    .line 378
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service running"

    invoke-static {p1, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 380
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-virtual {p0, p1, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-ne p0, v4, :cond_60

    .line 384
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Running service bound"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    invoke-interface {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;->onConnected()V

    return v3

    .line 389
    :cond_60
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Bind failed even when service is running"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 394
    :cond_68
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service is not running"

    invoke-static {p1, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :try_start_6f
    sput-boolean v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z
    :try_end_71
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_71} :catch_9e

    .line 400
    :try_start_71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-virtual {p1, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception p1

    .line 403
    :try_start_7c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    :goto_7f
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 407
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-virtual {p0, p1, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-ne p0, v4, :cond_94

    return v3

    .line 413
    :cond_94
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Failed to connect to remote service"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sput-boolean v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z
    :try_end_9d
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_9d} :catch_9e

    return v1

    :catch_9e
    move-exception p0

    .line 418
    sput-boolean v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    .line 419
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return v1

    .line 360
    :cond_a5
    :goto_a5
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "One of the parmeter passed is null"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x388

    return p0
.end method

.method public static getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_7d

    if-eqz p1, :cond_7d

    if-eqz p2, :cond_6e

    const-string p1, "com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS"

    .line 500
    invoke-virtual {p0, p1}, Landroid/app/Application;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 502
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Required permission \'com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS\' is missing"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 507
    :cond_17
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v1

    aget-object p1, p1, v1

    if-nez p1, :cond_5e

    .line 509
    :try_start_21
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v1

    new-instance v2, Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 510
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;-><init>(Landroid/app/Application;I)V

    aput-object v2, p1, v1

    .line 511
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instance created for display type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_48} :catch_51

    .line 518
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    :catch_51
    move-exception p0

    .line 513
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result p1

    aput-object v0, p0, p1

    return-object v0

    .line 520
    :cond_5e
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Returning existing instance"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    .line 496
    :cond_6e
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Display Id passed is null"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Display ID passed is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 492
    :cond_7d
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Application or context passed is null"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null passed for Application or context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isServiceRunning()Z
    .registers 6

    const-string v0, "Harmless exception on close!"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "/system/bin/sh"

    const-string v4, "-c"

    const-string v5, "ps"

    .line 2632
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 2633
    new-instance v4, Ljava/lang/ProcessBuilder;

    invoke-direct {v4, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 2635
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 2636
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 2638
    :cond_1f
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_34

    .line 2639
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const-string v5, "colorservice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_31} :catch_46
    .catchall {:try_start_4 .. :try_end_31} :catchall_44

    if-eqz v4, :cond_1f

    const/4 v1, 0x1

    :cond_34
    if-eqz v2, :cond_4f

    .line 2649
    :try_start_36
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_4f

    :catch_3a
    move-exception v2

    .line 2651
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    :catchall_44
    move-exception v1

    goto :goto_50

    :catch_46
    move-exception v3

    .line 2645
    :try_start_47
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    if-eqz v2, :cond_4f

    .line 2649
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_3a

    :cond_4f
    :goto_4f
    return v1

    :goto_50
    if-eqz v2, :cond_5f

    :try_start_52
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5f

    :catch_56
    move-exception v2

    .line 2651
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2653
    :cond_5f
    :goto_5f
    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 444
    new-instance p0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {p0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw p0
.end method

.method public createNewMode(Ljava/lang/String;)I
    .registers 6

    .line 1244
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_8b

    const/16 v0, -0x385

    .line 1249
    :try_start_c
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_12} :catch_86

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    return v0

    .line 1258
    :cond_16
    iget-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    if-nez v0, :cond_24

    .line 1259
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "You do not have permission to perform this operation"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x387

    return p0

    :cond_24
    if-eqz p1, :cond_7e

    const-string v0, ""

    .line 1264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_37

    goto :goto_7e

    .line 1270
    :cond_37
    :try_start_37
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For createNewMode- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, p0, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->createNewModeAllFeatures(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_5f

    .line 1273
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v0, "createNewMode() worked"

    invoke-static {p1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 1275
    :cond_5f
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service createNewMode failed with return value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_75} :catch_76

    return v1

    .line 1281
    :catch_76
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Service create new mode failed"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1265
    :cond_7e
    :goto_7e
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Mode name is missing or crossing max length"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_86
    move-exception p0

    .line 1254
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0

    .line 1285
    :cond_8b
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance for the display type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesnt exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getColorBalance()I
    .registers 6

    .line 620
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_5f

    const/16 v0, -0x385

    .line 623
    :try_start_c
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_12} :catch_5a

    if-nez v2, :cond_15

    return v0

    .line 633
    :cond_15
    :try_start_15
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getColorBalance for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, p0}, Lcom/qti/snapdragon/sdk/display/IColorService;->getColorBalance(I)I

    move-result p0

    const/16 v0, -0x64

    if-ge p0, v0, :cond_51

    .line 636
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service getColorBalance failed with return value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_50} :catch_52

    return v1

    :cond_51
    return p0

    .line 643
    :catch_52
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v0, "Service get color balance failed"

    invoke-static {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_5a
    move-exception p0

    .line 628
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0

    .line 647
    :cond_5f
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance for the display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesnt exist"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getDefaultMode()I
    .registers 5

    .line 1140
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_5c

    const/16 v0, -0x385

    .line 1143
    :try_start_c
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_12} :catch_57

    if-nez v2, :cond_15

    return v0

    .line 1153
    :cond_15
    :try_start_15
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getDefaultMode() for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, p0}, Lcom/qti/snapdragon/sdk/display/IColorService;->getDefaultMode(I)I

    move-result p0

    if-gez p0, :cond_4e

    .line 1156
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service getDefaultMode failed with return value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_4d} :catch_4f

    return v1

    :cond_4e
    return p0

    .line 1162
    :catch_4f
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v0, "Service get default mode failed"

    invoke-static {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_57
    move-exception p0

    .line 1148
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0

    .line 1166
    :cond_5c
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance for the display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesnt exist"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 824
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    .line 826
    :try_start_9
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 828
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FEATURE_COLOR_MODE_SELECTION is not supported for display "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_29} :catch_54

    return-object v1

    :cond_2a
    if-eqz p1, :cond_45

    .line 840
    :try_start_2c
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->getValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->getModes(II)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object p0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    .line 843
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v0, "Service get modes failed"

    invoke-static {p1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1

    .line 836
    :cond_45
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Mode Type passed is null"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Type passed is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_54
    move-exception p0

    .line 832
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object v1

    .line 848
    :cond_59
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance for the display type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesnt exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_31

    .line 543
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_c
    const-string v2, "com.qti.service.colorservice"

    const/16 v3, 0x80

    .line 545
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_13} :catch_2c

    .line 551
    :try_start_13
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->getValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->isFeatureSupported(II)Z

    move-result p0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_20

    return p0

    :catch_20
    move-exception p0

    .line 553
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 554
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Service isFeatureSupported crashed"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_2c
    move-exception p0

    .line 547
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1

    .line 540
    :cond_31
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Feature id passed is null"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Feature ID passed is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setActiveMode(I)I
    .registers 6

    .line 773
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_70

    const/16 v0, -0x385

    .line 776
    :try_start_c
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_12} :catch_6b

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    return v0

    :cond_16
    if-gez p1, :cond_22

    .line 787
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Mode ID provided is less than 0"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x386

    return p0

    .line 791
    :cond_22
    :try_start_22
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setActiveMode for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, p0, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setActiveMode(II)I

    move-result p0

    if-nez p0, :cond_4c

    .line 794
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v0, "SetActiveMode() worked"

    invoke-static {p1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 796
    :cond_4c
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service setActiveMode failed with return value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_62} :catch_63

    return v1

    .line 802
    :catch_63
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Service set active mode failed"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_6b
    move-exception p0

    .line 781
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0

    .line 807
    :cond_70
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance for the display type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesnt exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setColorBalance(I)I
    .registers 6

    .line 573
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_77

    const/16 v0, -0x385

    .line 576
    :try_start_c
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_12} :catch_72

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    return v0

    :cond_16
    const/16 v0, -0x64

    if-lt p1, v0, :cond_68

    const/16 v0, 0x64

    if-le p1, v0, :cond_1f

    goto :goto_68

    .line 590
    :cond_1f
    :try_start_1f
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setColorBalance for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, p0, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setColorBalance(II)I

    move-result p0

    if-nez p0, :cond_49

    .line 593
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v0, "SetColorBalance() worked"

    invoke-static {p1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 595
    :cond_49
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service setColorBalance failed with return value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_5f} :catch_60

    return v1

    .line 601
    :catch_60
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Service set color balance failed"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 586
    :cond_68
    :goto_68
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Warmth given is outside the range (-100, 100)"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x386

    return p0

    :catch_72
    move-exception p0

    .line 581
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0

    .line 606
    :cond_77
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance for the display type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesnt exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setDefaultMode(I)I
    .registers 6

    .line 1186
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_7e

    const/16 v0, -0x385

    .line 1189
    :try_start_c
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_12} :catch_79

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    return v0

    .line 1199
    :cond_16
    iget-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    if-nez v0, :cond_24

    .line 1200
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "You do not have permission to perform this operation"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x387

    return p0

    :cond_24
    if-gez p1, :cond_30

    .line 1204
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Mode ID provided is less than 0"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x386

    return p0

    .line 1208
    :cond_30
    :try_start_30
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setDefaultMode for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, p0, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setDefaultMode(II)I

    move-result p0

    if-nez p0, :cond_5a

    .line 1211
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v0, "SetDefaultMode() worked"

    invoke-static {p1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 1213
    :cond_5a
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service setDefaultMode failed with return value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_70} :catch_71

    return v1

    .line 1219
    :catch_71
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string p1, "Service set default mode failed"

    invoke-static {p0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_79
    move-exception p0

    .line 1194
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0

    .line 1224
    :cond_7e
    sget-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance for the display type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesnt exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
