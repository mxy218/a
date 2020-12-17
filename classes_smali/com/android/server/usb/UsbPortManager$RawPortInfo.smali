.class final Lcom/android/server/usb/UsbPortManager$RawPortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RawPortInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public contaminantDetectionStatus:I

.field public contaminantProtectionStatus:I

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public final portId:Ljava/lang/String;

.field public final supportedContaminantProtectionModes:I

.field public final supportedModes:I

.field public supportsEnableContaminantPresenceDetection:Z

.field public supportsEnableContaminantPresenceProtection:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1327
    new-instance v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;

    invoke-direct {v0}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "portId"  # Ljava/lang/String;
    .param p2, "supportedModes"  # I

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1270
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    .line 1271
    iput p2, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    .line 1272
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    .line 1273
    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 1274
    iput v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    .line 1275
    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 1276
    iput v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    .line 1277
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIZIZIZZIZI)V
    .registers 14
    .param p1, "portId"  # Ljava/lang/String;
    .param p2, "supportedModes"  # I
    .param p3, "supportedContaminantProtectionModes"  # I
    .param p4, "currentMode"  # I
    .param p5, "canChangeMode"  # Z
    .param p6, "currentPowerRole"  # I
    .param p7, "canChangePowerRole"  # Z
    .param p8, "currentDataRole"  # I
    .param p9, "canChangeDataRole"  # Z
    .param p10, "supportsEnableContaminantPresenceProtection"  # Z
    .param p11, "contaminantProtectionStatus"  # I
    .param p12, "supportsEnableContaminantPresenceDetection"  # Z
    .param p13, "contaminantDetectionStatus"  # I

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    .line 1288
    iput p2, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    .line 1289
    iput p3, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    .line 1290
    iput p4, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 1291
    iput-boolean p5, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    .line 1292
    iput p6, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 1293
    iput-boolean p7, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    .line 1294
    iput p8, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 1295
    iput-boolean p9, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    .line 1296
    iput-boolean p10, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 1298
    iput p11, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    .line 1299
    iput-boolean p12, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 1301
    iput p13, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    .line 1302
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1307
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"  # Landroid/os/Parcel;
    .param p2, "flags"  # I

    .line 1312
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1313
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1317
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1319
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1321
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1322
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1324
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    return-void
.end method
