.class public Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;
.super Ljava/lang/Object;
.source "EmitterConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field active:Z

.field flushCacheLimit:I

.field flushDelayInterval:J

.field flushMobileTrafficLimit:J

.field flushOnCharge:Z

.field flushOnReconnect:Z

.field flushOnStart:Z

.field neartimeInterval:I

.field private pkgKey:Ljava/lang/String;

.field sampling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig$1;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig$1;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->active:Z

    .line 14
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnStart:Z

    .line 15
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnCharge:Z

    .line 16
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnReconnect:Z

    const-wide/32 v1, 0x1b7740

    .line 17
    iput-wide v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushDelayInterval:J

    const/16 v1, 0x32

    .line 18
    iput v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushCacheLimit:I

    const-wide/32 v1, 0x200000

    .line 19
    iput-wide v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushMobileTrafficLimit:J

    const/16 v1, 0xa

    .line 20
    iput v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->neartimeInterval:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    move v1, v0

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    iput-boolean v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->sampling:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_32

    move v1, v0

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    iput-boolean v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->active:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3d

    move v1, v0

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    iput-boolean v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnStart:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_48

    move v1, v0

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    iput-boolean v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnCharge:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_53

    :cond_52
    move v0, v2

    :goto_53
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnReconnect:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushDelayInterval:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushCacheLimit:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushMobileTrafficLimit:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->pkgKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->active:Z

    .line 14
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnStart:Z

    .line 15
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnCharge:Z

    .line 16
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnReconnect:Z

    const-wide/32 v0, 0x1b7740

    .line 17
    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushDelayInterval:J

    const/16 v0, 0x32

    .line 18
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushCacheLimit:I

    const-wide/32 v0, 0x200000

    .line 19
    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushMobileTrafficLimit:J

    const/16 v0, 0xa

    .line 20
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->neartimeInterval:I

    .line 27
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->pkgKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getFlushCacheLimit()I
    .registers 1

    .line 75
    iget p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushCacheLimit:I

    return p0
.end method

.method public getFlushDelayInterval()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushDelayInterval:J

    return-wide v0
.end method

.method public getFlushMobileTrafficLimit()J
    .registers 3

    .line 79
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushMobileTrafficLimit:J

    return-wide v0
.end method

.method public getNeartimeInterval()I
    .registers 1

    .line 83
    iget p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->neartimeInterval:I

    return p0
.end method

.method public getPkgKey()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->pkgKey:Ljava/lang/String;

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->active:Z

    return p0
.end method

.method public isFlushOnCharge()Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnCharge:Z

    return p0
.end method

.method public isFlushOnReconnect()Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnReconnect:Z

    return p0
.end method

.method public isFlushOnStart()Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnStart:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmitterConfig{active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flushOnStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flushOnCharge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnCharge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flushOnReconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnReconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flushDelayInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushDelayInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flushCacheLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushCacheLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flushMobileTrafficLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushMobileTrafficLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", neartimeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->neartimeInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkgKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->pkgKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 132
    iget-boolean p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->sampling:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 133
    iget-boolean p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->active:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 134
    iget-boolean p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnStart:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 135
    iget-boolean p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnCharge:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 136
    iget-boolean p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnReconnect:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushDelayInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushCacheLimit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushMobileTrafficLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->pkgKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
