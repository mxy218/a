.class public Lcom/google/android/startop/iorap/ActivityInfo;
.super Ljava/lang/Object;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final activityName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Lcom/google/android/startop/iorap/ActivityInfo$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/ActivityInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/ActivityInfo;->packageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/startop/iorap/ActivityInfo;->activityName:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/google/android/startop/iorap/ActivityInfo;->checkConstructorArguments()V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/ActivityInfo$1;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/ActivityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/startop/iorap/ActivityInfo;->packageName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/google/android/startop/iorap/ActivityInfo;->activityName:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/google/android/startop/iorap/ActivityInfo;->checkConstructorArguments()V

    .line 47
    return-void
.end method

.method private checkConstructorArguments()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/google/android/startop/iorap/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/google/android/startop/iorap/ActivityInfo;->activityName:Ljava/lang/String;

    const-string v1, "activityName"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private equals(Lcom/google/android/startop/iorap/ActivityInfo;)Z
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/google/android/startop/iorap/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/startop/iorap/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/startop/iorap/ActivityInfo;->activityName:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/startop/iorap/ActivityInfo;->activityName:Ljava/lang/String;

    .line 71
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 70
    :goto_17
    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 61
    if-ne p0, p1, :cond_4

    .line 62
    const/4 p1, 0x1

    return p1

    .line 63
    :cond_4
    instance-of v0, p1, Lcom/google/android/startop/iorap/ActivityInfo;

    if-eqz v0, :cond_f

    .line 64
    check-cast p1, Lcom/google/android/startop/iorap/ActivityInfo;

    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/ActivityInfo;->equals(Lcom/google/android/startop/iorap/ActivityInfo;)Z

    move-result p1

    return p1

    .line 66
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/startop/iorap/ActivityInfo;->activityName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "{packageName: %s, activityName: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 77
    iget-object p2, p0, Lcom/google/android/startop/iorap/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/google/android/startop/iorap/ActivityInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return-void
.end method
