.class public Lcom/android/server/midi/MidiService;
.super Landroid/media/midi/IMidiManager$Stub;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/midi/MidiService$DeviceConnection;,
        Lcom/android/server/midi/MidiService$Device;,
        Lcom/android/server/midi/MidiService$Client;,
        Lcom/android/server/midi/MidiService$Lifecycle;
    }
.end annotation


# static fields
.field private static final EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MidiService"


# instance fields
.field private final mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothServiceUid:I

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicesByInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/midi/MidiDeviceInfo;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicesByServer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDeviceId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 634
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/media/midi/MidiDeviceInfo;

    sput-object v1, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    .line 860
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 563
    invoke-direct {p0}, Landroid/media/midi/IMidiManager$Stub;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 112
    new-instance v0, Lcom/android/server/midi/MidiService$1;

    invoke-direct {v0, p0}, Lcom/android/server/midi/MidiService$1;-><init>(Lcom/android/server/midi/MidiService;)V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 564
    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 567
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 568
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/midi/MidiService;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/server/midi/MidiService;->onUnlockUser()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->addPackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removePackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/midi/MidiService;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/midi/MidiService;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    .registers 24

    .line 787
    move-object v0, p0

    move-object/from16 v1, p7

    iget v4, v0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    add-int/lit8 v2, v4, 0x1

    iput v2, v0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 788
    new-instance v11, Landroid/media/midi/MidiDeviceInfo;

    move-object v2, v11

    move v3, p1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 791
    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 793
    :try_start_1e
    invoke-interface {v1, v11}, Landroid/media/midi/IMidiDeviceServer;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22

    .line 797
    goto :goto_2b

    .line 794
    :catch_22
    move-exception v0

    .line 795
    const-string v0, "MidiService"

    const-string v1, "RemoteException in setDeviceInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-object v2

    .line 800
    :cond_2b
    :goto_2b
    nop

    .line 801
    nop

    .line 802
    const/4 v3, 0x3

    move v4, p1

    if-ne v4, v3, :cond_4c

    .line 803
    const-string v2, "bluetooth_device"

    move-object/from16 v3, p6

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 805
    iget-object v3, v0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Device;

    .line 806
    if-eqz v3, :cond_48

    .line 807
    invoke-virtual {v3, v11}, Lcom/android/server/midi/MidiService$Device;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    .line 810
    :cond_48
    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_4d

    .line 802
    :cond_4c
    move-object v3, v2

    .line 810
    :goto_4d
    if-nez v2, :cond_5e

    .line 811
    new-instance v2, Lcom/android/server/midi/MidiService$Device;

    move-object p1, v2

    move-object p2, p0

    move-object/from16 p3, p7

    move-object/from16 p4, v11

    move-object/from16 p5, p8

    move/from16 p6, p10

    invoke-direct/range {p1 .. p6}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V

    .line 813
    :cond_5e
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    if-eqz v3, :cond_6a

    .line 815
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_6a
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v1

    .line 819
    :try_start_6d
    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Client;

    .line 820
    invoke-virtual {v3, v2}, Lcom/android/server/midi/MidiService$Client;->deviceAdded(Lcom/android/server/midi/MidiService$Device;)V

    .line 821
    goto :goto_77

    .line 822
    :cond_87
    monitor-exit v1

    .line 824
    return-object v11

    .line 822
    :catchall_89
    move-exception v0

    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_6d .. :try_end_8b} :catchall_89

    throw v0
.end method

.method private addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V
    .registers 25

    .line 863
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 866
    const/4 v14, 0x0

    :try_start_5
    iget-object v0, v12, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.media.midi.MidiDeviceService"

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v15
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_250
    .catchall {:try_start_5 .. :try_end_d} :catchall_24d

    .line 868
    if-nez v15, :cond_15

    .line 993
    if-eqz v15, :cond_14

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 868
    :cond_14
    return-void

    .line 871
    :cond_15
    :try_start_15
    const-string v0, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    iget-object v1, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 873
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping MIDI device service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": it does not require the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_41} :catch_24a
    .catchall {:try_start_15 .. :try_end_41} :catchall_248

    .line 993
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 876
    return-void

    .line 879
    :cond_45
    nop

    .line 880
    nop

    .line 881
    nop

    .line 882
    nop

    .line 883
    :try_start_49
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 884
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move/from16 v16, v9

    move/from16 v17, v16

    move/from16 v18, v17

    move-object v7, v14

    .line 887
    :goto_5b
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5f} :catch_24a
    .catchall {:try_start_49 .. :try_end_5f} :catchall_248

    .line 888
    const/4 v1, 0x1

    if-ne v0, v1, :cond_68

    .line 889
    nop

    .line 993
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_270

    .line 890
    :cond_68
    const/4 v1, 0x2

    if-ne v0, v1, :cond_183

    .line 891
    :try_start_6b
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 892
    const-string v1, "device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 893
    if-eqz v7, :cond_9a

    .line 894
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nested <device> elements in metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_224

    .line 898
    :cond_9a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 899
    const-string/jumbo v1, "service_info"

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 900
    nop

    .line 901
    nop

    .line 902
    nop

    .line 904
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    .line 905
    move v2, v9

    move/from16 v18, v2

    :goto_af
    if-ge v2, v1, :cond_d2

    .line 906
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 907
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 908
    const-string/jumbo v5, "private"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 909
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v18, v3

    goto :goto_cf

    .line 911
    :cond_cc
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :goto_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_af

    .line 914
    :cond_d2
    move-object v7, v0

    move/from16 v16, v9

    move/from16 v17, v16

    goto/16 :goto_17b

    :cond_d9
    const-string v1, "input-port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 915
    if-nez v7, :cond_103

    .line 916
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<input-port> outside of <device> in metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_224

    .line 920
    :cond_103
    add-int/lit8 v0, v16, 0x1

    .line 922
    nop

    .line 923
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    .line 924
    move v2, v9

    :goto_10b
    if-ge v2, v1, :cond_123

    .line 925
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 926
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 927
    const-string/jumbo v5, "name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 928
    nop

    .line 929
    goto :goto_124

    .line 924
    :cond_120
    add-int/lit8 v2, v2, 0x1

    goto :goto_10b

    :cond_123
    move-object v4, v14

    .line 932
    :goto_124
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    move/from16 v16, v0

    goto :goto_17b

    :cond_12a
    const-string/jumbo v1, "output-port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 934
    if-nez v7, :cond_155

    .line 935
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<output-port> outside of <device> in metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_224

    .line 939
    :cond_155
    add-int/lit8 v0, v17, 0x1

    .line 941
    nop

    .line 942
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    .line 943
    move v2, v9

    :goto_15d
    if-ge v2, v1, :cond_175

    .line 944
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 945
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 946
    const-string/jumbo v5, "name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 947
    nop

    .line 948
    goto :goto_176

    .line 943
    :cond_172
    add-int/lit8 v2, v2, 0x1

    goto :goto_15d

    :cond_175
    move-object v4, v14

    .line 951
    :goto_176
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v0

    .line 953
    :cond_17b
    :goto_17b
    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_240

    :cond_183
    const/4 v1, 0x3

    if-ne v0, v1, :cond_23a

    .line 954
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 955
    const-string v1, "device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_233

    .line 956
    if-eqz v7, :cond_22c

    .line 957
    if-nez v16, :cond_1b8

    if-nez v17, :cond_1b8

    .line 958
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<device> with no ports in metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_1b0} :catch_24a
    .catchall {:try_start_6b .. :try_end_1b0} :catchall_248

    .line 960
    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_224

    .line 965
    :cond_1b8
    :try_start_1b8
    iget-object v0, v12, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 967
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1c2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b8 .. :try_end_1c2} :catch_204
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1c2} :catch_24a
    .catchall {:try_start_1b8 .. :try_end_1c2} :catchall_248

    .line 972
    nop

    .line 974
    :try_start_1c3
    iget-object v8, v12, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1c6} :catch_24a
    .catchall {:try_start_1c3 .. :try_end_1c6} :catchall_248

    .line 975
    const/4 v2, 0x2

    :try_start_1c7
    sget-object v1, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 977
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    sget-object v1, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 978
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;
    :try_end_1d9
    .catchall {:try_start_1c7 .. :try_end_1d9} :catchall_1fd

    const/16 v19, 0x0

    .line 975
    move-object/from16 v1, p0

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v20, v8

    move-object/from16 v8, v19

    move/from16 v19, v9

    move-object/from16 v9, p1

    move-object/from16 v21, v10

    move/from16 v10, v18

    move-object/from16 v22, v11

    move v11, v0

    :try_start_1f0
    invoke-direct/range {v1 .. v11}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;

    .line 980
    monitor-exit v20
    :try_end_1f4
    .catchall {:try_start_1f0 .. :try_end_1f4} :catchall_202

    .line 983
    nop

    .line 984
    :try_start_1f5
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 985
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_1fb} :catch_24a
    .catchall {:try_start_1f5 .. :try_end_1fb} :catchall_248

    move-object v7, v14

    goto :goto_240

    .line 980
    :catchall_1fd
    move-exception v0

    move-object/from16 v20, v8

    :goto_200
    :try_start_200
    monitor-exit v20
    :try_end_201
    .catchall {:try_start_200 .. :try_end_201} :catchall_202

    :try_start_201
    throw v0

    :catchall_202
    move-exception v0

    goto :goto_200

    .line 968
    :catch_204
    move-exception v0

    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .line 969
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not fetch ApplicationInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_223} :catch_24a
    .catchall {:try_start_201 .. :try_end_223} :catchall_248

    .line 971
    nop

    .line 887
    :goto_224
    move/from16 v9, v19

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    goto/16 :goto_5b

    .line 956
    :cond_22c
    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto :goto_240

    .line 955
    :cond_233
    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto :goto_240

    .line 953
    :cond_23a
    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .line 989
    :goto_240
    move/from16 v9, v19

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    goto/16 :goto_5b

    .line 993
    :catchall_248
    move-exception v0

    goto :goto_271

    .line 990
    :catch_24a
    move-exception v0

    move-object v14, v15

    goto :goto_251

    .line 993
    :catchall_24d
    move-exception v0

    move-object v15, v14

    goto :goto_271

    .line 990
    :catch_250
    move-exception v0

    .line 991
    :goto_251
    :try_start_251
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load component info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26b
    .catchall {:try_start_251 .. :try_end_26b} :catchall_24d

    .line 993
    if-eqz v14, :cond_270

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 995
    :cond_270
    :goto_270
    return-void

    .line 993
    :goto_271
    if-eqz v15, :cond_276

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_276
    throw v0
.end method

.method private addPackageDeviceServers(Ljava/lang/String;)V
    .registers 5

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 851
    nop

    .line 853
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 854
    if-nez p1, :cond_e

    return-void

    .line 855
    :cond_e
    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 856
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 858
    :cond_1a
    return-void

    .line 848
    :catch_1b
    move-exception v0

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePackageUpdate could not find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MidiService"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    return-void
.end method

.method private getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 270
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Client;

    .line 271
    if-nez v1, :cond_21

    .line 272
    new-instance v1, Lcom/android/server/midi/MidiService$Client;

    invoke-direct {v1, p0, p1}, Lcom/android/server/midi/MidiService$Client;-><init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    .line 275
    const/4 v2, 0x0

    :try_start_13
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_1d
    .catchall {:try_start_13 .. :try_end_16} :catchall_23

    .line 278
    nop

    .line 279
    :try_start_17
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 276
    :catch_1d
    move-exception p1

    .line 277
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 281
    :cond_21
    :goto_21
    monitor-exit v0

    return-object v1

    .line 282
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 6

    .line 774
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 775
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Client;

    .line 776
    invoke-virtual {v2, p1, p2}, Lcom/android/server/midi/MidiService$Client;->deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    .line 777
    goto :goto_d

    .line 778
    :cond_1d
    monitor-exit v0

    .line 779
    return-void

    .line 778
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method private onUnlockUser()V
    .registers 7

    .line 571
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.midi.MidiDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 576
    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 577
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 578
    move v4, v1

    :goto_20
    if-ge v4, v2, :cond_32

    .line 579
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 580
    if-eqz v5, :cond_2f

    .line 581
    invoke-direct {p0, v5}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 578
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 588
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.bluetoothmidiservice"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_3a} :catch_3b

    .line 591
    goto :goto_3d

    .line 589
    :catch_3b
    move-exception v0

    .line 590
    nop

    .line 592
    :goto_3d
    if-eqz v3, :cond_4a

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4a

    .line 593
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    goto :goto_4d

    .line 595
    :cond_4a
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 597
    :goto_4d
    return-void
.end method

.method private removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    .registers 5

    .line 829
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    .line 830
    if-eqz v0, :cond_f

    .line 831
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_f
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 836
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Client;

    .line 837
    invoke-virtual {v2, p1}, Lcom/android/server/midi/MidiService$Client;->deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V

    .line 838
    goto :goto_25

    .line 839
    :cond_35
    monitor-exit v0

    .line 840
    return-void

    .line 839
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_37

    throw p1
.end method

.method private removePackageDeviceServers(Ljava/lang/String;)V
    .registers 6

    .line 998
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 999
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1000
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1001
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 1002
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1003
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1004
    invoke-direct {p0, v2}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    .line 1006
    :cond_29
    goto :goto_d

    .line 1007
    :cond_2a
    monitor-exit v0

    .line 1008
    return-void

    .line 1007
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V
    .registers 8

    .line 617
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 620
    invoke-virtual {v2, p1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_35

    if-eqz v3, :cond_32

    .line 622
    :try_start_1f
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v2

    .line 623
    if-eqz v2, :cond_28

    .line 624
    invoke-interface {p2, v2}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_29
    .catchall {:try_start_1f .. :try_end_28} :catchall_35

    .line 628
    :cond_28
    goto :goto_32

    .line 626
    :catch_29
    move-exception v2

    .line 627
    :try_start_2a
    const-string v3, "MidiService"

    const-string/jumbo v4, "remote exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    :cond_32
    :goto_32
    goto :goto_d

    .line 631
    :cond_33
    monitor-exit v0

    .line 632
    return-void

    .line 631
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw p1
.end method


# virtual methods
.method public closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p1

    .line 705
    if-nez p1, :cond_7

    return-void

    .line 706
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Landroid/os/IBinder;)V

    .line 707
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1012
    iget-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const-string p3, "MidiService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1013
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1015
    const-string p2, "MIDI Manager State:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1018
    const-string p2, "Devices:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1020
    iget-object p2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter p2

    .line 1021
    :try_start_25
    iget-object p3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 1022
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    goto :goto_2f

    .line 1024
    :cond_43
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_78

    .line 1025
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1027
    const-string p2, "Clients:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1029
    iget-object p3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter p3

    .line 1030
    :try_start_52
    iget-object p2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 1031
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Client;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    goto :goto_5c

    .line 1033
    :cond_70
    monitor-exit p3
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_75

    .line 1034
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1035
    return-void

    .line 1033
    :catchall_75
    move-exception p1

    :try_start_76
    monitor-exit p3
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p1

    .line 1024
    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit p2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method public getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .registers 5

    .line 753
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 754
    if-eqz v0, :cond_f

    .line 757
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object p1

    return-object p1

    .line 755
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no such device for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .registers 7

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 640
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v2

    .line 641
    :try_start_c
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/midi/MidiService$Device;

    .line 642
    invoke-virtual {v4, v1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 643
    invoke-virtual {v4}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_2f
    goto :goto_16

    .line 646
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_3a

    .line 648
    sget-object v1, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/midi/MidiDeviceInfo;

    return-object v0

    .line 646
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .registers 8

    .line 738
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 739
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 740
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 741
    if-eqz v3, :cond_35

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 742
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 743
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 744
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 746
    :cond_35
    goto :goto_d

    .line 747
    :cond_36
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 748
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 8

    .line 680
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p1

    .line 681
    if-nez p1, :cond_7

    return-void

    .line 685
    :cond_7
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 686
    :try_start_a
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 687
    if-nez v1, :cond_1e

    .line 688
    new-instance v1, Lcom/android/server/midi/MidiService$Device;

    invoke-direct {v1, p0, p2}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 689
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_30

    .line 694
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 696
    :try_start_23
    invoke-virtual {p1, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 698
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    nop

    .line 700
    return-void

    .line 698
    :catchall_2b
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 691
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 8

    .line 654
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p1

    .line 655
    if-nez p1, :cond_7

    return-void

    .line 658
    :cond_7
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 659
    :try_start_a
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 660
    if-eqz v1, :cond_38

    .line 663
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 666
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_4f

    .line 669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 671
    :try_start_23
    invoke-virtual {p1, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 673
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    nop

    .line 675
    return-void

    .line 673
    :catchall_2b
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 664
    :cond_30
    :try_start_30
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Attempt to open private device with wrong UID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 661
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device does not exist: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 666
    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;
    .registers 21

    .line 713
    move-object v0, p0

    move/from16 v2, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 714
    const/4 v1, 0x1

    if-ne v2, v1, :cond_18

    const/16 v1, 0x3e8

    if-ne v11, v1, :cond_f

    goto :goto_18

    .line 715
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only system can create USB devices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_18
    :goto_18
    const/4 v1, 0x3

    if-ne v2, v1, :cond_29

    iget v1, v0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    if-ne v11, v1, :cond_20

    goto :goto_29

    .line 717
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only MidiBluetoothService can create Bluetooth devices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_29
    :goto_29
    iget-object v12, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v12

    .line 721
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v2, p7

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p1

    :try_start_3b
    invoke-direct/range {v1 .. v11}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    monitor-exit v12

    return-object v0

    .line 723
    :catchall_41
    move-exception v0

    monitor-exit v12
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_41

    throw v0
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 3

    .line 601
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p1

    .line 602
    if-nez p1, :cond_7

    return-void

    .line 603
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/midi/MidiService$Client;->addListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 605
    invoke-static {p1}, Lcom/android/server/midi/MidiService$Client;->access$1300(Lcom/android/server/midi/MidiService$Client;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/midi/MidiService;->updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V

    .line 606
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 5

    .line 762
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/midi/MidiService$Device;

    .line 763
    if-eqz p1, :cond_47

    .line 764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 768
    invoke-virtual {p1, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/android/server/midi/MidiService;->notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    goto :goto_47

    .line 765
    :cond_1f
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceStatus() caller UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not match device\'s UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 771
    :cond_47
    :goto_47
    return-void
.end method

.method public unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 4

    .line 728
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/midi/MidiService$Device;

    .line 730
    if-eqz p1, :cond_14

    .line 731
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 733
    :cond_14
    monitor-exit v0

    .line 734
    return-void

    .line 733
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 3

    .line 610
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p1

    .line 611
    if-nez p1, :cond_7

    return-void

    .line 612
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/midi/MidiService$Client;->removeListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 613
    return-void
.end method
