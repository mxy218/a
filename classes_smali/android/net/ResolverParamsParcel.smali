.class public Landroid/net/ResolverParamsParcel;
.super Ljava/lang/Object;
.source "ResolverParamsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ResolverParamsParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseTimeoutMsec:I

.field public domains:[Ljava/lang/String;

.field public maxSamples:I

.field public minSamples:I

.field public netId:I

.field public retryCount:I

.field public sampleValiditySeconds:I

.field public servers:[Ljava/lang/String;

.field public successThreshold:I

.field public tlsFingerprints:[Ljava/lang/String;

.field public tlsName:Ljava/lang/String;

.field public tlsServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/net/ResolverParamsParcel$1;

    invoke-direct {v0}, Landroid/net/ResolverParamsParcel$1;-><init>()V

    sput-object v0, Landroid/net/ResolverParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    if-gez v1, :cond_b

    return-void

    .line 70
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 72
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2f

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 74
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_41

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 76
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 78
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_65

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 80
    :cond_65
    :try_start_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_77

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 82
    :cond_77
    :try_start_77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_89

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 84
    :cond_89
    :try_start_89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9b

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 86
    :cond_9b
    :try_start_9b
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ad

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 88
    :cond_ad
    :try_start_ad
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b7
    .catchall {:try_start_ad .. :try_end_b7} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_bf

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 90
    :cond_bf
    :try_start_bf
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c9
    .catchall {:try_start_bf .. :try_end_c9} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d1

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 92
    :cond_d1
    :try_start_d1
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_db
    .catchall {:try_start_d1 .. :try_end_db} :catchall_e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e3

    .line 95
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    return-void

    .line 95
    :cond_e3
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_e9
    move-exception v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Landroid/net/ResolverParamsParcel;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Landroid/net/ResolverParamsParcel;->minSamples:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Landroid/net/ResolverParamsParcel;->retryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void
.end method
