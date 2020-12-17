.class public Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
.super Ljava/lang/Object;
.source "QSFactoryImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mAcceleratorTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/AcceleratorTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mAirplaneModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoBrightnessTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatterySaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCastTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCellularTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorInversionTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeveloperOptionsTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/DeveloperOptionsTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDndTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDriveModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/DriveModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mEyeProtectiveTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlashlightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mHotspotTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeizuShareTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/MeizuShareTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemoryTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMobileDataTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/MobileDataTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMuteTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/MuteTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mNightDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mNightModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/NightModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/PowerSaveTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationLockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenRecordTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenshotTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/ScreenshotTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartTouchTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/SmartTouchTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiModeNightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVibrateTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/VibrateTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVpnTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/VpnTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ZenModeTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/SmartTouchTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/MuteTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/VibrateTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/VpnTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/ScreenshotTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/DriveModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/AcceleratorTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/DeveloperOptionsTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/NightModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/PowerSaveTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ZenModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/MobileDataTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/qs/tiles/MeizuShareTile;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 154
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWifiTileProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 155
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBluetoothTileProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 156
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCellularTileProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 157
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDndTileProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 158
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mColorInversionTileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 159
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAirplaneModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 160
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWorkModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 161
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRotationLockTileProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 162
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mFlashlightTileProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 163
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLocationTileProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 164
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCastTileProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 165
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHotspotTileProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 166
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUserTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 167
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBatterySaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 168
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 169
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 170
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 171
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMemoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 172
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 174
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAutoBrightnessTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 175
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSmartTouchTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 176
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMuteTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 177
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mVibrateTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 178
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mVpnTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 179
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mScreenshotTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 180
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDriveModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 181
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAcceleratorTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 182
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mScreenRecordTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 183
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDeveloperOptionsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 184
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mEyeProtectiveTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 185
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNightModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 186
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mPowerSaveTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 187
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mZenModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 188
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMobileDataTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p35

    .line 189
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMeizuShareTileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .registers 3

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_318

    goto/16 :goto_197

    :sswitch_9
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x9

    goto/16 :goto_198

    :sswitch_15
    const-string v0, "nightmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x1d

    goto/16 :goto_198

    :sswitch_21
    const-string v0, "hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0xb

    goto/16 :goto_198

    :sswitch_2d
    const-string v0, "accelerator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x19

    goto/16 :goto_198

    :sswitch_39
    const-string v0, "powersave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x1e

    goto/16 :goto_198

    :sswitch_45
    const-string v0, "meizushare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x21

    goto/16 :goto_198

    :sswitch_51
    const-string/jumbo v0, "vibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x15

    goto/16 :goto_198

    :sswitch_5e
    const-string v0, "eyeprotective"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x1c

    goto/16 :goto_198

    :sswitch_6a
    const-string v0, "saver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0xe

    goto/16 :goto_198

    :sswitch_76
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0xf

    goto/16 :goto_198

    :sswitch_82
    const-string/jumbo v0, "work"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x6

    goto/16 :goto_198

    :sswitch_8e
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x0

    goto/16 :goto_198

    :sswitch_9a
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0xc

    goto/16 :goto_198

    :sswitch_a7
    const-string v0, "mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x14

    goto/16 :goto_198

    :sswitch_b3
    const-string v0, "dark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x11

    goto/16 :goto_198

    :sswitch_bf
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x2

    goto/16 :goto_198

    :sswitch_ca
    const-string v0, "cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0xa

    goto/16 :goto_198

    :sswitch_d6
    const-string/jumbo v0, "vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x16

    goto/16 :goto_198

    :sswitch_e3
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x10

    goto/16 :goto_198

    :sswitch_ef
    const-string v0, "dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x3

    goto/16 :goto_198

    :sswitch_fa
    const-string v0, "bt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x1

    goto/16 :goto_198

    :sswitch_105
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x7

    goto/16 :goto_198

    :sswitch_110
    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0xd

    goto/16 :goto_198

    :sswitch_11c
    const-string v0, "developeroptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x1b

    goto/16 :goto_198

    :sswitch_128
    const-string/jumbo v0, "zenmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x1f

    goto/16 :goto_198

    :sswitch_135
    const-string v0, "screenshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x17

    goto :goto_198

    :sswitch_140
    const-string v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x5

    goto :goto_198

    :sswitch_14a
    const-string v0, "screenrecord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x1a

    goto :goto_198

    :sswitch_155
    const-string v0, "autobrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x12

    goto :goto_198

    :sswitch_160
    const-string v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x8

    goto :goto_198

    :sswitch_16b
    const-string v0, "drivemode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x18

    goto :goto_198

    :sswitch_176
    const-string/jumbo v0, "smarttouch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x13

    goto :goto_198

    :sswitch_182
    const-string v0, "inversion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/4 v0, 0x4

    goto :goto_198

    :sswitch_18c
    const-string v0, "mobiledata"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const/16 v0, 0x20

    goto :goto_198

    :cond_197
    :goto_197
    const/4 v0, -0x1

    :goto_198
    packed-switch v0, :pswitch_data_3a2

    const-string v0, "intent("

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)Lcom/android/systemui/qs/tiles/IntentTile;

    move-result-object p0

    return-object p0

    .line 276
    :pswitch_1aa  #0x21
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMeizuShareTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 274
    :pswitch_1b3  #0x20
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMobileDataTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 272
    :pswitch_1bc  #0x1f
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mZenModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 270
    :pswitch_1c5  #0x1e
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mPowerSaveTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 268
    :pswitch_1ce  #0x1d
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNightModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 266
    :pswitch_1d7  #0x1c
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mEyeProtectiveTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 264
    :pswitch_1e0  #0x1b
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDeveloperOptionsTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 262
    :pswitch_1e9  #0x1a
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mScreenRecordTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 260
    :pswitch_1f2  #0x19
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAcceleratorTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 258
    :pswitch_1fb  #0x18
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDriveModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 256
    :pswitch_204  #0x17
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mScreenshotTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 254
    :pswitch_20d  #0x16
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mVpnTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 252
    :pswitch_216  #0x15
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mVibrateTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 250
    :pswitch_21f  #0x14
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMuteTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 248
    :pswitch_228  #0x13
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSmartTouchTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 246
    :pswitch_231  #0x12
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAutoBrightnessTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 243
    :pswitch_23a  #0x11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUiModeNightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 241
    :pswitch_243  #0x10
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNfcTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 239
    :pswitch_24c  #0xf
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNightDisplayTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 237
    :pswitch_255  #0xe
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDataSaverTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 235
    :pswitch_25e  #0xd
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBatterySaverTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 233
    :pswitch_267  #0xc
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUserTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 231
    :pswitch_270  #0xb
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHotspotTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 229
    :pswitch_279  #0xa
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCastTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 227
    :pswitch_282  #0x9
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLocationTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 225
    :pswitch_28b  #0x8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mFlashlightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 223
    :pswitch_294  #0x7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRotationLockTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 221
    :pswitch_29d  #0x6
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWorkModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 219
    :pswitch_2a6  #0x5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAirplaneModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 217
    :pswitch_2af  #0x4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mColorInversionTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 215
    :pswitch_2b8  #0x3
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDndTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 213
    :pswitch_2c1  #0x2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCellularTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 211
    :pswitch_2ca  #0x1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBluetoothTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 209
    :pswitch_2d3  #0x0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWifiTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    :cond_2dc
    const-string v0, "custom("

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2eb

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/external/CustomTile;->create(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p0

    return-object p0

    .line 285
    :cond_2eb
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_300

    const-string v0, "dbg:mem"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_300

    .line 287
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMemoryTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 292
    :cond_300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No stock tile spec: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSFactory"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :sswitch_data_318
    .sparse-switch
        -0x7e63a0b4 -> :sswitch_18c
        -0x783813ed -> :sswitch_182
        -0x6a7d80ea -> :sswitch_176
        -0x517201d3 -> :sswitch_16b
        -0x468444da -> :sswitch_160
        -0x36ca04c0 -> :sswitch_155
        -0x3002d443 -> :sswitch_14a
        -0x285a60ae -> :sswitch_140
        -0x18d27a9a -> :sswitch_135
        -0x17acf93a -> :sswitch_128
        -0x147ed86c -> :sswitch_11c
        -0x13be51f3 -> :sswitch_110
        -0x266f082 -> :sswitch_105
        0xc52 -> :sswitch_fa
        0x1851a -> :sswitch_ef
        0x1a9ab -> :sswitch_e3
        0x1c8f4 -> :sswitch_d6
        0x2e7b3f -> :sswitch_ca
        0x2e8962 -> :sswitch_bf
        0x2eef76 -> :sswitch_b3
        0x335219 -> :sswitch_a7
        0x36ebcb -> :sswitch_9a
        0x37af15 -> :sswitch_8e
        0x37c711 -> :sswitch_82
        0x63f6418 -> :sswitch_76
        0x6826e95 -> :sswitch_6a
        0x16765c9a -> :sswitch_5e
        0x1ae6756f -> :sswitch_51
        0x2184ea93 -> :sswitch_45
        0x326e4002 -> :sswitch_39
        0x394ae26b -> :sswitch_2d
        0x418a9ecf -> :sswitch_21
        0x5172d1bb -> :sswitch_15
        0x714f9fb5 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_3a2
    .packed-switch 0x0
        :pswitch_2d3  #00000000
        :pswitch_2ca  #00000001
        :pswitch_2c1  #00000002
        :pswitch_2b8  #00000003
        :pswitch_2af  #00000004
        :pswitch_2a6  #00000005
        :pswitch_29d  #00000006
        :pswitch_294  #00000007
        :pswitch_28b  #00000008
        :pswitch_282  #00000009
        :pswitch_279  #0000000a
        :pswitch_270  #0000000b
        :pswitch_267  #0000000c
        :pswitch_25e  #0000000d
        :pswitch_255  #0000000e
        :pswitch_24c  #0000000f
        :pswitch_243  #00000010
        :pswitch_23a  #00000011
        :pswitch_231  #00000012
        :pswitch_228  #00000013
        :pswitch_21f  #00000014
        :pswitch_216  #00000015
        :pswitch_20d  #00000016
        :pswitch_204  #00000017
        :pswitch_1fb  #00000018
        :pswitch_1f2  #00000019
        :pswitch_1e9  #0000001a
        :pswitch_1e0  #0000001b
        :pswitch_1d7  #0000001c
        :pswitch_1ce  #0000001d
        :pswitch_1c5  #0000001e
        :pswitch_1bc  #0000001f
        :pswitch_1b3  #00000020
        :pswitch_1aa  #00000021
    .end packed-switch
.end method


# virtual methods
.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .registers 2

    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    :cond_9
    return-object p0
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .registers 4

    .line 298
    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {p2, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 299
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p0

    .line 300
    instance-of p1, p1, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;->addIcon(Z)V

    .line 309
    new-instance p1, Lcom/flyme/systemui/qs/MzQSTileView;

    invoke-direct {p1, p2, p0}, Lcom/flyme/systemui/qs/MzQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    return-object p1
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method
