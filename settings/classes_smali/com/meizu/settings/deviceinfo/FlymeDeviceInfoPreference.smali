.class public Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;
.super Landroid/preference/Preference;
.source "FlymeDeviceInfoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference$OnBindViewFinishedCallback;
    }
.end annotation


# instance fields
.field private mAndroidVersion:Landroid/widget/TextView;

.field private mAndroidVersionSummary:Ljava/lang/String;

.field private mAndroidVersionTitle:Ljava/lang/String;

.field private mAndroidVersionTitleView:Landroid/widget/TextView;

.field private mBatteryImg:Landroid/widget/ImageView;

.field private mBatterySize:Landroid/widget/TextView;

.field private mBatterySummary:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCpuInfo:Landroid/widget/TextView;

.field private mDeviceIdOne:Lcom/meizu/settings/widget/LongClickCopyTextView;

.field private mDeviceIdOneSummary:Ljava/lang/String;

.field private mDeviceIdTwo:Lcom/meizu/settings/widget/LongClickCopyTextView;

.field private mDeviceIdTwoSummary:Ljava/lang/String;

.field private mDeviceModel:Lcom/meizu/settings/widget/LongClickCopyTextView;

.field private mDeviceModelSummary:Ljava/lang/String;

.field private mFlymeVersion:Landroid/widget/TextView;

.field private mFlymeVersionSummary:Ljava/lang/String;

.field private mFlymeVersionTitle:Ljava/lang/String;

.field private mFlymeVersionTitleView:Landroid/widget/TextView;

.field private mHideIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalMemorySummary:Ljava/lang/String;

.field private mIsGuestUser:Z

.field private mItemViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelVersion:Lcom/meizu/settings/widget/LongClickCopyTextView;

.field private mKernelVersionSummary:Ljava/lang/String;

.field private mMarketingName:Lcom/meizu/settings/widget/LongClickCopyTextView;

.field private mMarketingNameSummary:Ljava/lang/String;

.field private mOnBindViewFinishedCallback:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference$OnBindViewFinishedCallback;

.field private mPhoneModel:Landroid/widget/TextView;

.field private mRamSize:Landroid/widget/TextView;

.field private mRunMemorySummary:Ljava/lang/String;

.field private mSerialNumber:Lcom/meizu/settings/widget/LongClickCopyTextView;

.field private mSerialNumberSummary:Ljava/lang/String;

.field private mShowMultiDeviceId:Z

.field private mStorageSize:Landroid/widget/TextView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p2, Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    .line 108
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mHideIndexList:Ljava/util/List;

    .line 114
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 117
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mIsGuestUser:Z

    .line 119
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 8

    .line 127
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mMarketingNameSummary:Ljava/lang/String;

    const-string v0, ""

    const-string/jumbo v1, "ro.vendor.meizu.carrier.model"

    .line 128
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceModelSummary:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceModelSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "ro.meizu.carrier.model"

    .line 130
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceModelSummary:Ljava/lang/String;

    .line 132
    :cond_20
    invoke-static {}, Lcom/meizu/settings/deviceinfo/StorageUtils;->getRunMemorySize()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mRunMemorySummary:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/settings/deviceinfo/StorageUtils;->getInternalTotalSpace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mInternalMemorySummary:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mSerialNumberSummary:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4e

    .line 136
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_4e

    :cond_4c
    move v1, v2

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v1, v3

    .line 137
    :goto_4f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_5d

    if-eqz v1, :cond_5d

    move v5, v3

    goto :goto_5e

    :cond_5d
    move v5, v2

    .line 138
    :goto_5e
    iput-boolean v5, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mShowMultiDeviceId:Z

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showMultDeviceIdEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isMultiSimSupport = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FlymeDeviceInfoPreference"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mShowMultiDeviceId:Z

    if-eqz v1, :cond_d2

    const-string/jumbo v1, "ril.gsm.imei"

    .line 142
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c1

    const-string v1, ","

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 146
    array-length v1, v0

    if-lez v1, :cond_b0

    .line 147
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdOneSummary:Ljava/lang/String;

    .line 148
    array-length v1, v0

    if-le v1, v3, :cond_a7

    .line 149
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdTwoSummary:Ljava/lang/String;

    goto :goto_ef

    .line 151
    :cond_a7
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdTwoSummary:Ljava/lang/String;

    goto :goto_ef

    .line 154
    :cond_b0
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdOneSummary:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdTwoSummary:Ljava/lang/String;

    goto :goto_ef

    .line 158
    :cond_c1
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdOneSummary:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdTwoSummary:Ljava/lang/String;

    goto :goto_ef

    .line 163
    :cond_d2
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 164
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdOneSummary:Ljava/lang/String;

    goto :goto_eb

    .line 166
    :cond_e3
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdOneSummary:Ljava/lang/String;

    :goto_eb
    const/4 v0, 0x5

    .line 168
    invoke-virtual {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->addHideIndex(I)V

    .line 170
    :goto_ef
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isCTA()Z

    move-result v0

    const-string/jumbo v1, "版本号："

    if-eqz v0, :cond_116

    const-string/jumbo v0, "硬件版本："

    .line 171
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionTitle:Ljava/lang/String;

    const-string/jumbo v0, "ro.cta.flyme.hardware.version"

    const-string v4, "V1.0"

    .line 172
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionSummary:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionTitle:Ljava/lang/String;

    const-string/jumbo v0, "ro.cta.flyme.version"

    const-string v1, "Flyme OS 4.5.3A"

    .line 174
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionSummary:Ljava/lang/String;

    goto :goto_15a

    .line 177
    :cond_116
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isSoftProduct()Z

    move-result v0

    if-eqz v0, :cond_134

    const-string/jumbo v0, "软件名："

    .line 178
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionTitle:Ljava/lang/String;

    const-string/jumbo v0, "魅族 Flyme 智能手机操作软件"

    .line 179
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionSummary:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionTitle:Ljava/lang/String;

    const-string/jumbo v0, "ro.soft.flyme.version"

    const-string v1, "4.5"

    .line 181
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionSummary:Ljava/lang/String;

    goto :goto_15a

    .line 183
    :cond_134
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_152

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    const-string/jumbo v0, "ro.eng.unicom.flyme.version"

    const-string v1, "Flyme OS 4.5U"

    .line 184
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionSummary:Ljava/lang/String;

    goto :goto_156

    .line 187
    :cond_152
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionSummary:Ljava/lang/String;

    .line 189
    :goto_156
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionSummary:Ljava/lang/String;

    .line 203
    :goto_15a
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_1b1

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    .line 204
    invoke-static {v0}, Lcom/meizu/settings/language/FlymeRegion;->getCurrentCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ID"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17f

    .line 205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "in"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 206
    :cond_17f
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1ad

    const-string v1, "\n"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_19d

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_19d

    .line 210
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_19d
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f120a48

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mKernelVersionSummary:Ljava/lang/String;

    goto :goto_1b4

    .line 215
    :cond_1ad
    invoke-virtual {p0, v1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->addHideIndex(I)V

    goto :goto_1b4

    .line 218
    :cond_1b1
    invoke-virtual {p0, v1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->addHideIndex(I)V

    :goto_1b4
    return-void
.end method

.method private initBatterySize(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0a00f7

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mBatteryImg:Landroid/widget/ImageView;

    const v0, 0x7f0a00f6

    .line 340
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mBatterySize:Landroid/widget/TextView;

    const v0, 0x7f0a00f8

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mBatterySummary:Landroid/widget/TextView;

    .line 344
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12043e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4c

    .line 347
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mBatteryImg:Landroid/widget/ImageView;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mBatterySize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mBatterySummary:Landroid/widget/TextView;

    const p1, 0x7f120441

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_82

    .line 351
    :cond_4c
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mBatteryImg:Landroid/widget/ImageView;

    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    new-instance p1, Lcom/android/internal/os/PowerProfile;

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mAh"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mBatterySize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mBatterySummary:Landroid/widget/TextView;

    const p1, 0x7f1202d9

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_82
    return-void
.end method

.method private initCpuVersion(Landroid/view/View;)V
    .registers 10

    const v0, 0x7f0a01be

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mCpuInfo:Landroid/widget/TextView;

    const-string p1, "/proc/cpuinfo"

    const v0, 0x7f120594

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 367
    :try_start_12
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 368
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_61

    move v3, v1

    .line 369
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5d

    const-string v5, "Hardware"

    .line 370
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, ":"

    .line 371
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    .line 372
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "Qualcomm"

    .line 373
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3f} :catch_62

    if-eqz v4, :cond_1d

    .line 375
    :try_start_41
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mCpuInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f120596

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 375
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_59} :catch_5b

    move v3, v2

    goto :goto_1d

    :catch_5b
    move v3, v2

    goto :goto_62

    .line 381
    :cond_5d
    :try_start_5d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_62

    goto :goto_62

    :catch_61
    move v3, v1

    :catch_62
    :goto_62
    if-nez v3, :cond_97

    .line 386
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->isSamsungCpu()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 387
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mCpuInfo:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f120597

    new-array v2, v2, [Ljava/lang/Object;

    .line 388
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 387
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_97

    .line 390
    :cond_81
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mCpuInfo:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f120595

    new-array v2, v2, [Ljava/lang/Object;

    .line 391
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 390
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_97
    :goto_97
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 7

    const v0, 0x7f0a03e0

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/LongClickCopyTextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mMarketingName:Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v0, 0x7f0a0214

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/LongClickCopyTextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceModel:Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v0, 0x7f0a02c8

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersion:Landroid/widget/TextView;

    const v0, 0x7f0a0093

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersion:Landroid/widget/TextView;

    const v0, 0x7f0a0210

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/LongClickCopyTextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdOne:Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v0, 0x7f0a0212

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/LongClickCopyTextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdTwo:Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v0, 0x7f0a064b

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/LongClickCopyTextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mSerialNumber:Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v0, 0x7f0a0386

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/LongClickCopyTextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mKernelVersion:Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v0, 0x7f0a02cb

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a0095

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionTitleView:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 271
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_7d
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 275
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_8c
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mMarketingName:Lcom/meizu/settings/widget/LongClickCopyTextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mMarketingNameSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceModel:Lcom/meizu/settings/widget/LongClickCopyTextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceModelSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mFlymeVersionSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mAndroidVersionSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdOne:Lcom/meizu/settings/widget/LongClickCopyTextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdOneSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdTwo:Lcom/meizu/settings/widget/LongClickCopyTextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mDeviceIdTwoSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mSerialNumber:Lcom/meizu/settings/widget/LongClickCopyTextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mSerialNumberSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mKernelVersion:Lcom/meizu/settings/widget/LongClickCopyTextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mKernelVersionSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a05bf

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mRamSize:Landroid/widget/TextView;

    const v0, 0x7f0a06c3

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mStorageSize:Landroid/widget/TextView;

    .line 289
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mRamSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mRunMemorySummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mStorageSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mInternalMemorySummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    const-string/jumbo v1, "ro.vendor.meizu.build.isgy"

    .line 292
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_10c

    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const v0, 0x7f0a0311

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :cond_10c
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "meizu_device_name"

    .line 298
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    const v0, 0x7f0a0558

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mPhoneModel:Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "string"

    const-string v3, "com.android.providers.settings"

    const-string v4, "def_meizu_device_name"

    invoke-static {v0, v3, v4, v1}, Lcom/meizu/settings/utils/MzUtils;->getStringFromOtherPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v4

    if-eqz v4, :cond_13f

    .line 306
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mContext:Landroid/content/Context;

    const-string v4, "def_meizu_device_name_intl"

    invoke-static {v0, v3, v4, v1}, Lcom/meizu/settings/utils/MzUtils;->getStringFromOtherPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_13f
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mPhoneModel:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14f

    sget-object v3, Landroid/os/BuildExt;->HIDE_INFO:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_151

    :cond_14f
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_151
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->initCpuVersion(Landroid/view/View;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->initBatterySize(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0a0449

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0a064c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0a0211

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0a0213

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0a0094

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0a02ca

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0a03df

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0a0387

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mHideIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20a

    .line 325
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mHideIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f0
    :goto_1f0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 326
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mItemViewMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1f0

    .line 328
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f0

    .line 333
    :cond_20a
    iget-boolean p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mIsGuestUser:Z

    if-eqz p0, :cond_218

    const p0, 0x7f0a055a

    .line 334
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_218
    return-void
.end method

.method private isSamsungCpu()Z
    .registers 3

    const-string/jumbo p0, "ro.product.flyme.model"

    const-string/jumbo v0, "unknown"

    .line 397
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1891"

    .line 399
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1712"

    .line 400
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    .line 402
    sget-object v1, Landroid/os/BuildExt;->IS_MX5_PRO:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Landroid/os/BuildExt;->IS_M96:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2d

    if-nez v0, :cond_2d

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    :goto_2e
    return p0
.end method


# virtual methods
.method public addHideIndex(I)V
    .registers 2

    .line 235
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mHideIndexList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_6

    .line 408
    invoke-virtual {p0, p2}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 410
    :cond_6
    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->onBindView(Landroid/view/View;)V

    return-object p1
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 2

    .line 227
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 229
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mOnBindViewFinishedCallback:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference$OnBindViewFinishedCallback;

    if-eqz p0, :cond_a

    .line 230
    invoke-interface {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference$OnBindViewFinishedCallback;->onBindViewFinished(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 416
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 417
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00c4

    const/4 v2, 0x0

    .line 418
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 421
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mView:Landroid/view/View;

    .line 423
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public setItemViewOnClickListener(ILandroid/view/View$OnClickListener;)V
    .registers 3

    .line 245
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mView:Landroid/view/View;

    if-eqz p0, :cond_d

    .line 246
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 248
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method public setItemViewText(ILjava/lang/String;)V
    .registers 3

    .line 239
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mView:Landroid/view/View;

    if-eqz p0, :cond_d

    .line 240
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public setOnBindViewFinishedCallback(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference$OnBindViewFinishedCallback;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->mOnBindViewFinishedCallback:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference$OnBindViewFinishedCallback;

    return-void
.end method
