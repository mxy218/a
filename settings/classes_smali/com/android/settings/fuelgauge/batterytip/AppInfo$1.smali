.class Lcom/android/settings/fuelgauge/batterytip/AppInfo$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    .registers 2

    .line 98
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    .registers 2

    .line 102
    new-array p0, p1, [Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$1;->newArray(I)[Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object p0

    return-object p0
.end method