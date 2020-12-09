.class public Landroid/gsi/GsiInstallParams;
.super Ljava/lang/Object;
.source "GsiInstallParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gsi/GsiInstallParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public gsiSize:J

.field public installDir:Ljava/lang/String;

.field public userdataSize:J

.field public wipeUserdata:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Landroid/gsi/GsiInstallParams$1;

    invoke-direct {v0}, Landroid/gsi/GsiInstallParams$1;-><init>()V

    sput-object v0, Landroid/gsi/GsiInstallParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    if-gez v1, :cond_b

    return-void

    .line 55
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/gsi/GsiInstallParams;->installDir:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_5e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 57
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/gsi/GsiInstallParams;->gsiSize:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_5e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2f

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 59
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/gsi/GsiInstallParams;->userdataSize:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_5e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_41

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 61
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    iput-boolean v2, p0, Landroid/gsi/GsiInstallParams;->wipeUserdata:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_5e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_58

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 64
    :cond_58
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    nop

    .line 66
    return-void

    .line 64
    :catchall_5e
    move-exception v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Landroid/gsi/GsiInstallParams;->installDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-wide v0, p0, Landroid/gsi/GsiInstallParams;->gsiSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-wide v0, p0, Landroid/gsi/GsiInstallParams;->userdataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-boolean v0, p0, Landroid/gsi/GsiInstallParams;->wipeUserdata:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method
