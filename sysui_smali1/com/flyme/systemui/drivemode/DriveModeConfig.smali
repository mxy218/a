.class public Lcom/flyme/systemui/drivemode/DriveModeConfig;
.super Ljava/lang/Object;
.source "DriveModeConfig.java"


# static fields
.field private static mInstance:Lcom/flyme/systemui/drivemode/DriveModeConfig;


# instance fields
.field private mAutoOpenDriveMode:I

.field private mAutoShareWifi:I

.field private mAutoUnlock:I

.field private mSettings:J

.field private mTapScreen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/flyme/systemui/drivemode/DriveModeConfig;

    invoke-direct {v0}, Lcom/flyme/systemui/drivemode/DriveModeConfig;-><init>()V

    sput-object v0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mInstance:Lcom/flyme/systemui/drivemode/DriveModeConfig;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mSettings:J

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoOpenDriveMode:I

    .line 29
    iput v0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mTapScreen:I

    .line 30
    iput v0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoUnlock:I

    .line 31
    iput v0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoShareWifi:I

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/drivemode/DriveModeConfig;)J
    .registers 3

    .line 16
    iget-wide v0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mSettings:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/drivemode/DriveModeConfig;J)J
    .registers 3

    .line 16
    iput-wide p1, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mSettings:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/drivemode/DriveModeConfig;JZ)V
    .registers 4

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemui/drivemode/DriveModeConfig;->updateSettingsState(JZ)V

    return-void
.end method

.method public static getInstance()Lcom/flyme/systemui/drivemode/DriveModeConfig;
    .registers 1

    .line 35
    sget-object v0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mInstance:Lcom/flyme/systemui/drivemode/DriveModeConfig;

    return-object v0
.end method

.method private updateSettingsState(JZ)V
    .registers 12

    .line 79
    new-instance v0, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;

    invoke-direct {v0}, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;-><init>()V

    const-wide/16 v1, 0x1

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v5

    .line 82
    :goto_13
    iget v6, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoOpenDriveMode:I

    if-eq v1, v6, :cond_1b

    .line 83
    iput v1, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoOpenDriveMode:I

    .line 84
    iput v1, v0, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;->autoOpenDriveMode:I

    :cond_1b
    const-wide/16 v6, 0x2

    and-long/2addr v6, p1

    cmp-long v1, v6, v3

    if-nez v1, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v5

    .line 87
    :goto_25
    iget v6, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mTapScreen:I

    if-eq v1, v6, :cond_2d

    .line 88
    iput v1, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mTapScreen:I

    .line 89
    iput v1, v0, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;->tapScreen:I

    :cond_2d
    const-wide/16 v6, 0x4

    and-long/2addr v6, p1

    cmp-long v1, v6, v3

    if-nez v1, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    move v1, v5

    .line 92
    :goto_37
    iget v6, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoUnlock:I

    if-eq v1, v6, :cond_3f

    .line 93
    iput v1, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoUnlock:I

    .line 94
    iput v1, v0, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;->autoUnlock:I

    :cond_3f
    const-wide/16 v6, 0x8

    and-long/2addr p1, v6

    cmp-long p1, p1, v3

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    move v2, v5

    .line 97
    :goto_48
    iget p1, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoShareWifi:I

    if-eq v2, p1, :cond_50

    .line 98
    iput v2, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoShareWifi:I

    .line 99
    iput v2, v0, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;->autoShareWifi:I

    :cond_50
    if-eqz p3, :cond_59

    .line 102
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_59
    return-void
.end method


# virtual methods
.method public getConfig(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_21

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_15

    const/16 v2, 0x8

    if-eq p1, v2, :cond_f

    return v0

    .line 72
    :cond_f
    iget p0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoShareWifi:I

    if-ne v1, p0, :cond_14

    move v0, v1

    :cond_14
    return v0

    .line 70
    :cond_15
    iget p0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoUnlock:I

    if-ne v1, p0, :cond_1a

    move v0, v1

    :cond_1a
    return v0

    .line 68
    :cond_1b
    iget p0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mTapScreen:I

    if-ne v1, p0, :cond_20

    move v0, v1

    :cond_20
    return v0

    .line 66
    :cond_21
    iget p0, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mAutoOpenDriveMode:I

    if-ne v1, p0, :cond_26

    move v0, v1

    :cond_26
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 7

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_drive_mode_settings"

    const/4 v2, 0x0

    .line 52
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mSettings:J

    .line 53
    iget-wide v3, p0, Lcom/flyme/systemui/drivemode/DriveModeConfig;->mSettings:J

    invoke-direct {p0, v3, v4, v2}, Lcom/flyme/systemui/drivemode/DriveModeConfig;->updateSettingsState(JZ)V

    .line 54
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/flyme/systemui/drivemode/DriveModeConfig$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4, p1}, Lcom/flyme/systemui/drivemode/DriveModeConfig$1;-><init>(Lcom/flyme/systemui/drivemode/DriveModeConfig;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 p0, -0x2

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
