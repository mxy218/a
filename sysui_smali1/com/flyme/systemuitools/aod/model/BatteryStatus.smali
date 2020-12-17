.class public Lcom/flyme/systemuitools/aod/model/BatteryStatus;
.super Ljava/lang/Object;
.source "BatteryStatus.java"


# instance fields
.field public final health:I

.field public final level:I

.field public final plugged:I

.field public final status:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->status:I

    .line 14
    iput p2, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    .line 15
    iput p3, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->plugged:I

    .line 16
    iput p4, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->health:I

    return-void
.end method


# virtual methods
.method public isBatteryLow()Z
    .registers 2

    .line 47
    iget p0, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isCharged()Z
    .registers 3

    .line 38
    iget v0, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    iget p0, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    const/16 v0, 0x64

    if-lt p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method public isPluggedIn()Z
    .registers 3

    .line 25
    iget p0, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->plugged:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x4

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v1, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level = "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", plugged = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", health = "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget p0, p0, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->health:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
