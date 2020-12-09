.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;
    }
.end annotation


# static fields
.field private static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final USB_BLACKLIST_INPUT:I = 0x2

.field private static final USB_BLACKLIST_OUTPUT:I = 0x1

.field private static final USB_PRODUCTID_PS4CONTROLLER_ZCT1:I = 0x5c4

.field private static final USB_PRODUCTID_PS4CONTROLLER_ZCT2:I = 0x9cc

.field private static final USB_VENDORID_SONY:I = 0x54c

.field private static final mIsSingleMode:Z = true

.field static final sDeviceBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlsaDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbAlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field private final mContext:Landroid/content/Context;

.field private final mHasMidiFeature:Z

.field private final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbMidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

.field private mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 46
    const-class v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;

    new-instance v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;

    const/16 v2, 0x54c

    const/4 v3, 0x1

    const/16 v4, 0x5c4

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;-><init>(III)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;

    const/16 v4, 0x9cc

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;-><init>(III)V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceBlacklist:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 120
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.midi"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    .line 122
    return-void
.end method

.method private declared-synchronized deselectAlsaDevice()V
    .registers 2

    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v0, :cond_d

    .line 168
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->stop()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 171
    :cond_d
    monitor-exit p0

    return-void

    .line 166
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAlsaDeviceListIndexFor(Ljava/lang/String;)I
    .registers 4

    .line 174
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 175
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbAlsaDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 176
    return v0

    .line 174
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_1f
    const/4 p1, -0x1

    return p1
.end method

.method private static isDeviceBlacklisted(III)Z
    .registers 7

    .line 100
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;

    .line 101
    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mVendorId:I

    if-ne v3, p0, :cond_22

    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mProductId:I

    if-ne v3, p1, :cond_22

    .line 103
    iget p0, v1, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mFlags:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_21

    const/4 v2, 0x1

    :cond_21
    return v2

    .line 105
    :cond_22
    goto :goto_6

    .line 107
    :cond_23
    return v2
.end method

.method private removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;
    .registers 3

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->getAlsaDeviceListIndexFor(Ljava/lang/String;)I

    move-result p1

    .line 184
    const/4 v0, -0x1

    if-le p1, v0, :cond_10

    .line 185
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    return-object p1

    .line 187
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .registers 5

    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v0, :cond_8

    .line 142
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "usb_audio_automatic_routing_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_21

    .line 152
    if-eqz v0, :cond_1a

    .line 153
    monitor-exit p0

    return-void

    .line 156
    :cond_1a
    :try_start_1a
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 157
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->start()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    .line 161
    monitor-exit p0

    return-void

    .line 140
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 12

    .line 367
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 369
    iget-object p4, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {p4}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanStatus()I

    move-result p4

    const-string v0, "cards_parser"

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 371
    iget-object p4, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 372
    const-wide v1, 0x20b00000002L

    const-string v3, "alsa_devices"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/server/usb/UsbAlsaDevice;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 373
    goto :goto_1a

    .line 375
    :cond_31
    iget-object p4, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3b
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/usb/UsbMidiDevice;

    const-wide v5, 0x20b00000003L

    const-string v4, "midi_devices"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbMidiDevice;->dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 379
    goto :goto_3b

    .line 381
    :cond_5d
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 382
    return-void
.end method

.method public logDevices(Ljava/lang/String;)V
    .registers 2

    .line 405
    return-void
.end method

.method public logDevicesList(Ljava/lang/String;)V
    .registers 2

    .line 394
    return-void
.end method

.method selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 197
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 201
    if-eqz v0, :cond_16

    .line 202
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 204
    :cond_16
    return-object v0

    .line 206
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method setPeripheralMidiState(ZII)V
    .registers 7

    .line 326
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v0, :cond_5

    .line 327
    return-void

    .line 330
    :cond_5
    if-eqz p1, :cond_4f

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-nez v0, :cond_4f

    .line 331
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 332
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 333
    const v1, 0x104071c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const v1, 0x104071b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturer"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const v1, 0x104071d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "product"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "alsa_card"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    const-string v0, "alsa_device"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_5c

    .line 342
    :cond_4f
    if-nez p1, :cond_5c

    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-eqz p1, :cond_5c

    .line 343
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 344
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_5d

    .line 342
    :cond_5c
    :goto_5c
    nop

    .line 346
    :goto_5d
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 125
    nop

    .line 126
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 127
    return-void
.end method

.method usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 18

    .line 218
    move-object v0, p0

    move-object v10, p1

    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()I

    .line 221
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 222
    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v11

    .line 223
    if-nez v11, :cond_10

    .line 224
    return-void

    .line 228
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasInput()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_29

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceBlacklisted(III)Z

    move-result v1

    if-nez v1, :cond_29

    move v7, v2

    goto :goto_2a

    :cond_29
    move v7, v12

    .line 231
    :goto_2a
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasOutput()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceBlacklisted(III)Z

    move-result v1

    if-nez v1, :cond_40

    move v6, v2

    goto :goto_41

    :cond_40
    move v6, v12

    .line 237
    :goto_41
    if-nez v7, :cond_45

    if-eqz v6, :cond_7b

    .line 238
    :cond_45
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v8

    .line 239
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v9

    .line 241
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v2, :cond_5a

    .line 242
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no AudioService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 246
    :cond_5a
    new-instance v13, Lcom/android/server/usb/UsbAlsaDevice;

    .line 247
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v3

    const/4 v4, 0x0

    move-object v1, v13

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZ)V

    .line 250
    nop

    .line 251
    nop

    .line 252
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardDescription()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v13, v1, v2}, Lcom/android/server/usb/UsbAlsaDevice;->setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 254
    invoke-direct {p0, v13}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 259
    :cond_7b
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v1

    .line 263
    if-eqz v1, :cond_10a

    iget-boolean v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-eqz v1, :cond_10a

    .line 264
    nop

    .line 265
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 270
    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a0

    goto :goto_c0

    .line 272
    :cond_a0
    if-eqz v3, :cond_be

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a9

    goto :goto_be

    .line 275
    :cond_a9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c1

    .line 273
    :cond_be
    :goto_be
    move-object v5, v2

    goto :goto_c1

    .line 271
    :cond_c0
    :goto_c0
    move-object v5, v3

    .line 277
    :goto_c1
    const-string/jumbo v6, "name"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v5, "manufacturer"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v2, "product"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    nop

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 281
    const-string/jumbo v3, "serial_number"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v2

    const-string v3, "alsa_card"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v2, "alsa_device"

    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string/jumbo v2, "usb_device"

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 287
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v3

    .line 287
    invoke-static {v2, v1, v3, v12}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_10a

    .line 290
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_10a
    const-string v1, "deviceAdded()"

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method declared-synchronized usbDeviceRemoved(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 307
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;

    move-result-object v0

    .line 308
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB Audio Device Removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-ne v0, v1, :cond_27

    .line 310
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 311
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;

    .line 315
    :cond_27
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usb/UsbMidiDevice;

    .line 316
    if-eqz p1, :cond_4a

    .line 317
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB MIDI Device Removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 321
    :cond_4a
    const-string/jumbo p1, "usbDeviceRemoved()"

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 323
    monitor-exit p0

    return-void

    .line 306
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method
