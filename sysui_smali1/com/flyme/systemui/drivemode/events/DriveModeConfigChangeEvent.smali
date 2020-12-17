.class public Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;
.super Ljava/lang/Object;
.source "DriveModeConfigChangeEvent.java"


# instance fields
.field public autoOpenDriveMode:I

.field public autoShareWifi:I

.field public autoUnlock:I

.field public tapScreen:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;->autoOpenDriveMode:I

    .line 5
    iput v0, p0, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;->tapScreen:I

    .line 6
    iput v0, p0, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;->autoUnlock:I

    .line 7
    iput v0, p0, Lcom/flyme/systemui/drivemode/events/DriveModeConfigChangeEvent;->autoShareWifi:I

    return-void
.end method
