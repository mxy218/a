.class public Lcom/android/systemui/statusbar/StatusBarState;
.super Ljava/lang/Object;
.source "StatusBarState.java"


# direct methods
.method public static toShortString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad_value_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "FS_USRSW"

    return-object p0

    :cond_20
    const-string p0, "SHD_LCK"

    return-object p0

    :cond_23
    const-string p0, "KGRD"

    return-object p0

    :cond_26
    const-string p0, "SHD"

    return-object p0
.end method
