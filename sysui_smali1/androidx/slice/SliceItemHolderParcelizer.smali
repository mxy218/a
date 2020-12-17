.class public final Landroidx/slice/SliceItemHolderParcelizer;
.super Ljava/lang/Object;
.source "SliceItemHolderParcelizer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static sBuilder:Landroidx/slice/SliceItemHolder$SliceItemPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Landroidx/slice/SliceItemHolder$SliceItemPool;

    invoke-direct {v0}, Landroidx/slice/SliceItemHolder$SliceItemPool;-><init>()V

    sput-object v0, Landroidx/slice/SliceItemHolderParcelizer;->sBuilder:Landroidx/slice/SliceItemHolder$SliceItemPool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/slice/SliceItemHolder;
    .registers 5

    .line 16
    sget-object v0, Landroidx/slice/SliceItemHolderParcelizer;->sBuilder:Landroidx/slice/SliceItemHolder$SliceItemPool;

    invoke-virtual {v0}, Landroidx/slice/SliceItemHolder$SliceItemPool;->get()Landroidx/slice/SliceItemHolder;

    move-result-object v0

    .line 17
    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 18
    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 19
    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    .line 20
    iget v1, v0, Landroidx/slice/SliceItemHolder;->mInt:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/slice/SliceItemHolder;->mInt:I

    .line 21
    iget-wide v1, v0, Landroidx/slice/SliceItemHolder;->mLong:J

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->readLong(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/slice/SliceItemHolder;->mLong:J

    return-object v0
.end method

.method public static write(Landroidx/slice/SliceItemHolder;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 6

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 28
    iget-object v1, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    if-eqz v1, :cond_b

    .line 29
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    .line 31
    :cond_b
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    if-eqz v0, :cond_13

    const/4 v1, 0x2

    .line 32
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    :cond_13
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const/4 v1, 0x3

    .line 35
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 37
    :cond_1b
    iget v0, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    if-eqz v0, :cond_23

    const/4 v1, 0x4

    .line 38
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    :cond_23
    const-wide/16 v0, 0x0

    .line 40
    iget-wide v2, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2f

    const/4 p0, 0x5

    .line 41
    invoke-virtual {p1, v2, v3, p0}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(JI)V

    :cond_2f
    return-void
.end method
