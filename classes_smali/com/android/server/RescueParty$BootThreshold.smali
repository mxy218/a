.class Lcom/android/server/RescueParty$BootThreshold;
.super Lcom/android/server/RescueParty$Threshold;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RescueParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BootThreshold"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 328
    const/4 v0, 0x0

    const/4 v1, 0x5

    const-wide/32 v2, 0x927c0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/RescueParty$Threshold;-><init>(IIJ)V

    .line 329
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .line 333
    const-string/jumbo v0, "sys.rescue_boot_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStart()J
    .registers 4

    .line 343
    const-string/jumbo v0, "sys.rescue_boot_start"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setCount(I)V
    .registers 4
    .param p1, "count"  # I

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.rescue_boot_count"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setStart(J)V
    .registers 5
    .param p1, "start"  # J

    .line 348
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.rescue_boot_start"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method
