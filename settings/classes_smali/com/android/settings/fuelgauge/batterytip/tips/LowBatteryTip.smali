.class public Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;
.source "LowBatteryTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mSummary:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/CharSequence;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;-><init>(IZ)V

    const/4 p1, 0x5

    .line 35
    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    .line 36
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;->mSummary:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;-><init>(Landroid/os/Parcel;)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;->mSummary:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4

    .line 46
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const p0, 0x7f1202dd

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 47
    :cond_d
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;->mSummary:Ljava/lang/CharSequence;

    :goto_f
    return-object p0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .registers 4

    .line 58
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/16 v0, 0x548

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void
.end method
